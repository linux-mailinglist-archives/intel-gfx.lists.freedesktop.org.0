Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GZJB9sxpWli5gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 07:44:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C891D38A8
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 07:44:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73E2E10E440;
	Mon,  2 Mar 2026 06:44:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BtQw0mPb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C824610E14E;
 Mon,  2 Mar 2026 06:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772433878; x=1803969878;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Qe+Qa2VQDQOgwuhOSB4dqUblyPjCA2bMf8e7UsmORbM=;
 b=BtQw0mPb8vv3SJ9w2iRn86Y7p8AMtXtIWP2qDl69feJ61u2+/nC5c68P
 22rEGdRf1RdAEYgZbq/ZP81uMowQouJC8DYJ6bOzOMqIcgeAPpWarEa3/
 xwmCz13DuSRfBS99GWJrquLbEl0k0vCZQqfEcPfM9bSgLAweV86c26DKq
 iKRL6Cf9TVUEk+ez8I2O9y1gG+ZaV83N5rQp/jH50b97DxaGwlalG4q3M
 3L6l6OLX0gPX07BWCHT/AvXsU3RL1PDONRKj98h/QP8aQ8EAxxn/djyBR
 T9mn68SoiyP0lq9XgJdLx/+PsQd29+6ZBIHyMiry1lfBJhIKFmINr7Wi6 A==;
