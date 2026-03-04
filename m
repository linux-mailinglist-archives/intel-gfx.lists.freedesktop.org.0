Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AF/4FtD3p2l1nAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 10:13:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF94E1FD600
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 10:13:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07B8B10E991;
	Wed,  4 Mar 2026 09:13:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GVIM+qrX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9C710E991;
 Wed,  4 Mar 2026 09:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772615627; x=1804151627;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=HZ0xCcjmmhrx2zqGqIYN45FOaaYbMtOXDozTzTvzzCE=;
 b=GVIM+qrXqHGEwUrEAM15fx+yxA/ix+NesW4UdtjaEYivlC4FNKPkk0p+
 tgrp9Vjbv7PFOtKwstPXgdeVtbw398bKGDv36agjARAlX26Pwfxseyp4l
 SV1UyTPdqAKTmtxX6RUZ8qdHiFLXF70Dy8k3v69FkgP49r88V2mn+sMxM
 JXucoUM+MB59PCwOu/2n26BZcXI/1GXuiGGhvviyO5UgEagV6LkL7mMFp
 bv4xd2qo/ai4lKj/rdD22zS1ghEea4gw2uvJ2dfETon4YK5sMuHKRCquM
 FPDbdrQbg9a0bomlSXducyWGtOO1KXxY/OeCeiq5vLkXuiQZCkYR4rV7g A==;
X-CSE-ConnectionGUID: /+p56KuDQH6LNUVP506GOA==
X-CSE-MsgGUID: /1377shzS3q1w8H1uipJ3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73798413"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="73798413"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 01:13:46 -0800
X-CSE-ConnectionGUID: HlQf16nMSgWD80bPzG2+bA==
X-CSE-MsgGUID: QIMbleNHTZi2NZALhbf7ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="216137343"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 01:13:47 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 01:13:46 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 01:13:46 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.17) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 01:13:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XCPLvwifDqM4+iLlqXigZRavefo+iFfhdH4Xd+BlRrmmMrN40aUPffhfF/v6xsEiiN7EJKt/StHnYm/3AXcjBcbf3S7LetGm5fkLMJXCsd7QScW9LPBoxKSXKPS1nTpyZFVivGLS+YNfPW6awEmsSlmWfNCxii6stPkfyYNKImWHQoJv0JRmTMzLS2U7KiKyDL/kdTWrbCxDpFPMHruNYkBB5Dn5GiH1vpayuT3uOnofZ/oZR3J0bskf3mOTixKbKqKNJPDsPU7krwhoVzQZfb9xAhu/pUYuj5MRiAmSqnlmL5/WcKLsPU01Yjro2YXyEGBNQXMTH5Nm5qnMnPQRNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HZ0xCcjmmhrx2zqGqIYN45FOaaYbMtOXDozTzTvzzCE=;
 b=P9FCywcvVpmV7yZy1eJK0jfA8eR0R9tcO8p/e9F1yZTfMU19OoRHBBOz8HsmwPa+HLw56jvCcKZs5QFfaEl5LpZ7dmOg2SQAl68dDWWXVw4mdpaSryDu/1D0P9vB9f2aTUNDdZ3IeKrMYePcVk6xfseZgVXaNrYjY9TecxOhJIVpBWDKM0dOy3zRnAT9rUbhaQkijb/M5A0ALrec1N1cUVxKNQ+sXX0u4D27aMfumi2LlS2012h2wpE+pm/cDm2D/gInRN80ghVn/4VDKFTUWRArbEK8LTL0LFo0X/zIeja1Rngrw2FQdnseQYzf+nuK87ce3B3ckxIGp8Nhr0qz4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH3PPF1618AF7BB.namprd11.prod.outlook.com (2603:10b6:518:1::d0a) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 09:13:44 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 09:13:43 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 3/4] drm/i915/dsc: Add helper for writing DSC Selective
 Update ET parameters
Thread-Topic: [PATCH v2 3/4] drm/i915/dsc: Add helper for writing DSC
 Selective Update ET parameters
