Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KhjLXP03WmMlQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 10:01:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9848A3F6DA7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 10:01:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2482B10E594;
	Tue, 14 Apr 2026 08:01:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O6cH8yR8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B81710E594
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2026 08:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776153700; x=1807689700;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9qc+4Y576QJgtQYE8UMlLf7sPJGocpi8CElvlCHJAnw=;
 b=O6cH8yR8GfD+UU8hQOeZj3HOp3Cay4DahcgQb4THKTBshIkip+pWWbOL
 DnpSbZ5Go7OVTWMrzMt93t9ua1dzcisx2Q1gvcxd1P9rJiBPrTzgyYxzu
 njSmuTQ4+rSc3PrIKK059kGK2SYehNqtXHtfE5/2ayGdOD9Hv/UF1S0bQ
 ti2dn/uh9y0E5cmnlZpgig0nlWfIn0HppXycyGvFXsSpxkpJFgBEizACW
 Lua6+pOP1qMhBN9BrwQZ6a9rUnWueO7Dzj8V7QDrSUgfoT9kMOYEPz1UN
 HgOhJ1NZ1G6Bf2aSOAKXtuGcU6QwMyCzLBnunSR7fNzt0GlWZgWPo1pY7 w==;
X-CSE-ConnectionGUID: 4qtL5htqTi+C6sp2JL/jqQ==
X-CSE-MsgGUID: PWZsXL+cRs62ucOBWg+qvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="76810512"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76810512"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 01:01:36 -0700
X-CSE-ConnectionGUID: Km5pRof5SLKI1Qw7iaRdWQ==
X-CSE-MsgGUID: FFFMqsUATdm2g6wftQuPBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="253240238"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 01:01:36 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 01:01:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 01:01:35 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 01:01:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N+aK6nuZ+ZhbKGEV0eqmDoGrOlVj+/XxEW3d7eZKLSe+Mrml2GQ9jq6AMi3mv/8Bh3/CB08p8exDICVM7JnYIKg+Z99uxRjn0CAITzx9RHSxNS9SjTyCXxS3vmSz0/IDMKlEzAAs87O8LTrXF3r6ZzKLO9qSjMYyZwOkmpt7nMxqU0TeeQwpEOzkXjoC3+k/1xxTKgiJMIQrHJZROwlJAEN44UFY5GxT5ce2+LfT9icMCjtBQHSPS76jwpjfk9uMlAWJibQozZG/Nkbtk/lAGnGHroh3OCzv/sf5ApYtVTXLIohEMc+x3z8479K7j5vD/JHM6+pOaZ3wfnnSV9WlIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9qc+4Y576QJgtQYE8UMlLf7sPJGocpi8CElvlCHJAnw=;
 b=jKMusPjGDPMfzZoCFddkO90kIeAUiR+JyHEEef2nJskurklNkgRswBcNknrbMVAdMMTGfvR1n1C6s6F933mUlimmN8M/PGDWX4sKp665NclSF0qwkmozkOtlRUP2ogXGWrvLbdFkhtPG6rIIZMrGxlls5Bynwski5sqrGvp49ImUx96WfaF5pgh60QYZTsyCgjTgtJ/OG4Rx67WnAr1r4oYMxbh1IkuuNpFEBYyY2GqG/78oWt20022J+/wUVH5NtUv4PfMRLd7B4xPWJ8HCJHGuX9KJGu8BHIlXXrgRuHOzsNhkMQOBKpoXBDIh3S5YbB3AVYuTEv4Euahbd5R1+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH7PR11MB8010.namprd11.prod.outlook.com (2603:10b6:510:249::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Tue, 14 Apr
 2026 08:01:30 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9791.032; Tue, 14 Apr 2026
 08:01:30 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v2 07/10] drm/i915/scaler: unloop scaler readout that is
 run once
Thread-Topic: [PATCH v2 07/10] drm/i915/scaler: unloop scaler readout that is
 run once
