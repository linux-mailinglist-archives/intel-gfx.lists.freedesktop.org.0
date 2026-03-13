Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6M57E7d9tGmOogAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 22:12:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F12B728A103
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 22:12:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7825810EB89;
	Fri, 13 Mar 2026 21:12:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cs6xeQtL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD6710E47B;
 Fri, 13 Mar 2026 21:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773436340; x=1804972340;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XnBc3C9vVv3uWXF4U6OycrnBnaVd+rpepxnc65Jqaws=;
 b=cs6xeQtLR9lme0oEuyPkjk7DmsA1u0zN5AcOJmFdbhnyZc7qmMXxaYm2
 1UIlnVqnfofprt1nSHOXVSRJate/U1/EIPhGaZfyG7vUGVs1q+sV828pS
 MjZjjA58l7Jbkk3sFxkTYgFQCgslpMo3++Z4qBvAEk63xtYKtm+ToDsdD
 NVHRzvN/MZEQuT4+yQ4bBBxUzCJvAuEv+bw0dN8aX7lHLixSmjtpp3tcZ
 SR1e84tTny9OaqkPt+HC1laxXLQjf6D+ghZoGDxwkdBkYKlcdHIWJeoR/
 Kl8SUWq7gxmD9tQQFufNW2SKFXCQO6aeWSTP/NR81sL5xhAa0jdMmEv+t A==;
X-CSE-ConnectionGUID: OODDXeQnQ0C3KAQVSpSe5w==
X-CSE-MsgGUID: qUCfmGJmSo2XKlqx/n9diA==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="100011126"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="100011126"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 14:12:19 -0700
X-CSE-ConnectionGUID: A7H117NQSiO9PGhbN7iJhQ==
X-CSE-MsgGUID: 4msIwZHrS+2jrUhe5mf3Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="251793444"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 14:12:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 14:12:17 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 14:12:17 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.59) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 14:12:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WttFC/HgaV5ZmvWWvxq2iNIkW4HdZThg6ZCwqzmYGBijEExComNZYuxLAn31tW3Me8JjNEi9RBJm+Ia7jii4w2540jNsCu99/aA3wxr64eXBxAT7rRBzWSjt2H+PpjVJNOSzbDeYpbCEZ+2TGnARftUVQ87gCsp5SB7JIcjP96zCrud44LTuswjuXLQzR0uwxsBttEonDBHc469ZrHvJVkSulSilXXhi+JyM8+OdtO68385dT4mqDcONTblaZDkUVQuiR4lCFumQ1aAE5OxLOcSBnlt33MqozbSlwVyFMzoAYLUHJV+NBPH5KF36gn3gFcOms/oFmk+GqFVkt/SD1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XnBc3C9vVv3uWXF4U6OycrnBnaVd+rpepxnc65Jqaws=;
 b=mFvrwo1IgUDSVrUqJGm8ads509ZqLI1ZDawafHQMuIjCFJzG1wI8UNbV/v7Qli3MctdLp5MbDPOAMvkJ4vWGkPUVOz5SeqqWNkd4oT6Za2AK0VcmhM8PpCMRt82EiB5m1we4FQ0E9TbsYDuVbDGgsKp83Jkcat9K60K3DYppPgKnNkSUQ3lJGhPlRluN6idDVS/IIB62Ha/SYaSWGlNkiVhL0krCA9ULyhQAHn6CBEu6Xd6QTvtMSX2nVP0RVjWl9rmajQNFqsrj5ck0xmtH6Ex9fFSD/pal43CwYgwHyUB5GTsrkfhk2ariVv9KEDIeibGCiTyjHKCIYczii93jSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM3PR11MB8713.namprd11.prod.outlook.com (2603:10b6:0:45::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.8; Fri, 13 Mar
 2026 21:12:14 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%5]) with mapi id 15.20.9723.008; Fri, 13 Mar 2026
 21:12:13 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/psr: Disable Panel Replay on
 DP_DPCD_QUIRK_NO_PANEL_REPLAY quirk
Thread-Topic: [PATCH 2/2] drm/i915/psr: Disable Panel Replay on
 DP_DPCD_QUIRK_NO_PANEL_REPLAY quirk
Thread-Index: AQHcsuQSn5Uy02pJ/UeiENPQr67OIrWs9jXA
Date: Fri, 13 Mar 2026 21:12:13 +0000
Message-ID: <CH0PR11MB5444DA3218F5E72004CF411BE545A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20260313122145.1747175-1-jouni.hogander@intel.com>
 <20260313122145.1747175-3-jouni.hogander@intel.com>