Thread-Index: AQHcqwzkXTyW+KBP7kWGDXVTmoXwl7WeDgIAgAAKRoA=
Date: Wed, 4 Mar 2026 09:13:43 +0000
Message-ID: <64747118136fee7be6a7924dfc9199e6a852de05.camel@intel.com>
References: <20260303125409.503148-1-jouni.hogander@intel.com>
 <20260303125409.503148-4-jouni.hogander@intel.com>
 <5bb046c8-b154-4fc3-a119-e7c2a41b4c6b@intel.com>
In-Reply-To: <5bb046c8-b154-4fc3-a119-e7c2a41b4c6b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH3PPF1618AF7BB:EE_
x-ms-office365-filtering-correlation-id: 00cb20fd-2363-467c-6656-08de79ce5511
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700021; 
x-microsoft-antispam-message-info: i7gchPrn91YNWOPKqM0zwmnPygmwc2cr5OGZ0v9Xq2DTwUOkPf9QKbLPHPJpQJ/WeUCUnzlUAiKSenNEi63SyBQ0AWw0V5CKsISsox1+T3pAYfa4jgG9Nmg6pzbzn3MyTQ7RHvxlWQYmwHkTNjCvs0fk9u4mQ6Ta+TBq0+00nYcqSSxB2Uxb/p06347wzO51RHFBMK7z6LVk1PH3TCXxf0LdxZep2tbxuxUwAPokPeUzhltJR3VG4/ddE4Xe0KKANdonIfjh11wIdNO7/VgRLLIhYRFy/tPMsIOKTWtlY8dAcKNWgEeNDxiPntW3Yizu4E5RiAoD4HGiQXjy1JQq8GJ9svwL+p8yfcg+q28Y0IcW6xWh1BiqTswu/EuvaHwhlakAg86ecrbCahMXzmcRZqB+JXoyBvr6/ehzolnQaKOZf51WdmWBTv3a8w4c4lVZNEOdvqjH/ZdqZ4us05Gf/ulfG8GOvlfmKSE0jeNrPC+dsJ3PmJTmSj0VE6HoTIKyejOS+ye/WZD1dAhaR0+TqM/O5tFR1UOFj6AP3Ii6vzXG9UfqvUGbPUQJHf0nED+z51YoJxlb4irmYzYbMekdU/CtL0xTeeM4JZCBh4CkmWqROM1h08mVOIAndwjlDWZZZdF7ynTxqnSyl079xYPP3PirwL0yEQ9DpgpAxzxPBkrBoxsfO9OMqquxctw8XJbErr+bbvOMPxcCT95CSFoNXlSYbSFi+VbW6m4whD55kGlxEnwMsyUiW3cjOlGSGcDyolmxTvu/Pfh3QTHPi0hmaznLkzbPc0afDkkbWATE5Pg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dTBHQXpBZE1pMjljL05WUFBKMHJwOS9Ea2s3ZGRkK1NtaklaZnFkdnZTTnRN?=
 =?utf-8?B?bU1lZFRyUGdwOTIzMUhEUzJrcm9qaFlkVVV6WjRac0JvOVV0MTZmRUdZd0Jm?=
 =?utf-8?B?MHZ6Z0RxNGMxS2xhQzJGdzhOcy9rN2J3SSs1R3dXUnZOMTBRbnpVVWF4YTVW?=
 =?utf-8?B?Q3pLTHB0VEJJTHBHVWRjOVZ5SVplRnF0Sm5FZUR3b3h0M0Z5N1ZCaWxwVTFm?=
 =?utf-8?B?Vmg0cmFaVTJyalFpcVBwMHNXNU9wMHZoeXM4L2R0UnFBcGJlRlNoR3VSU1Ix?=
 =?utf-8?B?bTNUTCtTZW9jZGZ5eHpaT0lGZ1I5NXJEYXd2eGg4RXArWTJIa3lQMjlKSDJF?=
 =?utf-8?B?TS9OUmg3emdHTXFmYU9CbzNzRWtyN3hvaVFTdHF5VnNvRU1YQ3RrcVRvNjQ3?=
 =?utf-8?B?bUR4KzFsSnpFeXh4OFg0NldFUXBHQ3FvbHJPOXpOQlUrQ3RQWEYzTXFCNml2?=
 =?utf-8?B?V1k5ZWZ0bDN4aTZyZ3l6ZXBGNGp5SU1nMjJyZ0QvbEZyUVlSd3I1VFdtajRD?=
 =?utf-8?B?ejdmSkNJTmFSZzBlNDRjVk5xaTZSVDJFU0M2cHhNYi9zRE1FOVlTRllkSDAz?=
 =?utf-8?B?R2hPWWM5OEhsOSt0dUgrV1VUaGIrSmdFTjhOdmtYejRMSXJKNFpFeFFqdm0r?=
 =?utf-8?B?UTBDL0dzc096WXorSUhrKzdYb1o0bEV5TjY0cFhJU2FCN0RmRkNCOG1EekRS?=
 =?utf-8?B?RlNra1Ayd3N4YnovZ1Vud055RjQ0NVpaTGxHV05veG41NXZqMndRT2l5cUxL?=
 =?utf-8?B?aTVJd1RldUhRQ2lqUTZyWEF6K2ViUUdnL1loWVc5SmFtRGVWQVdHTmtad09H?=
 =?utf-8?B?MDlaMXFpVE0zRHFDWERRalBQSmx5dmJyMExQZkRCMzhnZ2Z5QVAwWEJlb3RN?=
 =?utf-8?B?OW56dDNKWkErZlpiczJxZWRlM0JTTEZHT3VnYndONWlKZWxUSU9zZXFtNUlZ?=
 =?utf-8?B?S1NUcTNYY2gxVmFKQ3pESENVODhwNHZIZ2x3L3crL1Y0Z0VkaVRNd0hOQnRz?=
 =?utf-8?B?S0dxUitMWGJXbnNIYUo0RGQyZ3FCV1N2ZEJIK0wybjNxZ0E1eWhEcWQzM2Rw?=
 =?utf-8?B?ZXJhanpMRmZsTHpVZkZVSlAvUnNNL1BZbDRuRkpJdzZRT3RnK3pUMDFOT2Zp?=
 =?utf-8?B?bG9sTHVqMEVFYk4wYzByS2VFZkhEMmdkdXNHRmFIcFZjUEpFQ1ZPWUp4TE1s?=
 =?utf-8?B?bUlBL0xoNmtpVVNOYmVqTGpPclp0WXRoSmhsTkdYV3RSRXluclZnUWNEUngr?=
 =?utf-8?B?dCt0K2svaUUwaWRyUXdYYk1aUFcranhHME5sVUNCTFBMclZpdnNtaUhPNGMx?=
 =?utf-8?B?WGtwTi9EMElSREErcTVQQnlHWE9GZ3k4ZUlwNWtvNUV0TXhteGdhbC9Qbkp0?=
 =?utf-8?B?aXFHWlRPT3FqY29vdHM4dHFBd2hiR0lVTTVoZkdmMXdDUFJ3TmdZb1RLRGg5?=
 =?utf-8?B?Ukw0Qm5OLzJLRXBJWTVSYUUwOHJLRGFWMFo1NWNOaEVtdDJuQU9wSmJqbVpP?=
 =?utf-8?B?eERlTmdSZ0QzRnZSR1UveHJRY1oyUUNxZ0dzZ0JRM3Z4cEJlZjJtZzZsbzg3?=
 =?utf-8?B?aFliSFZoZWZGaWRsblNPVWhmeG5paExpTk5jVHdqTno2L1N5bHB6RzZ2SmJv?=
 =?utf-8?B?eE13M25qVXNhaVhKSDJVYWlLUi90bmhmbEs2Ymt1RkxWRXVBNy9rckZkTmdX?=
 =?utf-8?B?VDBnSC9QMkNOcnZXZmxMZmd6WFd3V0ZGYlRqL3ovbkVaYWlPTFczd1VSY3VG?=
 =?utf-8?B?L3g4ZlpZQVBkR0dHK3llUDNoa3p5RDE2YnU3MUx5cDkzM2x4WUY3Y2J0ZHN1?=
 =?utf-8?B?NWZaTlpEZ1FON25IWStBN2krTFlvWkQ4Z1NqdFFDd0tLTnRXVVJzTWxMck5x?=
 =?utf-8?B?Ym9tTnVsQnB6OGo1eUJSYmJXY0ZFTTdvbjllaGc4WEpUTDRTOFRMQ3RRMFpp?=
 =?utf-8?B?djdpZC96R2Y5bzNqaUxaaHpZL0tNOG5MWmxjMnE3Q0YrMnZQdjVlVWZnM25C?=
 =?utf-8?B?SlJzUWE5ZGhoZmlMV0VuVys5T3BFd1Qrb0tEeGdVTXFXSUpzV3JEZTRYQ1Np?=
 =?utf-8?B?UlRqR2pPSUM3SC9KaWpqNmVCR2Rwbk82cG85VWRFU2ZOS3YyQ2FGRFc2TkxC?=
 =?utf-8?B?S3oyZ2ZIYXVDUm9XQXRhQTZOdExnanpyKzgybFhZNTB3RkFNcXNCMG85U1Ju?=
 =?utf-8?B?ZkY3OGp1NElhNUdqNUk1QXZNY0FFVVM2L21mRG5jMjFDZEZ0U3hkekRZOTJr?=
 =?utf-8?B?Nlp3QjF6cmhCVWVjcmdTYWt3MWU1TkY2KzI2bkhIdC9QdjQ0d0dnZ21rV1Q4?=
 =?utf-8?B?VEgyOFBFcFNnZDM3b01YRHpjZ1BMY0VCUXMyN2NaMkZrRURzUUNpVDlFVHVl?=
 =?utf-8?Q?kaQaMfgrlxmrpSO39df2H0U2tD59E2IRHdP6ttPAFng+W?=