Thread-Index: AQHcydshQj+pSJzh80+utyxb2F4USbXeNU3A
Date: Tue, 14 Apr 2026 08:01:30 +0000
Message-ID: <IA1PR11MB64676351F58BB25EA0BAD5B4E3252@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260411174526.2850179-1-michal.grzelak@intel.com>
 <20260411174526.2850179-8-michal.grzelak@intel.com>
In-Reply-To: <20260411174526.2850179-8-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH7PR11MB8010:EE_
x-ms-office365-filtering-correlation-id: c463ad5d-4725-4dff-6ea3-08de99fc097c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: sKvD3CldFdgrqXoYBnTxCFMWBOgtN4Bj7ic0pMjX+sYth67X46jeFrWFZAKy6HczFEZYufhFkuGWjNFMeloHAKo7ON8t47JCs+1EM0302R9asmQNgZtNAQm36XYjNuWsxEksm/ePqO357Hqo3Vof4+ovfATCk5JcyxNtpFhGydU7GtUKA0Pl6+FfBkg4682B5qj6QvVkhqkaGfXEwIyuq3rzsj9Y0tGv4c84yl4KUI/b80k8m4QtZgfzpgw15MzcYLWcuwifSiwV57tHZeDeAd85BaphKR1okJDQKFRa08hWTxr45V1tj+Lml386u0Bfk8tBNYoG16GF4/O2t/NA+LDhZZ6wa9PskWCad4d2R7XWldekIGczMIpkjOip7D+5vD2lzY3uxB1PAgFsVC/q53KN87pwMsu35THGLyD34iNThOEr0lvpBJzDb6hqj9V3rYLsaUasEOR7UYagTUHqM/YF3YDoqA0lzdoErsBjV69DP17XC7BSeTGEkaI7KrSFe3S2rHJthzNexwO2U9wl7lOA51jak57gvKCuBbmBYn5KhaLdEK/9k6P8DDCBvwQRbzQ4AAs8+Vl8KUCTYg/pdIp68/1ehfXTrBWO2f9iLYCDWFdJrvhdSlMMp7hBnCKjtQWUsrmvsQs39hLwoguyKHL9COxjjRlKHift25FXf0j4L1MegAe03eXa7PwFQz0cxFdt6fnDcvDxIwDsO6EY8vclawmjtG6dTyRPgaAS605loylhYOohDQukKoq+94y0UnNrNew86ebbMgofZxEOrj/wHOokTblrG5La1Cg0fTc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L1hGUVYyUk5FbzB6NUlWRVdrQWFRTzhMenhad3NZbHh6ZkQ0TWVBZXZmRm10?=
 =?utf-8?B?ZDNkRTBqNEdxMEVzeXBVR2pKMjExV0c1SXJ2OFhiTmtrRUkycDl4SEcrTXdV?=
 =?utf-8?B?cXdvSktIQTNBWUpjUm9vSTFaQXJxRmJkWEZKZ05FZjNZWW1vL1JZWDhqcTZu?=
 =?utf-8?B?bm5pZnRWWGowRGVXcExpWUlWaXFnemxuMXNLRTV1Mkw2SDFPRytIMGFSRWtm?=
 =?utf-8?B?eStmTWwxaTIydjkxcm1iUE9xRzNSS0VVZjQzVzN1YnR4OWI0ZE1jWG1YR1o1?=
 =?utf-8?B?ZGVLSFo0TEVQT2lLQzVRREE3MExaMkREUUk5eXhXanQ0TUhKR1ZqZkFvS3RM?=
 =?utf-8?B?NWhlUEFyU0E5YytCbHhvNmtIcm1ONEYzblJqTmhyMS9NbkJlZWN3M0w2U1Rk?=
 =?utf-8?B?Mjhlc0RVY1IyejQyWEQyZWptanltbjVDRVhKZVBGWlZPYUl1R0poLzQwc21x?=
 =?utf-8?B?Tm9tdWV1MUVNUXV4RUVsQi9qZmhWMGxYak9GSDF2TmIveHo3aVBaVjdaYkFU?=
 =?utf-8?B?V3ZBZExmMzFVNFE0QXhjM2w3dUV4Z1lXTi9uM0hZZXpvVXBqQVU2azZKNXRz?=
 =?utf-8?B?U2xSVGJYQlIyTk4vSVltNTRnalM0d2Fkc3E1OTJlSUJMTWtWVzl4RDZJd3I1?=
 =?utf-8?B?OHFwMmhhd0JIZ0ZDNGwyVHFhM0h6NnYrUmJGNzBueVJ3bFpvNVZMek1aTEN3?=
 =?utf-8?B?NDd3disvb2VTOTRlZC9nVzJJRnluZkttU3MwVnM0VUlpYWJyQjRXZjVFZHp3?=
 =?utf-8?B?K2hxaUZQbzR0elg2eUJJckpQNzNNTU8vVWNDU2lnT2ozdjJWUHJOa0lKejdl?=
 =?utf-8?B?azNCOUVzcHhVSFI1aXVCakI0eFN2ZFdCd240Z3Y1TlgrT1UxR0NYaWNJTW9q?=
 =?utf-8?B?elB2b1dETjJOM0pZcmhsbEZBWjZyYk1WS1o2RU5ZZjdpMDQ3eDFWWW5lUCs0?=
 =?utf-8?B?OXBhemlNanVjbmFlNnlONnUxYWlwQ1p4cHV0d2dRUG0vSHU1MS9oYTJ0Tk4x?=
 =?utf-8?B?MGVGaVlncm9PNzFLWDdoVGx1bUVQZlUrd2oyZGlma2EvVU5RVHdOYWJldDRx?=
 =?utf-8?B?Y3lZT3Mxdk03L3V3TlVRVUdXNmFobjk1Z1h6RGNZRmlEL0ZRZFR4Tk9mL1Yw?=
 =?utf-8?B?OWlWay9xNWw2a2s2WWc4aXVua0ZJUFdBbkE2bVhmSElSdG1nSXV4SnVyMkw4?=
 =?utf-8?B?cFIrbStta0s1bnpaaXJmYVZFcUJNTjl5cDFhSS9iNi8vZHRxdVNwNWErMlpW?=
 =?utf-8?B?UUxQNzc0eWZhdnpDM3lwa25hZS8wRXBCdGNmdWVBZlRxOWFIUUtOQTB2M3Za?=
 =?utf-8?B?RlJ5dlZwY0p2Z013amRPdzN4Rko3NmNpY1h4WnRBU1MwTjB0YWNRZ0hqUS9q?=
 =?utf-8?B?Q3VIQzdEbi9yc2NodlBrLzNncEpDNlcrQmJPV2VlSnBPMENvclpHbFpSc3F5?=
 =?utf-8?B?S0tVQmJOTU9OU3N2ak93cXZ3U3c1Z2tXZ3pWYmEwTDArU2F4WkN5RFByUkJO?=
 =?utf-8?B?WVo4d2g5cGdVcmhERmZZdE9ZZEp3cDNhcHVJcUwxOFFReElOQjVtQW5nUlFz?=
 =?utf-8?B?ZTlCV3hzNStSTXFUc3YxenRZRGFtM05HaFduMEV2T3BZZUgxUHFUWmhjanhZ?=
 =?utf-8?B?WHVPOVFoTE50UitnWXA1YjRXMmYvTldJcTZ2cUE5QVdSMkI3cjk3U2xnaEdI?=
 =?utf-8?B?SytvQkkxeUh0WmdKMS9Sckc2Uy9VYWxNRDB1Ky9TL3cxa2ZwQjZtMzBDV0ZQ?=
 =?utf-8?B?cGIrSyt4R1pEVGZmbEFSSWx1RVpZenQwSSs3aHYrTmRyWXh1VUx5VkNQaUo3?=
 =?utf-8?B?cktKMEhiaUM5eEkveWNtVzlJZEJNNytHajV0QmhxOVplZXhqNkZzQ1Zaemly?=
 =?utf-8?B?amcwYjF4T1k4Q1c4QVpLTmxvOW51ajdZL0pScHlyU2lkTjh4RjdwRUtCL3Rl?=
 =?utf-8?B?dzE4MzdwWWxFRzYycWxGbVRMeUJDUENseDhmSzh6dmtEcjNwUWtYK0tYOG44?=
 =?utf-8?B?ZVY4bWxGaEpkVy9oa1ZzR0pjdElGZyswZHhlbHNGK08wRkdOZk5yT2g2S05V?=
 =?utf-8?B?L1ZkbGRiSlA5enlVYXpLK005OU4vZHZXSHJaV3hKNElBVVR5bS9rTytIY1Ew?=
 =?utf-8?B?WDBVc0dUQkZFN3RDMTZIZHRaVm50WGUvQjRweTF3Q3J3MVdjb0JncU15UFpr?=
 =?utf-8?B?VE9Rc2I1QThpbWs2ZUhSUHY3eWFqMmNFT0xhODkwMkJIdVVWVVpZL005NVN4?=
 =?utf-8?B?aTNudG91SUFuVTJIU3lJT01kcCtubHl2K1dIYUUrWE9UdEg5U1dyMlI0UVVX?=
 =?utf-8?B?b1p6dzhnMkNEUzNXc0pFT0dZazQ4SnJVS09JWXgvVmIvWDUyWXhndz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gpvj5wWDfulBm9G0Jmeg7pCVk8Uvs7CsE6SOtqo1RPH/aus+f/kk9/dx1HS66m1kKFGr16K8+kmHeLfFPSHyiRQMVX+LGxELf5iIyLdQ2cFcP5F+6hZb/HKILKOi//F9HzSpOS9ilG4fO4eVTchiQAwy7+gYu3zbRyi4yeQpN+fQn/qlKeY1ZXrYBhpsiHAq5EcFtDLsBBLRPo0SIcoo0Le8gjEIrod/VzsMomK9oFNRU5j8dyHOrLl9ByAMPD1KcH7sGg4QMtXlFjfEl26dT6F08XBI4Y3fbreqOzkgCyzfo6TuhCixooC9bx+msry+Ox+GxzE/FfelFs4uKN2+ew==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c463ad5d-4725-4dff-6ea3-08de99fc097c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 08:01:30.2801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AW9xrguOG8Qv6Mx2Y02CAnsEXvThguuCghLXAdbJWQLAYLRgEkh5DPnyQExM9O9dzfiQAvTfz7yI5STqxVupWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8010
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.grzelak@intel.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	RBL_SEM_FAIL(0.00)[131.252.210.177:query timed out];
	FORGED_SENDER(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RSPAMD_EMAILBL_FAIL(0.00)[michal.grzelak.intel.com:query timed out,intel-gfx.lists.freedesktop.org:query timed out,ville.syrjala.linux.intel.com:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,IA1PR11MB6467.namprd11.prod.outlook.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[intel.com:query timed out];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9848A3F6DA7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR3J6ZWxhaywgTWljaGFs
IDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IFNlbnQ6IFNhdHVyZGF5LCBBcHJpbCAxMSwg
MjAyNiAxMToxNSBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IEdhcmcs
IE5lbWVzYQ0KPiA8bmVtZXNhLmdhcmdAaW50ZWwuY29tPjsgR3J6ZWxhaywgTWljaGFsIDxtaWNo
YWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MiAwNy8xMF0gZHJtL2k5
MTUvc2NhbGVyOiB1bmxvb3Agc2NhbGVyIHJlYWRvdXQgdGhhdCBpcyBydW4NCj4gb25jZQ0KPiAN
Cj4gTW9zdCBvZiB0aGUgbG9vcCdzIGNvZGUgaXMgcnVuIG9uY2UgYmVjYXVzZSBvZiB0aGUgY29u
dGludWUgc3RhdGVtZW50IGF0IGl0J3MNCj4gc3RhcnQgYW5kIGJyZWFrIHN0YXRlbWVudCBhdCBp
dCdzIGVuZC4gS2ljayBpdCBvdXQgb2YgdGhlIGxvb3AuDQo+IA0KPiBDYzogTmVtZXNhIEdhcmcg
PG5lbWVzYS5nYXJnQGludGVsLmNvbT4NCj4gU3VnZ2VzdGVkLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWC
IEdyemVsYWsgPG1pY2hhbC5ncnplbGFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYyB8IDM0ICsrKysrKysrKysrKy0tLS0tLS0t
LS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfc2Nh
bGVyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYw0KPiBp
bmRleCA2ZDkwODBlYzc0Y2UwLi5lNzFkOWMwMzZhMWU3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYw0KPiBAQCAtOTUxLDM2ICs5NTEsMzggQEAgdm9p
ZCBza2xfc2NhbGVyX2dldF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNf
c3RhdGUpDQo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNf
c3RhdGUtPnVhcGkuY3J0Yyk7DQo+ICAJc3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlICpz
Y2FsZXJfc3RhdGUgPSAmY3J0Y19zdGF0ZS0NCj4gPnNjYWxlcl9zdGF0ZTsNCj4gIAlpbnQgc2Nh
bGVyX2lkOw0KPiArCXUzMiBwb3MsIHNpemU7DQo+IA0KPiAgCS8qIGZpbmQgc2NhbGVyIGF0dGFj
aGVkIHRvIHRoaXMgcGlwZSAqLw0KPiAgCWZvciAoc2NhbGVyX2lkID0gMDsgc2NhbGVyX2lkIDwg
Y3J0Yy0+bnVtX3NjYWxlcnM7IHNjYWxlcl9pZCsrKSB7DQo+IC0JCXUzMiBjdGwsIHBvcywgc2l6
ZTsNCj4gKwkJdTMyIGN0bDsNCj4gDQo+ICAJCWN0bCA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwg
U0tMX1BTX0NUUkwoY3J0Yy0+cGlwZSwNCj4gc2NhbGVyX2lkKSk7DQo+ICAJCWlmICgoY3RsICYg
KFBTX1NDQUxFUl9FTiB8IFBTX0JJTkRJTkdfTUFTSykpICE9DQo+IChQU19TQ0FMRVJfRU4gfCBQ
U19CSU5ESU5HX1BJUEUpKQ0KPiAgCQkJY29udGludWU7DQo+IA0KSGkgTWljaGFsLA0KDQpJbiB0
aGlzIHBhdGNoIHlvdSBhcmUga2VlcGluZyBib3RoIGNvbnRpbnVlIGFuZCBicmVhayBzdGF0ZW1l
bnQgYW5kIHRoZW4gaW4gcGF0Y2ggOCB5b3UgYXJlIGludmVydGluZyB0aGUgbG9vcCBzbyBJIGd1
ZXNzIGl0IHdpbGwgYmUgYmV0dGVyIGlmIHdlIGNhbiBzcXVhc2ggdGhlc2UgMiBwYXRjaGVzIHNv
IHdlIHdpbGwgaGF2ZSBhbGwgY2hhbmdlcyBpbiBvbmUgcGxhY2UgcmVsYXRlZCB0byB0aGlzIGZ1
bmN0aW9uLiBXaGF0IGRvIHlvdSB0aGluay4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KTmVtZXNh
DQoNCj4gLQkJaWYgKHNjYWxlcl9oYXNfY2FzZihkaXNwbGF5LCBzY2FsZXJfaWQpKQ0KPiAtCQkJ
aW50ZWxfY2FzZl9zaGFycG5lc3NfZ2V0X2NvbmZpZyhjcnRjX3N0YXRlKTsNCj4gLQ0KPiAtCQlj
cnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkID0gdHJ1ZTsNCj4gLQ0KPiAtCQlwb3MgPSBpbnRl
bF9kZV9yZWFkKGRpc3BsYXksIFNLTF9QU19XSU5fUE9TKGNydGMtPnBpcGUsDQo+IHNjYWxlcl9p
ZCkpOw0KPiAtCQlzaXplID0gaW50ZWxfZGVfcmVhZChkaXNwbGF5LCBTS0xfUFNfV0lOX1NaKGNy
dGMtPnBpcGUsDQo+IHNjYWxlcl9pZCkpOw0KPiAtDQo+IC0JCWRybV9yZWN0X2luaXQoJmNydGNf
c3RhdGUtPnBjaF9wZml0LmRzdCwNCj4gLQkJCSAgICAgIFJFR19GSUVMRF9HRVQoUFNfV0lOX1hQ
T1NfTUFTSywgcG9zKSwNCj4gLQkJCSAgICAgIFJFR19GSUVMRF9HRVQoUFNfV0lOX1lQT1NfTUFT
SywgcG9zKSwNCj4gLQkJCSAgICAgIFJFR19GSUVMRF9HRVQoUFNfV0lOX1hTSVpFX01BU0ssIHNp
emUpLA0KPiAtCQkJICAgICAgUkVHX0ZJRUxEX0dFVChQU19XSU5fWVNJWkVfTUFTSywgc2l6ZSkp
Ow0KPiAtDQo+IC0JCXNjYWxlcl9zdGF0ZS0+c2NhbGVyc1tzY2FsZXJfaWRdLmluX3VzZSA9IHRy
dWU7DQo+ICAJCWJyZWFrOw0KPiAgCX0NCj4gDQo+ICAJaWYgKHNjYWxlcl9pZCA9PSBjcnRjLT5u
dW1fc2NhbGVycykNCj4gIAkJcmV0dXJuOw0KPiANCj4gKwlpZiAoc2NhbGVyX2hhc19jYXNmKGRp
c3BsYXksIHNjYWxlcl9pZCkpDQo+ICsJCWludGVsX2Nhc2Zfc2hhcnBuZXNzX2dldF9jb25maWco
Y3J0Y19zdGF0ZSk7DQo+ICsNCj4gKwljcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkID0gdHJ1
ZTsNCj4gKw0KPiArCXBvcyA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwgU0tMX1BTX1dJTl9QT1Mo
Y3J0Yy0+cGlwZSwgc2NhbGVyX2lkKSk7DQo+ICsJc2l6ZSA9IGludGVsX2RlX3JlYWQoZGlzcGxh
eSwgU0tMX1BTX1dJTl9TWihjcnRjLT5waXBlLCBzY2FsZXJfaWQpKTsNCj4gKw0KPiArCWRybV9y
ZWN0X2luaXQoJmNydGNfc3RhdGUtPnBjaF9wZml0LmRzdCwNCj4gKwkJICAgICAgUkVHX0ZJRUxE
X0dFVChQU19XSU5fWFBPU19NQVNLLCBwb3MpLA0KPiArCQkgICAgICBSRUdfRklFTERfR0VUKFBT
X1dJTl9ZUE9TX01BU0ssIHBvcyksDQo+ICsJCSAgICAgIFJFR19GSUVMRF9HRVQoUFNfV0lOX1hT
SVpFX01BU0ssIHNpemUpLA0KPiArCQkgICAgICBSRUdfRklFTERfR0VUKFBTX1dJTl9ZU0laRV9N
QVNLLCBzaXplKSk7DQo+ICsNCj4gKwlzY2FsZXJfc3RhdGUtPnNjYWxlcnNbc2NhbGVyX2lkXS5p
bl91c2UgPSB0cnVlOw0KPiArDQo+ICAJc2NhbGVyX3N0YXRlLT5zY2FsZXJfaWQgPSBzY2FsZXJf
aWQ7DQo+ICAJaWYgKHNjYWxlcl9pZCA+PSAwKQ0KPiAgCQlzY2FsZXJfc3RhdGUtPnNjYWxlcl91
c2VycyB8PSAoMSA8PCBTS0xfQ1JUQ19JTkRFWCk7DQo+IC0tDQo+IDIuNDUuMg0KDQo=