In-Reply-To: <20260313122145.1747175-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM3PR11MB8713:EE_
x-ms-office365-filtering-correlation-id: a3a4ca3a-f404-46ab-46ff-08de8145326e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021|18002099003|22082099003|56012099003|7053199007;
x-microsoft-antispam-message-info: NgMq7wmpsFFrjUPL02j8yFdhFMdt3erC4dBqJ1GKhI7648YjVA3dreEadzFYuf47Obb6hJXYXzZuYUYbm730elPG989hOl8yVZwyO3UJZwv6PAkMw9UbANFwuHjJr5I89neWVw/SJzL8WkHN6KrdHbhD+Z4BHpQfv3T9Wbga/Tm3cVx8W66SNOh3HSUgLnGLR4Lw63GlKGVvbESkm74MM0uiV2O8aEalJRCsUDmzGup8cu80D1xb7earbepSjJcx7lqB7JeR2kudYPzmVxSr5+J4v8BAeO8/qecseWIba6NySp75TpO/mt4fwS96445R5CyGRDrovbq6y5sCZkb0yuuTbhM54qmp8GiOhsYxPYRJP+5HD08Exx1+p67VFZsuaPBkDC+H526u5fEQNSbBXFNqqad3PTHnraEbgPO035sNECLR/0pCy0+aQAa+l+j2s488DfXLgYW7RYb6PqY1EIFEdOl5l9anE1jkNLcGk0HINpk1Sqy1OR5prWp4wsmKdzqSb6nmik4LYS2FRAadHXehTEnAz9TozUyIv+39MFmlu8T9fEDa+UD12ODmKjYbLteqZKtp0XaCTM+JTv4Ts4svXqRlYlONBDTQIR3ebxD3OQFtxg7g3MJQGG4zQ9ex7a6ymwa8sZZ0pED53WCuDKIdDMPpWF5iIYmF8KmNwQ8lW8RqA+Z/V+HSPzbJZNp4qljl/AU6bs158nzUok8VLonfIQ2V7+CXJ9FFBU34si0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bmlLbWo3cVJXRDk0UHZoVFJGaXEvT3JIOWtPNWM5OFFocWJENDdmQ1ZYMlNu?=
 =?utf-8?B?RitucXhsZHkwV3MwZnZ3eTcyZWROSHEzRUJGcHJ2ZmZhSHczOXUwaHNxL0hL?=
 =?utf-8?B?SFFnMkZ3d2IzSHlJeVJIUXhSSTZ3eG12d0o5WWt1YXhheEhjZnRwcWNyNmxY?=
 =?utf-8?B?ZEV3Zm9LSzFNc2hLeUFQWDRrTVo0Z2gvZnJqcm1lc1kwTDBpM05aV1dkQTly?=
 =?utf-8?B?dGVtWGpxMkl1SXJIQmwvOW9SY3ppM1cybnJzWGdiQ0F3UDE4WGF4SVZ3b2kr?=
 =?utf-8?B?OGxPN01uZk0rNWdKbkdldjZidVV6NXZvZ3VwdVBXQ3E1TDVxK2g0QkNKMkhD?=
 =?utf-8?B?Q3gwZWJwU3JBWHNSckFwTlRRazRTVUsveFlQMXlNbS9LdkFDUjRtclFRL1lX?=
 =?utf-8?B?OUpYbUZJa3UwcVQ2dUdZRU5PTDJodjFieU5kL3llemlsWGFTSEpQN2V3VmUx?=
 =?utf-8?B?aXl4SVY3T3lGdWU5dmxPanNOQ1lncVBGU3BNL3BWeUxnYzVjVDBENSsvb2FQ?=
 =?utf-8?B?Z2VTYnhTQmw1V0RMZnMyQ1N1dHExb056MFB1VmpmdUpFaWVXd1hSTjNUWU03?=
 =?utf-8?B?eWlYaFFqSFh4SEozMnRrM0FnNDIxSmRDcWZocWtyNmRmblhZUHdjQ3dQNk5u?=
 =?utf-8?B?eDFKQi9Odk5KdkxndDdxRzNlcE16UEhyWWl5S3ZKWG92eGNvbmxhNjZjVjdt?=
 =?utf-8?B?OU4wN3BiZndULzFKamxrYVM0VC9KdTBLQmpPcjQvN09POFJDOVZxQm5QdFdn?=
 =?utf-8?B?c2trS1U3czFad2htZ2hoZzNVN1MrNnJaNFgySDMrSzdKK010b2ZJOEY0VWlC?=
 =?utf-8?B?cUR0VzA2VnFSQkI0R2lpNmZEbC91cm9Od09zcDVML1V2bk9wZ01WdFB1clZy?=
 =?utf-8?B?NDBBcnZqV29QOUlIbnQ1cG1WOS8vMlJXZnN0VGdSd0RHejYzazd3NXNqcHpB?=
 =?utf-8?B?MGJQbjVwSE9JZW5yVU4wL1RuK2FxajdQRHgydnhYK0l3UkhqWDJBNVFGSGhJ?=
 =?utf-8?B?bkx4dVBrcEZ1VXVtb0NsUzJoNUZsQ1dockdpT2tBaFRtVURRU0UxdkJZY2Qz?=
 =?utf-8?B?ZnBjU2p4R09DdEc1UTE0SitTVnYyc09BcEZubTVmZC9VTE82UHRqY0kxd293?=
 =?utf-8?B?QUMxKzNKTksvNDdJby9YTDFjajIvWmNYYWdaczRXY2doQUs3cFV5UkZyNlF2?=
 =?utf-8?B?NFJvaHc5bEFkY2xXVURZc3c2SWs5Zy9vRmtKZnRZRGV1b0JjVXF6MVU1Si95?=
 =?utf-8?B?amhiQStuM2cwZzhrWklPSEJ1aXdBcjViYUdYMzF1YzRhY2NLNmZZMmFFMFpE?=
 =?utf-8?B?ZkxqVnBsNmZ3cFc2Vm54MDBsR1Vjc2NRN0ViY1Fteml1MnluK0VTazRHOWRF?=
 =?utf-8?B?NUx2SFAzOWFhK0VnWTA4RTRwRkI5dU9LVllOVzVRd1ZCT1h2ZWQ2L2k3dk9P?=
 =?utf-8?B?cGpHQWVrTkFHOFhtMU9YVWRJWkZYT1AwZmxDTjNKOEJSV3MzM3R3eHVNdk4x?=
 =?utf-8?B?a0V5ek5CMFNJRzNnMGYxVWNhaEFrVTJ4WGQwMUdBTHZLQWgxaEdyMkt3NU5Q?=
 =?utf-8?B?aGtjcVE1MlRaa0VyUWxPOXEwU3dwVUF3K245K00rVUVYRnNMQnZwL3Jaaksr?=
 =?utf-8?B?K1B3U0pWczlHbFFGaGRjdFFROHNNdlU5ZmFvaXBBNHc2VjliQklUSk40ci9k?=
 =?utf-8?B?WEZrNXJScjR5c0dSVzlNWGNmRkM3UzlxWEY1L3RtdU9iNExDenc3U1hNQlQw?=
 =?utf-8?B?V2lVaURMaE9SSzN4YjNBc3A1UFJ4WlUybll6bUJ0NytlekFtam1SeXpHakl5?=
 =?utf-8?B?QmFXYkxuek9nMDBoZ3FWWUZ6cm1pdEM0QmtKdGMwVWltQ2tRSlNkYUNvbnJ5?=
 =?utf-8?B?TUw0UmRWaTNmbXhWWEl1c29Pa3RUajRjZ2hYb1NyeE8wamVITGtJL3N4Q3ZL?=
 =?utf-8?B?OC9KVm1SdXpVL1p0ME9vM2JMTHNMZk1SQm4xd2hrZ2QxZ1Fmd3dNakhRSEFz?=
 =?utf-8?B?b3hEd2xmdjBaSTVIY1BpWUZDOVdrUFFkRWJBWERhSUZzSFNWZU9zR2o4d3VZ?=
 =?utf-8?B?REJOeUFOYTVSdGRYM3RuOEt0NThGQ0pWVmlUa01kYzh3UlpYZWpWRTY4dGVy?=
 =?utf-8?B?czV0aEdLbGpzNkdwUkIzb2pFS0RoQk9vSStTVGxFOW9rSWlaT3cvODNYTjlB?=
 =?utf-8?B?UXRhbkFwMWxYT2xlcHBLSzYrcmtKeGF1WDk3UkJibE1IeHlBWS9lQ0Q1ZTNW?=
 =?utf-8?B?WjZsUEhpTVkzSU90YkZLSEJMcFYrem9vUmJneWJyL0J3VDhhcitqOC9CQyti?=
 =?utf-8?B?cjJkK1I1RC8xd3ppSmNRZUJUZ2lheFpCZkNpcm54WWd1YWlSeFJsSVQrUU1y?=
 =?utf-8?Q?LLtsBuaf6U9ILVPC1Cg5gHeNlYsHB9HsEE5nIDaUEPSzs?=