x-ms-exchange-antispam-messagedata-1: jtG/6Mc8GPDV0ULwLx3Tekvr2K76J1GDHYg=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2E4F4923151DB3468B8923125F2A035A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00cb20fd-2363-467c-6656-08de79ce5511
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 09:13:43.0449 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TPg4xprHJmxPcE02BM+mTwCMy8Va81tNoCdTgVx/qptGSbo0FjdoTtNL0K+X6gaZ64w7VKifM44oPDFFjT2jOJkAoxsjPOaVnA+LH7QYL8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF1618AF7BB
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
X-Rspamd-Queue-Id: BF94E1FD600
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAzLTA0IGF0IDE0OjA2ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDMvMy8yMDI2IDY6MjQgUE0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4g
PiBUaGVyZSBhcmUgc2xpY2Ugcm93IHBlciBmcmFtZSBhbmQgcGljIGhlaWdodCBjb25maWd1cmF0
aW9uIGluIERTQw0KPiA+IFNlbGVjdGl2ZQ0KPiA+IFVwZGF0ZSBQYXJhbWV0ZXIgU2V0IDEgcmVn
aXN0ZXIuIEFkZCBoZWxwZXIgZm9yIGNvbmZpZ3VyaW5nIHRoZXNlLg0KPiA+IA0KPiA+IEJzcGVj
OiA3MTcwOQ0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmRzYy5jIHwgMjINCj4gPiArKysrKysrKysrKysrKysrKysrKysrDQo+ID4gwqAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmggfMKgIDMgKysrDQo+ID4g
wqAgMiBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiA+IGluZGV4IDdlNTMyMDFi
M2NiMS4uYWUzYWYzYzJlNDFhIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92ZHNjLmMNCj4gPiBAQCAtODIwLDYgKzgyMCwyOCBAQCB2b2lkIGludGVsX2Rz
Y19kcF9wcHNfd3JpdGUoc3RydWN0DQo+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiDC
oMKgCQkJCcKgIHNpemVvZihkcF9kc2NfcHBzX3NkcCkpOw0KPiA+IMKgIH0NCj4gPiDCoCANCj4g
PiArdm9pZCBpbnRlbF9kc2Nfc3VfZXRfcGFyYW1ldGVyc19jb25maWd1cmUoc3RydWN0IGludGVs
X2RzYiAqZHNiLA0KPiA+IHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICsJCQkJ
CcKgIGNvbnN0IHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsIGludCBz
dV9saW5lcykNCj4gPiArew0KPiA+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0K
PiA+IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0NCj4gPiA+dWFwaS5jcnRjKTsNCj4g
PiArCWNvbnN0IHN0cnVjdCBkcm1fZHNjX2NvbmZpZyAqdmRzY19jZmcgPSAmY3J0Y19zdGF0ZS0N
Cj4gPiA+ZHNjLmNvbmZpZzsNCj4gPiArCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4g
PiArCWludCB2ZHNjX2luc3RhbmNlc19wZXJfcGlwZSA9DQo+ID4gaW50ZWxfZHNjX2dldF92ZHNj
X3Blcl9waXBlKGNydGNfc3RhdGUpOw0KPiA+ICsJaW50IHNsaWNlX3Jvd19wZXJfZnJhbWUgPSBz
dV9saW5lcyAvIHZkc2NfY2ZnLQ0KPiA+ID5zbGljZV9oZWlnaHQ7DQo+ID4gKwl1MzIgdmFsOw0K
PiA+ICsNCj4gPiArCWRybV9XQVJOX09OX09OQ0UoZGlzcGxheS0+ZHJtLCBzdV9saW5lcyAlIHZk
c2NfY2ZnLQ0KPiA+ID5zbGljZV9oZWlnaHQpOw0KPiA+ICsNCj4gPiArCXZhbCA9DQo+ID4gRFND
X1NVUFMwX1NVX1NMSUNFX1JPV19QRVJfRlJBTUUoc2xpY2Vfcm93X3Blcl9mcmFtZSk7DQo+ID4g
Kwl2YWwgfD0gRFNDX1NVUFMwX1NVX1BJQ19IRUlHSFQoc3VfbGluZXMpOw0KPiA+ICsNCj4gPiAr
CWludGVsX2RlX3dyaXRlX2RzYihkaXNwbGF5LCBkc2IsDQo+ID4gTE5MX0RTQzBfU1VfUEFSQU1F
VEVSX1NFVF8wKHBpcGUpLCB2YWwpOw0KPiA+ICsNCj4gPiArCWlmICh2ZHNjX2luc3RhbmNlc19w
ZXJfcGlwZSA+IDEpDQo+ID4gKwkJaW50ZWxfZGVfd3JpdGVfZHNiKGRpc3BsYXksIGRzYiwNCj4g
PiBMTkxfRFNDMV9TVV9QQVJBTUVURVJfU0VUXzAocGlwZSksIHZhbCk7DQo+IA0KPiBDdXJyZW50
bHkgMyBEU0MgZW5naW5lcyBwZXIgcGlwZSBpcyBvbmx5IHN1cHBvcnRlZCBvbiBCTUcsIHdoaWNo
DQo+IGRvZXNuJ3QgDQo+IGhhdmUgZURQLCBzbyB2ZHNjX2luc3RhbmNlc19wZXJfcGlwZSB3b3Vs
ZCBuZXZlciBiZSAzIGZvciBub3cuDQoNClllcywgYnV0IGl0IGNhbiBiZSB0d28uIFRodXMgPiAx
Lg0KPiANCj4gRnVydGhlcm1vcmUgd2UgZG8gbm90IHN1cHBvcnQgdGhlc2UgcmVnaXN0ZXJzIGZv
ciBCTUcgQUZBSUNTLg0KPiANCj4gSG93ZXZlciBsYXRlciBzb21lIHBsYXRmb3JtIG1heSBoYXZl
IDMgVkRTQyBlbmdpbmVzIGFuZCB3aG8ga25vd3MgbWF5DQo+IG5lZWQgdGhlIFNlbGVjdGl2ZSBV
cGRhdGUgRVQgY29uZmlndXJhdGlvbiBmb3IgRFNDLg0KPiANCj4gU2luY2Ugd2UgZG8gbm90IGhh
dmUgdGhvc2UgcmVnaXN0ZXJzIGRlZmluZWQsIGxldHMgbWFrZSB0aGlzDQo+IGNvbmRpdGlvbiAN
Cj4gc3BlY2lmaWNhbGx5IGNoZWNrIGZvciBgdmRzY19pbnN0YW5jZXNfcGVyX3BpcGUgPT0gMWAN
Cg0KV2UgY2FuJ3QgZG8gdGhhdCBiZWNhdXNlIGluc3RhbmNlcyBjYW4gYmUgPiAxLiBBY3R1YWxs
eSB3aGVuIHJ1bm5pbmcNCmttc19wc3IyX3NmIG9uIHNldHVwIHdoZXJlIHBhbmVsIGlzIHN1cHBv
cnRpbmcgc2VsZWN0aXZlIHVwZGF0ZSBhbmQgZHNjDQp0aGlzIGlzIHRoZSBjYXNlLg0KDQo+IA0K
PiBXZSBjYW4gaGF2ZSBwZXJoYXBzIGhhdmUgV0FSTl9PTiBpZiB2ZHNjX2luc3RhbmNlc19wZXJf
cGlwZSA+IDIsIGF0DQo+IHRoZSANCj4gc3RhcnQsIGFzIHdlIGRvIG5vdCBleHBlY3QgdGhlIFNV
IEVUIGNvbmZpZ3VyYXRpb24gZm9yIDNyZCBWRFNDDQo+IGVuZ2luZSB5ZXQuDQoNCkkgc2VlIGV2
ZXJ5d2hlcmUgZWxzZSBpbiBpbnRlbF92ZHNjLmMgc2FtZSBjb252ZW50aW9uIGlzIHVzZWQuIEkg
ZG9uJ3QNCnVuZGVyc3RhbmQgd2h5IHRoaXMgaGVscGVyIGZvciBQU1IgY29kZSBzaG91bGQgYmUg
bWFkZSBkaWZmZXJlbnQgYW5kIGJlDQpyZXNwb25zaWJsZSBmb3IgaWRlbnRpZnlpbmcgcG9zc2li
bGUgRFNDIGNvbmZpZ3VyYXRpb24gaXNzdWU/DQoNCkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoNCj4g
DQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gQW5raXQNCj4gDQo+IA0KPiA+ICt9DQo+ID4gKw0KPiA+
IMKgIHN0YXRpYyBpOTE1X3JlZ190IGRzc19jdGwxX3JlZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YywgZW51bQ0KPiA+IHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIpDQo+ID4gwqAgew0KPiA+IMKg
wqAJcmV0dXJuIGlzX3BpcGVfZHNjKGNydGMsIGNwdV90cmFuc2NvZGVyKSA/DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuaA0KPiA+IGluZGV4IGY0ZDVi
MzcyOTNjZi4uMzM3MmY4Njk0MDU0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92ZHNjLmgNCj4gPiBAQCAtMTQsNiArMTQsNyBAQCBlbnVtIHRyYW5zY29k
ZXI7DQo+ID4gwqAgc3RydWN0IGludGVsX2NydGM7DQo+ID4gwqAgc3RydWN0IGludGVsX2NydGNf
c3RhdGU7DQo+ID4gwqAgc3RydWN0IGludGVsX2Rpc3BsYXk7DQo+ID4gK3N0cnVjdCBpbnRlbF9k
c2I7DQo+ID4gwqAgc3RydWN0IGludGVsX2RzY19zbGljZV9jb25maWc7DQo+ID4gwqAgc3RydWN0
IGludGVsX2VuY29kZXI7DQo+ID4gwqAgDQo+ID4gQEAgLTM3LDYgKzM4LDggQEAgdm9pZCBpbnRl
bF9kc2NfZHNpX3Bwc193cml0ZShzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiA+ICplbmNvZGVyLA0K
PiA+IMKgwqAJCQnCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpj
cnRjX3N0YXRlKTsNCj4gPiDCoCB2b2lkIGludGVsX2RzY19kcF9wcHNfd3JpdGUoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gwqDCoAkJCcKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiArdm9pZCBpbnRlbF9kc2Nfc3Vf
ZXRfcGFyYW1ldGVyc19jb25maWd1cmUoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiA+IHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICsJCQkJCcKgIGNvbnN0IHN0cnVjdA0KPiA+
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsIGludCBzdV9saW5lcyk7DQo+ID4gwqAgdm9p
ZCBpbnRlbF92ZHNjX3N0YXRlX2R1bXAoc3RydWN0IGRybV9wcmludGVyICpwLCBpbnQgaW5kZW50
LA0KPiA+IMKgwqAJCQnCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNy
dGNfc3RhdGUpOw0KPiA+IMKgIGludCBpbnRlbF92ZHNjX21pbl9jZGNsayhjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKTsNCg0K
