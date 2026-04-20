Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MI3eBCzD5WnOnwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 08:09:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C13427070
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 08:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8888310E0F4;
	Mon, 20 Apr 2026 06:09:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FOMtbYkI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5818810E43E;
 Mon, 20 Apr 2026 06:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776665385; x=1808201385;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t5G35Yq+dxa2uQJU6vDn9xaM8lYOAyCWa32LvPdy1rQ=;
 b=FOMtbYkIB6d6/l++14QqEj1utxCIR/VgYObj4k9iultb3UcPNgH430nN
 vtZr8cwoVcGqpgKygu7PbZQXwi2EtoqgRTCqtPEToBbTHsq/qQfbDc/dT
 9jVPHeEzuSBxOump7TqJk49dzfc3AfopsolmbsQXRFgQVnMdThm5csIVC
 v92X2lHP/9hnfMsW0fKXDILz4EB8HjPExv3fvFqtzRhA+I7kTvtK0DDup
 Ea+U/yAr6UO+qfou7Agbe0TQWUsu3XUSbZdVZb4AeSPinWE+v74jpdtHk
 rQsNHZWUajGlDnlCuv4WA1NppyOHAYe2OGr5uXsYttj/TMUuPQ1ZlrFpt w==;
X-CSE-ConnectionGUID: JwCWL6vLQcSqmtRK62jT8g==
X-CSE-MsgGUID: DIScsYfdQX2+lEo9PFQd4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77449856"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="77449856"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2026 23:09:41 -0700
X-CSE-ConnectionGUID: i8fYW/G1SfewUP9s/yrnKA==
X-CSE-MsgGUID: 96SdTutRRlOp9EbXl3llTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="226991561"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2026 23:09:39 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 19 Apr 2026 23:09:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 19 Apr 2026 23:09:37 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 19 Apr 2026 23:09:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PX0YpCsshyUyQVPgUInfXzRkkiucM89tRw6Sijzs8BxBLB1q/9QY9FbTEC7dV+/ocReyioVFDfzbK6kwmiEGIMGmkT8SVbzG9ODxlHPwo2Z4lhjIhpZH24D149I1Q67hgt+kUMFtOQaZlzdIZrujUckDDNcqB6nTe5DG5hfEwj+de6GYwt47inr4QEIp0nVfVAyK284WFQkT0CnHJFIN6L1vmBDoH6EVUAfNOat0t1H6dg6gBiB4d/XLsI4scd8BCw6XkRJ1BKM2bkyASOBszSk/GuQf5Oto3csbDJVK9xmFiVdt04usrsJps34YZNl6wsPQKF5zjj0sUfmWPHiG2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t5G35Yq+dxa2uQJU6vDn9xaM8lYOAyCWa32LvPdy1rQ=;
 b=A1mv7mCdhWohUIMOEOTlieDG2sAASBFgOosmFf/CIdqVDk4oEmRQX4zgekmuBs0yt7rIMs6kFv/nU9jDg6l80njkY8FHVan7UaQ1WUn7B4SgTavZsZEc5UdAt8JRMttI/cQKIzhYWu9Iw9HMEqu302dR817FJCDra3Ze23b7phuf6wA6TnJRnbdT2SVNrqmEmkJBJuxkAVa7OirHlYrYn7VYdrfBDu06T4lNbbao5DVn1pGAlIy93yeu615ZBRpY6MXwMshmCM83mAQ8KPmerH90AsnbjbJ3h72S/HEH9WMZ8N7DELUag8hEf4D1BMGgnXpmxBUOp3I+eFXUNs92WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6312.namprd11.prod.outlook.com (2603:10b6:8:a5::11) by
 DS0PR11MB7802.namprd11.prod.outlook.com (2603:10b6:8:de::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.15; Mon, 20 Apr 2026 06:09:33 +0000
Received: from DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::9d51:565a:7572:5318]) by DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::9d51:565a:7572:5318%5]) with mapi id 15.20.9846.014; Mon, 20 Apr 2026
 06:09:33 +0000