X-CSE-ConnectionGUID: r+SZEaqyRHuI1VFMQ9eSAA==
X-CSE-MsgGUID: NoHsfq/XS7ai4Yn5efna7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="90829702"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="90829702"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 22:44:38 -0800
X-CSE-ConnectionGUID: 3iOMggAVQ/C7k3pHdjqa8A==
X-CSE-MsgGUID: G/W5Kr9UQ5eGDPL0Hq3uwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="221707470"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 22:44:38 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 22:44:37 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 1 Mar 2026 22:44:37 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.53) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 22:44:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nfJ0hi99WwtEzSHCDU2Z/0Xwh7VVRVC00WYqUB8XMle9vVA04ycOKgqvWyVlLxgjMqTYEaPMxKUpkt18ypuWIEZ8tdNS8ntXnUo+mBPDAk86sePyCrpXvWvs8qF+Fmes0R2TIOrYtGDWvYSeryhmUv/Zteqz6CaaPWSIVXNsPkr5IVG5xM0PhFRLiprg4vpSRsSn9RQVSdtDPBlkAt01jhice/hSnUmGgQHaXe/sF7QTR4aSP2ZtuMOmFu2JdfTBybybIktVRvaeCH8Wlpc5+P67trpK8kl4MCxGYINAOMSq1LSorjgTPGlt1Ti83eItPtx6s5uAk4v5FdZb4REu8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qe+Qa2VQDQOgwuhOSB4dqUblyPjCA2bMf8e7UsmORbM=;
 b=CmuRFZ65B7zrO9zWJ2DbK+LdGUiLEulxufTJookO7KmPg0C3aL5y53qwIoZWfu2VC18wcjatsAxgr8MxbJr+0/0Vs8UYhwB5eXeHhOxxQf5D8Yx2687g0f+eEhdDvhMxd0WmKQl+Q7bZCeqbzvPTFaCZzejUxmlNl3ftCvfbuEB0bDELkNAIQBbQdNANr5dtrphbxDmQyn6jvU5MFgR8j7JI26GKOofnErxImqU4hg0V/eWume0txn4IXquTo3ISup90W7EZkZUgLb4l/AWr6c0nT+oXVngayEgLp+6ktbwM3iW6YQSGq6HbBsYgIrEH5odM14F6gGZaJJFCZq2yng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB7783.namprd11.prod.outlook.com (2603:10b6:8:e1::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.20; Mon, 2 Mar 2026 06:44:34 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 06:44:34 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/dp: ALPM init to be done after DPCD init
Thread-Topic: [PATCH] drm/i915/dp: ALPM init to be done after DPCD init
Thread-Index: AQHcqfX0a1ZHy3KePEGa/cNM6gHRX7WazCEA
Date: Mon, 2 Mar 2026 06:44:34 +0000
Message-ID: <46978246247b387d6d1de157d037014e7c132531.camel@intel.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
In-Reply-To: <20260302033630.428913-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB7783:EE_
x-ms-office365-filtering-correlation-id: ffc9d803-eafc-41fc-c438-08de78272a97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: D7mv/2tDmjc459nUqdCCSv9H1ceP9NXhfVsdjGX/XnwyY6tYsqi4vuihV/DUDUUn4KmhZHM/PCE6wZjS3biJSosualty4rCgfGQfRVsEtz9BSCcDZCi/FCXspwvSmMiSQRERRe+Wx1HY2ADB5GvBBI7+CCinnyjgFkLVhvyEgc0aTJw9sGJTYTg3BV92XU2LOVH/ItPVspB8ODyxYRo5YQLH+aeDpwupbWlGzU3ODFoGVQ1AJ8r10b4DVK8O4ID3JYKs0ZwKduff+UET+OfsdDVAJSmA+ifA3WNjvUU/ZmdwKWi2rnVvpwT0AGeFVFOF4Zs6T754Dbucu2SPN4HXs+vNr+VHBcxbAi259gugN6XO6BjMSSj9ZjkVv7QthLm/2hkuF5rbLMdzX5jPLOC2aUAWHX2/IZwT8VFx7QhwpZQXuhL0uYPNu4OyVoldkZ+vvMo9h7y9tQ4zsRwjXJoPJfVvLKBi7wx0rzNqXD4VYFKQWytfMlsSadtbOI2pURay1hPcxnrp1ZfOI5NpOtbYBTC1r23DOqDgvEWLg43CuXl9JIw4uRZf6N411q5QGlgiJGoQUI74bD4z40YbDlUN1bfddcUJ1RzPPU/I/wP9WDsy3SQaBplFiCTprtIh/gBcz5TKFZgY9glmuPy4D+O91VgEgSU952dYcEGYfW0HG11qI6XCGYWAMr4CqoHgG8pcL9d1ZIWePl3Obf30bvv/Te4FzMtU+BxUnL7ONUxia5cKhR4P6WZx/eTtFNgC+AjQV2OAuAfAvfmczNLjK3ntPFUFYEk867saGTAdUCOX4eM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TEtoei90WVcwNERKNWNweVpHNitob2hJVldYa3lTQ01FclBycDZ6RGRicDBD?=
 =?utf-8?B?bjFOSmhvdkRKRDdLdGd4aFpvWE1xWXg0MDdJbldPdTdNV1cyT0M1WExmS3FY?=
 =?utf-8?B?eE9hQTFqWVVTNGJMVkl3ZWdOYXFtRWlvem9QNXlVZk1XZG4zTC9pbGRHSkRV?=
 =?utf-8?B?MzBQY2JoT0k3NVlGYjNwS29ycTJ1N0Z4Y0U3bVQxT2RvOTFqTytBVWc4ZklR?=
 =?utf-8?B?OFFPbGFzeWlLNHg2WnZXOUhpTjRRSjV0eE5NQnlXdFNTd3lrbytQN01ONlRM?=
 =?utf-8?B?Nk0veW1KZENvemFtanNxeE0waGQ0MWdFZlFMZStPTXdGVGxrZVB5OVl1Zm1J?=
 =?utf-8?B?eUJHOW5DbFc0Q3IrWWIvNnRmZ0ZMUEJUenBqeHAyVGV4YjhrVUR5SjdKTU1J?=
 =?utf-8?B?dTZBSjJZU096WVh2OUVFY0M5ZkRKVVNueFdLdzQ4RlBSeWxJNlNMZ3k3YVVS?=
 =?utf-8?B?K0dwVXpJNWIzTGZUeWZocWNDa05YSU12dFpYb0VUM0Zob00xMTBZaHVCU3VE?=
 =?utf-8?B?NktrWFYzZGZrYlRFOVB0NTdpM2FsN2dSVFVYUEFta3VZNUdCODRIVmEvWXZT?=
 =?utf-8?B?RGpLRmlEZyswNUVOLzdSeHE0dE1YbUJ3OVZObloySmRVYXZPR0tuT0cwSGZD?=
 =?utf-8?B?RkN1VkpWUDhmOWlpdUtiMUhsUEt5TW9aNmRXL1gzYXd5SEc4ZXZXU2FBRHVE?=
 =?utf-8?B?Mzl5ZlhiUyttclh5OFZPT3ZBYTdPUENSN0FKUXVwVS8rNDdpbEZPTEJTU0Zx?=
 =?utf-8?B?N21Nc1llNlRkRUJmZHE0YWp3SnE4TEpzZVFkYktPdG15Qk5tWktFN1FiL3Vo?=
 =?utf-8?B?KzRyYXhNZFlKMWZpZzJiR1d5aWJ1STVjQ3NTeWRtcXM5Ky9VK1pQNWlZSnZu?=
 =?utf-8?B?em5uK0tESXJRRVcrREtGZFVtUTN1U3BWM0hPYnVxNEIwdFBvbGFFMi8yK3BE?=
 =?utf-8?B?OWVjQUNZWW5vM0R5Y0ZtdGxaTlVuclBZR2ZlRmljR1dDY2w5VG1ab2lBMCt0?=
 =?utf-8?B?OTRrMVhadnlPT2F5ZWt2Q25ZdC90S0VHUGlVK09JUWo3dUdjb2RTZWhvZzdv?=
 =?utf-8?B?Q3JSY1IrdFRSM0llc2I0TjdKUGxFWUZIbTduUkVaaEFpbW1hNDZHcmtOT1Rl?=
 =?utf-8?B?b3RsMyt5T0oxcTQ5RUtUMksySXJza09PeUNtZDlDbGUwanJpNmFVLytTcGsr?=
 =?utf-8?B?MmJ0RTBCVTM0YkQ3SUVZNUJpT1ZRdkNkVGtMTnVrTTdoMldHMVAwU25zOTRs?=
 =?utf-8?B?N05wQS9XNVhYemE0UXBQNjBlU0VVSnNML2JacHppNkE3alRUVWp5WS9QWjNP?=
 =?utf-8?B?VnNvamJRYU03Rm5weGpNVW1ydHBDVUkzSkRMdUptZXpnMmFmMDBPNDRPb1F1?=
 =?utf-8?B?MzlWK1dCUDVYcktUckVFMGxzWWRwdmRmK29LaEVLQytKNWpaS1NnbksrOWJX?=
 =?utf-8?B?czlsd1FwRXNHZ01PUFN6UnlxTHAwV3dIdWE1YXhXanZHZ2VGa0MrUHlhWUx1?=
 =?utf-8?B?OGpURHpLb1BtN0EyVE9UMzlUSWg2L2J6OVArSGtFR0JzUFM4Z2RHeks1QUpP?=
 =?utf-8?B?RUpqVWM0OHNXUmZWUWQ2SWN4UEN6cXlkRmJZaHIrQ0hkRVFQYkk4NnRaV1Zo?=
 =?utf-8?B?eWk4cE16MVhyZEJlK1BSaVhySG5RM09hL1RZbnZUakJpRmx3OU5DZmVjaXV3?=
 =?utf-8?B?Zk9lODdiOXM1M2htV1l4bkZGRC9mT2F1Uy9QUWVMQ2ZkRWVRM3pNTFozdHZ2?=
 =?utf-8?B?UUt2eEs1czJxZ0Q0bVBlNVRQWGpaOGUrRmRXWE1SRGw2OHhiR2E1cFJ0TXBk?=
 =?utf-8?B?YlUzSVpMRmd5QU1UcGR5Vk92NXFGR0lMTTlPeU5xc3FjakNzeW91NFVTTVpr?=
 =?utf-8?B?OE1VWXB3OG56T1FpejV4b1N2WllyNGJUUFBXUVRzL1Zkc3NJZmZ3b0JCSFVQ?=
 =?utf-8?B?UGJuSjBJZnJZNEgrM2VTampmSityV3lLZi9WeExiUHg0b2Q1NG9pQjZadXA0?=
 =?utf-8?B?NVVHRUF5N2Z1MFNYU1Q4WHB6MEdvYUgwd3VRUjc1Q0ZxamlxRUNuUTJtWTdn?=
 =?utf-8?B?bHJBMG5QR01aa0h3ZVVKVHhPUTkwOW9sbFdKcjBiN2dSa3JzQ0RJUHk0UERx?=
 =?utf-8?B?Nk9iT01Rdk1PeVhnOWtzN0JvcGN1Nkkrb1ByRXRpSnpNa0FpeGt1NGYzN0x4?=
 =?utf-8?B?OEZhWkVtMkNIeDQwWXBTMTlOTzVaRWFyVEQ1QTFmaUlPSys4L1pBYzJERlk2?=
 =?utf-8?B?eWtDUUNVNXdiMDI2ZDlnZGNaOUFncVVxMzFmWi9hOTlWcHBGTDdMUXQzWEFn?=
 =?utf-8?B?UGlJN2xTZ1Z5b0owKytxT3hWZHNSeitLV3k4dWpsZ09sV1VHYjZTaUVSNGdH?=
 =?utf-8?Q?4ZTykpUS69OiUPZ8I6mx4vRf+I8I+X1AGRALB+Dherhez?=
x-ms-exchange-antispam-messagedata-1: SOIphUI91vPoWqxIuGcnm9XXdbaaf7DiQpY=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7CE26F6589029348ACF76CB78219ED79@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffc9d803-eafc-41fc-c438-08de78272a97
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 06:44:34.6598 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WAXSkFqboO3XR4+rjetaL+33NOET63GixM6rllPltZ/LHc4bKoT/VELEIHQPZdnrkOu0IVNTAsAWRIofDzmN9dQrEkmYacpU++enqB2ytqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7783
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 80C891D38A8
X-Rspamd-Action: no action

T24gTW9uLCAyMDI2LTAzLTAyIGF0IDA5OjA2ICswNTMwLCBBcnVuIFIgTXVydGh5IHdyb3RlOg0K
PiBJbiBBTFBNIGluaXQsIHRoZSBEUENEIHJlZ2lzdGVyIEFMUE1fQ0FQQUJJTElUSUVTIGFyZSB0
byBiZSByZWFkLg0KPiBUaGlzDQo+IHJlYWQgaGFzIHRvIGhhcHBlbiBhZnRlciB0aGUgRFBDRCBp
bml0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBp
bnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyB8IDQgKystLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+IGluZGV4IDYxMzU1OWQxMTEzMy4uZTYwODAyYjBiOGM5IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC02OTQ4LDggKzY5NDgsNiBAQCBzdGF0
aWMgYm9vbCBpbnRlbF9lZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0DQo+IGludGVsX2RwICppbnRl
bF9kcCwNCj4gwqAJICovDQo+IMKgCWludGVsX2hwZF9lbmFibGVfZGV0ZWN0aW9uKGVuY29kZXIp
Ow0KPiDCoA0KPiAtCWludGVsX2FscG1faW5pdChpbnRlbF9kcCk7DQo+IC0NCj4gwqAJLyogQ2Fj
aGUgRFBDRCBhbmQgRURJRCBmb3IgZWRwLiAqLw0KPiDCoAloYXNfZHBjZCA9IGludGVsX2VkcF9p
bml0X2RwY2QoaW50ZWxfZHAsIGNvbm5lY3Rvcik7DQo+IMKgDQo+IEBAIC02OTYxLDYgKzY5NTks
OCBAQCBzdGF0aWMgYm9vbCBpbnRlbF9lZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0DQo+IGludGVs
X2RwICppbnRlbF9kcCwNCj4gwqAJCWdvdG8gb3V0X3ZkZF9vZmY7DQo+IMKgCX0NCj4gwqANCj4g
KwlpbnRlbF9hbHBtX2luaXQoaW50ZWxfZHApOw0KDQpUaGlzIHdpbGwgY2F1c2UgcHJvYmxlbXMg
dG8gUFNSL1BhbmVsIFJlcGxheS4gaW50ZWxfcHNyX2luaXRfZHBjZCBpcw0KcmVseWluZyBvbiBB
TFBNIGRwY2QgaW5pdCBpcyBkb25lIGZpcnN0Lg0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+
ICsNCj4gwqAJLyoNCj4gwqAJICogVkJUIGFuZCBzdHJhcHMgYXJlIGxpYXJzLiBBbHNvIGNoZWNr
IEhQRCBhcyB0aGF0IHNlZW1zDQo+IMKgCSAqIHRvIGJlIHRoZSBtb3N0IHJlbGlhYmxlIHBpZWNl
IG9mIGluZm9ybWF0aW9uIGF2YWlsYWJsZS4NCg0K