x-ms-exchange-antispam-messagedata-1: vk6oj1FsrSLT8g==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DRo3ufVEDjhyejLWZrDRagi46pg3xR3oC/ndUwVg+/R3I1k3sd4SUpIkA+hvF0qJz1LZsrBwAFE3RwU+cFV/NRlwFV87l9tx1LUtS6ztWjtud4vSA8Ji9FL7FI2LjTbQgQfsvuP9O7UdwDZfGV1+ZIA/vzlePQLLvxIn4XM4XP5IW/v7DWncnNg8Ciw3HF9nOQ5nGoMvY4ztGZjemjj9YlHR+5Fnddpu7K/MuDxd7CR7LnZSyTHHobM9V4qURaFDhmBZ+hAhpBr3lVxSGrx/3eeXrLJVLlSQNhfXh1FXJur/D/u21EAOWeYEILM3P2SunanDSB/2G8G+7xAb4ks/Ig==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3a4ca3a-f404-46ab-46ff-08de8145326e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 21:12:13.1381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G9kS3Z/JGLTYK7MV2+Sc39OrTMi7ffhVi6k4dcWKk9k+7ziegiu/1MpxihlSeRPJyfZUh/4ZUBbtqMMlR+/j8GtYcv6jA0XKS2XeLy5CV1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8713
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,gitlab.freedesktop.org:url];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F12B728A103
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJv
dW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkgSMO2Z2FuZGVy
DQpTZW50OiBGcmlkYXksIE1hcmNoIDEzLCAyMDI2IDU6MjIgQU0NClRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBk
cmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NClN1YmplY3Q6IFtQQVRDSCAyLzJdIGRybS9pOTE1L3BzcjogRGlz
YWJsZSBQYW5lbCBSZXBsYXkgb24gRFBfRFBDRF9RVUlSS19OT19QQU5FTF9SRVBMQVkgcXVpcmsN
Cj4gDQo+IERvIG5vdCBkZXRlY3QgUGFuZWwgUmVwbGF5IHN1cHBvcnQgaWYgRFBfRFBDRF9RVUlS
S19OT19QQU5FTF9SRVBMQVkgaXMgc2V0DQo+IGZvciBwYW5lbC4NCj4gDQo+IENsb3NlczogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1ZXMvNzUyMQ0K
PiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCg0KTWFrZXMgc2Vuc2UgdG8gbWUuDQpSZXZpZXdlZC1ieTogSm9uYXRoYW4gQ2F2aXR0IDxq
b25hdGhhbi5jYXZpdHRAaW50ZWwuY29tPg0KLUpvbmF0aGFuIENhdml0dA0KDQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDYgKysrKysrDQo+ICAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNTA0MWE1YTEzOGQxLi5hNjJlMGJkMTBmMzkg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAt
NjA5LDYgKzYwOSwxMiBAQCBzdGF0aWMgdm9pZCBfcGFuZWxfcmVwbGF5X2luaXRfZHBjZChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3QgaW50ZWxfY29ubg0KPiAgCWlmIChpbnRlbF9k
cC0+bXN0X2RldGVjdCA9PSBEUk1fRFBfTVNUKQ0KPiAgCQlyZXR1cm47DQo+ICANCj4gKwlpZiAo
ZHJtX2RwX2hhc19xdWlyaygmaW50ZWxfZHAtPmRlc2MsIERQX0RQQ0RfUVVJUktfTk9fUEFORUxf
UkVQTEFZKSkgew0KPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICsJCQkgICAgIlBh
bmVsIFJlcGxheSBzdXBwb3J0IG5vdCBjdXJyZW50bHkgYXZhaWxhYmxlIGZvciB0aGlzIHBhbmVs
XG4iKTsNCj4gKwkJcmV0dXJuOw0KPiArCX0NCj4gKw0KPiAgCXJldCA9IGRybV9kcF9kcGNkX3Jl
YWRfZGF0YSgmaW50ZWxfZHAtPmF1eCwgRFBfUEFORUxfUkVQTEFZX0NBUF9TVVBQT1JULA0KPiAg
CQkJCSAgICAmY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBsYXlfY2Fwcy5kcGNkLA0KPiAgCQkJCSAg
ICBzaXplb2YoY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBsYXlfY2Fwcy5kcGNkKSk7DQo+IC0tIA0K
PiAyLjQzLjANCj4gDQo+IA0K