From: "B, Jeevan" <jeevan.b@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 "xaver.hugl@kde.org" <xaver.hugl@kde.org>, "harry.wentland@amd.com"
 <harry.wentland@amd.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "louis.chauvet@bootlin.com" <louis.chauvet@bootlin.com>, "Kumar, Naveen1"
 <naveen1.kumar@intel.com>, "Yella, Ramya Krishna"
 <ramya.krishna.yella@intel.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH v10 0/7] User readable error codes on atomic_ioctl failure
Thread-Topic: [PATCH v10 0/7] User readable error codes on atomic_ioctl failure
Thread-Index: AQHcpKVJmbHRFn/eF0ar+0UAZKsOuLWQDzCAgFe+0lA=
Date: Mon, 20 Apr 2026 06:09:33 +0000
Message-ID: <DM4PR11MB6312A6B7081CCEA5210D02B0902F2@DM4PR11MB6312.namprd11.prod.outlook.com>
References: <20260223-atomic-v10-0-f59c8def2e70@intel.com>
 <1a4462b8-def9-4474-8382-6e99b7c8276d@intel.com>
In-Reply-To: <1a4462b8-def9-4474-8382-6e99b7c8276d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6312:EE_|DS0PR11MB7802:EE_
x-ms-office365-filtering-correlation-id: b57039f1-86ee-4f07-2084-08de9ea3643c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021|921020|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: CeGqsHQ+ZVVuPizUFSgrfaUqrgi/T8OEyXXnz8t+IXmOJ/C3e9w8aMGsM0GiQF2I/agUEx4Txdw5nimpf5AU70F1gFFx9od0d8WD+GlFBUOTpptawZR7ljLx7Gq3VUoOzKfoqE+T0OByNCCXqTM/cM3JbCntwq4bRUot+FpHZ3I5p8cB37Wli2U78RbUDYxDXU27XJf8LEgn0CCYzM999Hpf0yVaTHaSnAIM2BWkzMsmGUCl+MOY1LVCfsPge7b5/bI5kPCdFwQqQGGQxn7dhEV5AJjSBCka9yhLWyFRsSKoL2Z5968M/Za3v4/j+jIW2WhSRZcfUbGqIANbRkoN6JO7T3hx1cRDxMwtgZMuw58D9iKJsZ1jEzh4aSR3+PIk8RNMz1PlQ+lI+or5Oib47ilywdXqC1XzF94KCEtxEGIh41jOns//lyTIEPUR+h45gtSjKqOmwNL82+z6kUdwM9P8bsJFYJ3iVyiXBR6hXpU3SwtUknPHTc14YWz1xuadbFKkHseH29UOwuCVVMftmzu1hTR0Bf/2fHZ4zOvZVyGRmBwAe/1GWmKdyybpDfOBUPSnRA2wMuIGj5oE1JrcwpGsiqrvvVOm5SOuR153BL3OZ2cRBKL27K2a64xNGxLlXf5J6PWgGEUnpUPoU8Ph4x38Qr2c/HSx5LYIpFTH7mD+nIlicJEmfPkrjNeCiAqd06Cj1HnF4F7x3W8czUkZgCXpYsf+s2XsGuua4B3iXdqSduJOvZcXIRewKxedvN+k
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6312.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021)(921020)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eGQxdDN0Zy9qRXZrWGJlTzBRbFF2ZDF1SFBTYkQ2M0JhcWJrRWl4bTJCV3JV?=
 =?utf-8?B?azB6UFpWWmZ0VlNTNDl1WU4rKzQza1JCR0QzZ1dPMEU2T2Q5UWFXazlLMmtv?=
 =?utf-8?B?dDNGMmtMQVM2VFVNaHZRSDYrRlVYOW82TDErdzdjSS9xUlF2dHZjN1VpNTFO?=
 =?utf-8?B?S3EzSDNoaWpBZVlkSWdaRnpHVEU2UkE3aWhUQmIwemlzanpXOXVrSzlpVW5j?=
 =?utf-8?B?eFBTZ01aUlNVQUZ6cUJlaXNiZkN3bEZaM2EzT1M1UXZFVFJuYlRWUk9VL0dC?=
 =?utf-8?B?aWx1SnEyVk04UjRiOUJpR2dTL0lzemJidWMxa3h0QjFsbTZ3U0tNdUx2eWkx?=
 =?utf-8?B?WHlVdTlwZHZ0V0RXUUM2YTRHRWlOT2JJWWFrUmYwb1dvL0lkVGhEY2k1bkxK?=
 =?utf-8?B?aTBlVTFITkpLcVhGeGNLS1FPelFPazVZazJpR1RsaVM2bUZaZll0cGZ5VDhB?=
 =?utf-8?B?MGpJUldTQlQwYTZ1ZTNNWU9PUUlJQjc3eWc0aVFRbmNDZ3o0alc2SWlzNHFr?=
 =?utf-8?B?VDRkVjBVQVFxaTQ3L0l5Q0hpbmY2MVcxYzJXU1hNS2dpNnpMYXpkSzl4LzZ5?=
 =?utf-8?B?THY0Yk5CdlpDdk05WXdhUHMxaW5HQmRKS3d0SDY0bDkva0xkSnI2QzRiWHE2?=
 =?utf-8?B?Q1E5ank5Q0REVTkzNnRRanNEU1B1NEJnYm9iUmVQV0VGNElDZFF2RnNZcTh0?=
 =?utf-8?B?ck5lNEorN2lSUWZ2MmUrSmFsOHVXenV0cHovRTVNYUt3emJkc2tIcXlxVkJD?=
 =?utf-8?B?TGlwTDBjcjRHR1RWbUVpdndIU2ZnM2RKTnp1MytnNzNiVWlJUS9YTVVaSGUx?=
 =?utf-8?B?bUwzUGwrb0VlRlJ0OWc0VHYzM1dmWmNqd1h3cndycmgwdDdBUDlVbzNZOVo5?=
 =?utf-8?B?L0EvSnRHd01veVBMSnJtSDNTT3ZZQnEyOVN3Q0VmZGhoV1NHdEFPck5IVWxD?=
 =?utf-8?B?MjhCMUh1cWlGNHRYbnZEVEh4YXNTSnpWdmNrMEo1MzRocGRtaittZGJMeVls?=
 =?utf-8?B?dWVzTFdCeHdrY2ZNMVRrS1Blcy9OS0J5RS9vMW1GLzVpM0dyRExCcHhKYnZI?=
 =?utf-8?B?bGw1d2QvbTBKWUpuSmxWYXQ3RE44L0psRXNoZ1R4NE9zM2lyTEtnV1Q3b3Zx?=
 =?utf-8?B?R3JyeE11VnF3WUc0MkZ2RjJNWGkwenVHM0JKdmd5MlhDdmZIc0dSc2dUTGE3?=
 =?utf-8?B?WUVLaUpRb2FLNHJSMjZ1WVVhZkdTTDRhVC9zNG1mVXBSYXZOSWhKOVRQT1dU?=
 =?utf-8?B?N0pmWWRIclRINWtoQU55cWFpYWswSWhiNzZHZ3pEL1NoRWhWYXRYNTNYRlNx?=
 =?utf-8?B?NzUrYjdhZ3QyOEJkUmpiV2g4NjVqUnZvb0IxQ1VKVjE0eFdzYkJtVERJSE93?=
 =?utf-8?B?WWxUemw3azAyNGJ3VXZNMGE0S0hOZnpmT2ZPTW01eGdzRHh1bXA4OE5ITXZK?=
 =?utf-8?B?NkRLbnFlek1kVGVOS05xVVF6aENpQ25VYk5pdm44amljbk4ybC9RcXhOdUpj?=
 =?utf-8?B?TGhKQWxxalVDNlQyNkRybnhSYkYzRkl6cXZGalduR1F0aUNoOUhHY1c5dWo2?=
 =?utf-8?B?NTNRb1UrUDN6MllYcDVGN1V3a3JCMWttVk9SS0w4WDZhMEZnLzZKZWRLSE9F?=
 =?utf-8?B?OU0yRVlmUW5HL1l6NFdOSGR5Si94czlKK01TbUc1Myt2NGUwWnFicVB1ZmVE?=
 =?utf-8?B?Zm0yYk1jYTc3RGh4VFIwV2x5MjVYMnQxdW0rRHFRbTdwZXNZU0tYcDk5SjFF?=
 =?utf-8?B?cG9yQU83bFVVNzBNOVpVMCtxMkdsbm5ldURUdXBMV3J1bGtURWJMNnhhZ2VM?=
 =?utf-8?B?YVQxN3hNUWhZUWdRV01vU2Nvb3NGQTViVUxHdXBVM2JEMDVBcHdtSzN0c3BB?=
 =?utf-8?B?a1M4Nmk0aHFmd1dZM0NaZ2RibkdYSmpjQ3RhRjFNZkdVUmVhVWFRZHcreWtp?=
 =?utf-8?B?QnpmY0FKUnY2Q0VuWXdhZ2FvbmgwTndSWC94MUk0TkM5QnBpSDNaZDFVcU9v?=
 =?utf-8?B?RmorR2xTTmtHdktCR05JOURSTGtpUlBLWWNvbldFOWtmNHljVUh4QWRCR3k5?=
 =?utf-8?B?b0JEc0U4b3kxcUxnNmtZbDlaZlhNNHJxZ1lPa2w1M3Ixa1Q4U1lwNDQrUTFV?=
 =?utf-8?B?MG9YbHo4RVA1OW1mbnB0cCt1OC8zVUNZempjNERmR1F3VjRxdjZnQVd2RCtr?=
 =?utf-8?B?QlMxYlhmUmhxK0srbEZpMXJRb2w2cHMvUHlUTWNlbUxNTW9vNjN6ZXFsWjlG?=
 =?utf-8?B?M1pYcFp2bC9GdHcwU015aEszQWJvdS9NWTNVc0UwSTF3UUp6V2E4dTJDdVls?=
 =?utf-8?Q?8hYfvoQuBl4yF4a3UB?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hUzsJYciglgnC8IcqjgqSdqoV//0fQmqnVNVnuiJid6UaIRSWLsMMswSj9G0kCCyonkYgd1Y2Fwb3+Xg1QEL0YArQNe9Qx1x2bxHm4+cJRW5xWfhyr0vd2j7N/PLhFRwQwl/GSCNTEccK5izp4m0JAsoTQIkH9nfhs7Q91lt8pDkZxW4M1Guw8mwv69sbEJvaTUnMuFmegizy9ksscyNHT/L8NL0e1GNooG5ZjBF8MXlkTYulg72EJeStMcprpRD6QcQ9Thx7nSghsZTkA5+DTuze+heILkJAyIJ3nT2trqrlPuR5HzZhUsKBQn4MrzR36O9CPss9+qNW18ndsXb/A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6312.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b57039f1-86ee-4f07-2084-08de9ea3643c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2026 06:09:33.1135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q5hGHnB6wvM+HNACAn0c6yLmI34g19OGRBKMxzPIRg4eIOER15UPx66t9JS7tYXwlYM4TpSg1v9CPa+yxme38Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7802
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
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ursulin.net,kde.org,amd.com,bootlin.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jeevan.b@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 24C13427070
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgQXJ1biwgDQoNCkkgdGVzdGVkIG15IElHVCBhZ2FpbnN0IHlvdXIgdjkga2VybmVsIHBhdGNo
ZXMuIA0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNjQ2MTMvDQoz
IEVycm9ycyBoYW5kbGluZyBhcmUgd29ya2luZyB3aGljaCBhcmUgOiANCkRSTV9NT0RFX0FUT01J
Q19JTlZBTElEX0FQSV9VU0FHRQ0KRFJNX01PREVfQVRPTUlDX05FRURfRlVMTF9NT0RFU0VUDQpE
Uk1fTU9ERV9BVE9NSUNfQVNZTkNfUFJPUF9DSEFOR0VEDQoNClRoZSBhYm92ZSBhcmUgd29ya2lu
ZyBmaW5lLiANCkFuZCBCYW5kd2lkdGggcmVsYXRlZCBlcnJvcnMgYXJlIG5vdCB3b3JraW5nLiAN
CldoaWNoIHlvdSBjb25maXJtZWQgYXJlIHlldCB0byBpbXBsZW1lbnRlZC4gICANCg0KV2l0aCB0
aGVzZSBmaW5kaW5ncywgDQpUZXN0ZWQtYnk6IEplZXZhbiBCIDxqZWV2YW4uYkBpbnRlbC5jb20+
DQoNClRoYW5rcyANCkplZXZhbiBCIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
IEZyb206IGRyaS1kZXZlbCA8ZHJpLWRldmVsLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
PiBPbiBCZWhhbGYgT2YgTXVydGh5LA0KPiBBcnVuIFINCj4gU2VudDogTW9uZGF5LCBGZWJydWFy
eSAyMywgMjAyNiAzOjM4IFBNDQo+IFRvOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPjsgTWF4aW1lIFJpcGFyZA0KPiA8bXJpcGFyZEBrZXJuZWwu
b3JnPjsgVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+OyBEYXZpZA0KPiBB
aXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPjsgU2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNo
PjsgSmFuaSBOaWt1bGENCj4gPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT47IFZpdmksIFJv
ZHJpZ28gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+OyBKb29uYXMNCj4gTGFodGluZW4gPGpvb25h
cy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+OyBUdnJ0a28gVXJzdWxpbg0KPiA8dHVyc3VsaW5A
dXJzdWxpbi5uZXQ+OyB4YXZlci5odWdsQGtkZS5vcmc7IGhhcnJ5LndlbnRsYW5kQGFtZC5jb207
IFNoYW5rYXIsDQo+IFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgbG91aXMuY2hhdXZldEBi
b290bGluLmNvbTsgS3VtYXIsIE5hdmVlbjENCj4gPG5hdmVlbjEua3VtYXJAaW50ZWwuY29tPjsg
WWVsbGEsIFJhbXlhIEtyaXNobmENCj4gPHJhbXlhLmtyaXNobmEueWVsbGFAaW50ZWwuY29tPg0K
PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwtDQo+IHhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgS2FuZHBh
bCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENI
IHYxMCAwLzddIFVzZXIgcmVhZGFibGUgZXJyb3IgY29kZXMgb24gYXRvbWljX2lvY3RsIGZhaWx1
cmUNCj4gDQo+IEFueSBvdGhlciBjb21tZW50cy9mZWVkYmFjayBvbiB0aGlzPw0KPiANCj4gVGhh
bmtzIGFuZCBSZWdhcmRzLA0KPiBBcnVuIFIgTXVydGh5DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0N
Cj4gDQo+IE9uIDIzLTAyLTIwMjYgMTQ6NDUsIEFydW4gUiBNdXJ0aHkgd3JvdGU6DQo+ID4gRURJ
VE1FOiBJbXBvcnRlZCBmcm9tIGYyMDI2MDIxMC1hdG9taWMtdjktNS01MjVjODhmZDI0MDJAaW50
ZWwuY29tDQo+ID4gICAgICAgICAgUGxlYXNlIHJldmlldyBiZWZvcmUgc2VuZGluZy4NCj4gPg0K
PiA+IFRoZSBzZXJpZXMgZm9jdXNlcyBvbiBwcm92aWRpbmcgYSB1c2VyIHJlYWRhYmxlIGVycm9y
IHZhbHVlIG9uIGENCj4gPiBmYWlsdXJlIGluIGRybV9hdG9taWNfaW9jdGwoKS4gVXN1YWxseSAt
RUlOVkFMIGlzIHJldHVybmVkIGluIG1vc3Qgb2YNCj4gPiB0aGUgZXJyb3IgY2FzZXMgYW5kIGl0
IGlzIGRpZmZpY3VsdCBmb3IgdGhlIHVzZXIgdG8gZGVjb2RlIHRoZSBlcnJvcg0KPiA+IGFuZCBn
ZXQgdG8ga25vdyB0aGUgcmVhbCBjYXVzZSBmb3IgdGhlIGVycm9yLiBJZiB1c2VyIGdldHMgdG8g
a25vdyB0aGUNCj4gPiByZWFzb24gZm9yIHRoZSBlcnJvciB0aGVuIGNvcnJlY3RpdmUgbWVhc3Vy
ZW1lbnRzIGNhbiBiZSB0YWtlbiB1cC4NCj4gPg0KPiA+IFVzZXIgd2lsbCBoYXZlIHRvIGNoZWNr
IGZvciB0aGUgY2FwYWJpbGl0eQ0KPiA+IERSTV9DQVBfQVRPTUlDX0VSUk9SX1JFUE9SVElORyBi
ZWZvcmUgdXNpbmcgdGhpcyBmZWF0dXJlIHNvIGFzIHRvDQo+ID4gZW5zdXJlIHRoYXQgdGhlIGRy
aXZlciBzdXBwb3J0cyBmYWlsdXJlIHJlcG9ydGluZy4NCj4gPg0KPiA+IFRPRE86IGRyaXZlciBz
cGVjaWZpYyBlcnJvciBjb2RlcyBhcmUgdG8gYmUgYWRkZWQgYW5kIHdpbGwgYmUgZG9uZSBpbg0K
PiA+IHRoZSBmb2xsb3ctdXAgcGF0Y2hlcy4NCj4gPg0KPiA+IFRPRE86IE9uY2UgdGhlIHNlcmll
cyBpcyBtZXJnZWQgdGhlIGVsZW1lbnQgJ3Jlc2VydmVkJyB1c2VkIGZvcg0KPiA+IHNlbmRpbmcg
dGhlIGZhaWx1cmUgY29kZSBpbiBzdHJ1Y3QgZHJtX21vZGVfYXRvbWljIGlzIHRvIGNoYW5nZWQg
dG8gZXJyX2NvZGUuDQo+ID4NCj4gPiBUaGUgSUdUIHJlbGF0ZWQgY2hhbmdlcyBhcmUgcHVzaGVk
IGZvciByZXZpZXcgQA0KPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvMTUzMzMwLw0KPiA+DQo+ID4gW1JGQ10gY2hhbmdlcyBmb3IgbGliZHJtIHB1c2hlZCBmb3Ig
cmV2aWV3IEANCj4gPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9saWJkcm0v
LS9tZXJnZV9yZXF1ZXN0cy80NTANCj4gPg0KPiA+ICAgICAgVG86IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+ID4gICAgICBUbzogc3VyYWou
a2FuZHBhbEBpbnRlbC5jb20+DQo+ID4gICAgICBUbzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBr
ZXJuZWwub3JnPg0KPiA+ICAgICAgVG86IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBz
dXNlLmRlPg0KPiA+ICAgICAgVG86IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQo+
ID4gICAgICBUbzogU2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0KPiA+ICAgICAgVG86
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gICAgICBUbzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+ICAgICAgVG86IEpvb25h
cyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4NCj4gPiAgICAgIFRv
OiBUdnJ0a28gVXJzdWxpbiA8dHVyc3VsaW5AdXJzdWxpbi5uZXQ+DQo+ID4gICAgICBUbzogeGF2
ZXIuaHVnbEBrZGUub3JnDQo+ID4gICAgICBUbzogaGFycnkud2VudGxhbmRAYW1kLmNvbQ0KPiA+
ICAgICAgVG86IHVtYS5zaGFua2FyQGludGVsLmNvbQ0KPiA+ICAgICAgVG86IGxvdWlzLmNoYXV2
ZXRAYm9vdGxpbi5jb20NCj4gPiAgICAgIFRvOiBuYXZlZW4xLmt1bWFyQGludGVsLmNvbQ0KPiA+
ICAgICAgVG86IHJhbXlhLmtyaXNobmEueWVsbGFAaW50ZWwuY29tDQo+ID4gICAgICBDYzogZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ICAgICAgQ2M6IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gPiAgICAgIENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPiAgICAgIFNpZ25lZC1vZmYtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0
aHlAaW50ZWwuY29tPg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogQXJ1biBSIE11cnRoeSA8YXJ1
bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gQ2hhbmdlcyBpbiB2OToNCj4gPiAt
IEVESVRNRTogZGVzY3JpYmUgd2hhdCBpcyBuZXcgaW4gdGhpcyBzZXJpZXMgcmV2aXNpb24uDQo+
ID4gLSBFRElUTUU6IHVzZSBidWxsZXRwb2ludHMgYW5kIHRlcnNlIGRlc2NyaXB0aW9ucy4NCj4g
PiAtIExpbmsgdG8gdjg6DQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI2MDEyOS1h
dG9taWMtdjgtMC00Y2I3YjBmYWEwNTFAaW50ZWwuY29tDQo+ID4NCj4gPiAtLS0NCj4gPiBBcnVu
IFIgTXVydGh5ICg3KToNCj4gPiAgICAgICAgZHJtOiBEZWZpbmUgdXNlciByZWFkYWJsZSBlcnJv
ciBjb2RlcyBmb3IgYXRvbWljIGlvY3RsDQo+ID4gICAgICAgIGRybS9hdG9taWM6IEFkZCBlcnJv
cl9jb2RlIGVsZW1lbnQgaW4gYXRvbWljX3N0YXRlDQo+ID4gICAgICAgIGRybS9hdG9taWM6IENh
bGwgY29tcGxldGVfc2lnbmFsaW5nIG9ubHkgaWYgcHJlcGFyZV9zaWduYWxpbmcgaXMgZG9uZQ0K
PiA+ICAgICAgICBkcm0vYXRvbWljOiBBbGxvY2F0ZSBhdG9taWNfc3RhdGUgYXQgdGhlIGJlZ2lu
bmluZyBvZiBhdG9taWNfaW9jdGwNCj4gPiAgICAgICAgZHJtL2F0b21pYzogUmV0dXJuIHVzZXIg
cmVhZGFibGUgZXJyb3IgaW4gYXRvbWljX2lvY3RsDQo+ID4gICAgICAgIGRybS9pOTE1L2Rpc3Bs
YXk6IEVycm9yIGNvZGVzIGZvciBhc3luYyBmbGlwIGZhaWx1cmVzDQo+ID4gICAgICAgIGRybTog
SW50cm9kdWNlIERSTV9DQVBfQVRPTUlDX0VSUk9SX1JFUE9SVElORw0KPiA+DQo+ID4gICBkcml2
ZXJzL2dwdS9kcm0vZHJtX2F0b21pYy5jICAgICAgICAgICAgICAgICB8IDMxICsrKysrKysrKysN
Cj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyAgICAgICAgICAgIHwgODkg
KysrKysrKysrKysrKysrKysrKystLS0tLS0NCj4gLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9k
cm1faW9jdGwuYyAgICAgICAgICAgICAgICAgIHwgIDMgKw0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyNSArKysrLS0tLQ0KPiA+ICAgaW5jbHVk
ZS9kcm0vZHJtX2F0b21pYy5oICAgICAgICAgICAgICAgICAgICAgfCAxMCArKysrDQo+ID4gICBp
bmNsdWRlL3VhcGkvZHJtL2RybS5oICAgICAgICAgICAgICAgICAgICAgICB8ICA3ICsrKw0KPiA+
ICAgaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5oICAgICAgICAgICAgICAgICAgfCAzNyArKysr
KysrKysrKysNCj4gPiAgIDcgZmlsZXMgY2hhbmdlZCwgMTY1IGluc2VydGlvbnMoKyksIDM3IGRl
bGV0aW9ucygtKQ0KPiA+IC0tLQ0KPiA+IGJhc2UtY29tbWl0OiBjZWM0M2Q1YzI2OTZhZjIxOWZj
MmVmNzFkZDdlOTNkYjQ4YzgwZjY2DQo+ID4gY2hhbmdlLWlkOiAyMDI1MDcyOC1hdG9taWMtYzk3
MTNmZDM1N2U0DQo+ID4NCj4gPiBCZXN0IHJlZ2FyZHMsDQo=
