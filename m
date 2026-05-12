Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKQQK1vhAmpEyQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:14:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AF751C88B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7859310E568;
	Tue, 12 May 2026 08:14:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S6ihL5MN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BECAE10E261;
 Tue, 12 May 2026 08:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778573656; x=1810109656;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MgAsbDyEIwV8oqgFTwLDhjxzlEdDVpgpJXrGMICQO9g=;
 b=S6ihL5MNKtH4iolT7NFk9xZfod8bBgx3n1qxNLta9A5pyiupCx90qDDX
 mMAouUUkbSFblzaCJO9X9wcdvaXZFSTgbPFNZTHbNpb6Zs/MLA+N7PJHl
 hof4cnwcR0ELoaHbaiVKuz/8UDFNC52VnzWfCqimaAc1HHPUFzptrNhv5
 kOi6YeiwM5P3bNOrR09aPo30S8wNcumShNIyZGPMPeJsbefuijFxRH682
 q0UJTznrUg89UX0yKtgBZbDZYJIMMdNoxhx8SU2+0Iba727SUWUIg97Lq
 zgih2qNC+c2AIPjxzAiVopG7gXsnJx2DGD4INOXdmiJJEyMwQNTDGFQbE w==;
X-CSE-ConnectionGUID: Y2MWbQThTy6a+WDHF9Tudw==
X-CSE-MsgGUID: CdgU8DbSRLudXv/HD6v0XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79372428"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="79372428"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:14:15 -0700
X-CSE-ConnectionGUID: UEslBeSzRayYElyht+OMmQ==
X-CSE-MsgGUID: jhoj+UqpRUq8I9oGLfyc1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="236711829"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:14:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 01:14:14 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 01:14:14 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.44) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 01:14:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WLeZap0lxgHJ4dCpF8JWwzm2UgdfKdTw+KuwP9pQOGzRZD7jEv/B55ihy7gQoCsBJSgd+RVV8CzxmEYt1u4RafbCH+AnAzVGp/Cpei6k2wDAl6/D3ICWZEk6wKESdyW/7zkRMQX48+tp3LJ8IwggFWM2fnNkppj7Ar06Qbo0Y154/om5AiUzSr62F8AcUm7X3ZDSnW4lEwf8NccLvahDsiREenmqVSu33IltrQz4i9CwWo/crAqCOO6aAaJ2u4esE2yNlJ28WbC3JInis4S/OIxLPe8CNYEgH00puHAd5I5BWk7ywlUyrtyfGav1zjo91C9JtOB82EZHEMuzNXQZPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MgAsbDyEIwV8oqgFTwLDhjxzlEdDVpgpJXrGMICQO9g=;
 b=CDeFDEUGJ64YfyN4bWwdpgjLPKtvkSEH7Khc26yOTZZ+6kxMskYOf/zP17ykF3h07VswV1+Kokp+wORIe3EJcIemHtFIdyvXT03xhhkNV+0caDflobS2dfz4O1qF6JZ+FBxhL3+VYFflkEtdlruTzAdwcRa6l4w0hGxUjcdquSCtxOkOHx3WD8SWLJ9btnS2mC2qH8KD95qms9bDE5V+HZfBi6o3to2+Ysi/NeU15B9idOd4KIjap2+inZeNaRr0IQq7TmuYS57q9aXMWy+L3M/Qkqoik5IWhCu5hUkkA5V1tGmk5864ojv9Gu3ddPRo+Tr/yVB515JIY0jSdoD/Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DSWPR11MB9929.namprd11.prod.outlook.com (2603:10b6:8:39d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.17; Tue, 12 May
 2026 08:14:13 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%3]) with mapi id 15.20.9891.021; Tue, 12 May 2026
 08:14:13 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Handle odd position for planar formats
 in selective fetch
Thread-Topic: [PATCH] drm/i915/display: Handle odd position for planar formats
 in selective fetch
Thread-Index: AQHc4eWF05R437upu0Od15DAkCNcHLYKCoUg
Date: Tue, 12 May 2026 08:14:12 +0000
Message-ID: <PH7PR11MB825213472B9A5E7628BA7DE089392@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260512080022.2527094-1-jouni.hogander@intel.com>
In-Reply-To: <20260512080022.2527094-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|DSWPR11MB9929:EE_
x-ms-office365-filtering-correlation-id: 42bb6fe2-7dbe-4b4b-f670-08deaffe73a7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|11063799003|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: mENjXkmDgWpBwBxGUywazFcdaAFhdtgwfZukURYkIYXgPZ+plHtz0N5eoUdGAmJfpuv53CTPqf5BQowZu7CnVV6A44iM9M+isRwedlUTPlzaVC8oe2FRcDdMKBtp33+mXuxkZDJhtaNrqh1vlNXCvTfBs0zXO4k7OHCtbh5IrA+oJOcXHn/ASx9sKHG0OPtZPBWcyq1yRlut5TyotgNc/XCc/eufQv3TOHh2Qd1E1gdJxfAfN9z4F07zk5we8RTPV0/ftFSkCIWcePmu712p7FYtzbhHxSoViuVF88nDpaewNKc9u6z6BPDPXgbK2lOZEEdqN6ClhM/sWu4Y1fNdPAEXG0qyvhvKmfc1M+Jzhmx4hlbz7FcNlpeGoQUicPANSR+T6kOsh3VZvNepSrStzQjo0H3GXzfi8l3zC7RgI1mW5qOL7gpf/gO/7r5YVX0YcQPIgoIeMy7sVUSJpKsorEaNJYy1M163ChdFOiSWb6OjCK2uyw4BT4ZDPvKH/0+T9eS2NEQIm7RVI6GZQ9FN1oJLuQAJkUt42THeGK34mD+f8OhdcC3Enz1lI4Qst9Wbm0q0garJZjvLyZkU9fF8qL+DK7bV+UK7mmcHRvEYlBpRX2hFNrCIlIJ3lAwGgnECorsRlnJcHoT1a1vhr0+baDaMYuo9jK/2tHgRD8ziyu8xj7pR2oLCS9/pDBiGYcEucB2h6IidfXbKSVMNkX83tj2fya+Ptvi1NsWfxPPEJxHK4TRRSCCo+1OEDMlOil7P
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(11063799003)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aEhOUk1SQWYxVm5HWDZuNEVqa3Q4cFdlSGRhamJVYVY3YnBiWEVVM2x0MFpl?=
 =?utf-8?B?aE16dE5CUWtwNjNpaHBTSzRtVUNNOWc2MnN1RGFXNkJZODJVQlRLaFRuWjlt?=
 =?utf-8?B?L0tjTlhnLytpc2lzZHpKckw5OFA1NmI4OW9maGZzMTJwbnV6YTltNkswbm81?=
 =?utf-8?B?alROUC9oVFZKWlN6bGVOelhDeTFmbHgzMmoxc0d0RFFyM3Y0dkUxNzcyQ215?=
 =?utf-8?B?ZWd2cjJPcTFieWcySldDNXFKWDNXMkVPbU1Ya2tkZ0pqNUhWVjB2cWh2dFFm?=
 =?utf-8?B?Wit6elVkUk5ndGtCZVpyWjBOVVptWnJBNGxMSG1BQ3BUZEdhMjBWRTZnOFlv?=
 =?utf-8?B?UnZFT3NQQThrZHhUek5MaU1GbURNVitONEhRVzlsY1IvT3lNbFlvSFZvSWdT?=
 =?utf-8?B?SVIxY3NlTlhoRGV6aHZSdU56NHFVMzZUaW9mTlU4MW85cjlEdHJNdDhFaW5P?=
 =?utf-8?B?bkhZRVpjOGxDNlkwZ0hzeXVTMm1MZFBuTXZqbEdXdCtSUS85cGVIQUF6RnN1?=
 =?utf-8?B?WlFJbXlNOWVBT1hKTzVOdjNQMS9aQW5JNUt4Rjl0ZnV2TytNL0pLRm9kWnVE?=
 =?utf-8?B?L3B6a3BwaldEUkw0RmE0bFFsZHJaNFB6WkpwYnYxVzNRKzhzZEdoQ2JyVUlJ?=
 =?utf-8?B?QVZ5bndSUVl2S05EMVJmVnRRTGVJcHh2VEd0a2VrYW5UcDNrOFRMTXA0aDF3?=
 =?utf-8?B?bUU3SzRYbTZtMDhqL1Y5WmhRSUVDT2h1dzFOOC9YRW5tUmNvVGFTaXFpbEk5?=
 =?utf-8?B?TTEzaDMyMzlQQVVFZlBlM1gwcDUwaDg1Uk9jWTBaWmlIM0hMZW9jMXh2MmRG?=
 =?utf-8?B?ajZMRnkzRTJ6eW0zaHJVT3EwcStEdmlFQzFSY0lrQUJFRUlKb0oyU01CU0dn?=
 =?utf-8?B?THlxbG5ZVy9YMENPWlgwdy8rSVpkZFBEZzdCMThCc0lsdzZ6WkxGcUV5QXcw?=
 =?utf-8?B?OTUyRmVHc2JXQ3NwcjE5ZlFqclZtZnNXaktkWXlqcmZGcDhxZW05RVVMSHVp?=
 =?utf-8?B?akhZMTdsdzEycm5LTTF0MWpQRllhTXVrMEpuWW5ScU8wRCtkV01sSkNKaUt0?=
 =?utf-8?B?QVMxOFExMlZZRGw0b1VBamhLR3drRTRhYm9ocWdGNkFSZHNYUWJpbWFPa1VI?=
 =?utf-8?B?RDBmSkVsaU54NEFuWXd6QWVIYXdSRzJrU2pRQy9raWtoeFJ3WjZwVU9uSnIy?=
 =?utf-8?B?anJTN0E0b1haaFpya3ZkZzZtUUFkN292RFFTWTd3aGZleUwwcnk2enFnVmdC?=
 =?utf-8?B?RE9OcUxHUndWM0tpREZ2WXNSZVVoaFlQUjJLTW9tZGE2N0ZPNHk3TmwzL0o0?=
 =?utf-8?B?Z0lndzlOc0NIMytwWlhrWEhIOXdqeVpZd1VCZFVURm1ueWRDU1Mwbm1VTkFq?=
 =?utf-8?B?RXFHdUl3NHYyUWZFWlMrbGdnNUx5Mi9CcnRRbHZLK3ZVdGN3WXQrYUJ6azU5?=
 =?utf-8?B?L25xT0pNUGEzZEovM2t4eEZJQURoL1BWU0RDMXhjZWFHWkJ1ck5HU3BDWXhK?=
 =?utf-8?B?TnhTM2hva2E3aGI4S3lCOFFKU3dIK3VBWnQ0dUFNa25NL29kbWtxUXhKcTlU?=
 =?utf-8?B?UVVkQWZhRW5nS2tzbkZlQ2Ntci9iM09CcXMwRDZtcUlQMlRxdG5CVkJRdHhp?=
 =?utf-8?B?RHhFOGlXTWRRNUhlKzZ6blZVdW9iRHRvN21WeE1Wa20rWDNlTEVVYnlEdW5P?=
 =?utf-8?B?RmJwaHZSazdLaHdNNm5LbzlnVVJpQlluNFZLaVN3NW43UkJ4cjFGcUJlVW9a?=
 =?utf-8?B?VS9zajRqeU5FSXZRNzhGTWU1bU11NHZ6am54T0EyUldLVkJrajZOQ0NKRnhu?=
 =?utf-8?B?aEczaitBMlYrV0JSVVp5K3Yxc0tKOElkaGVsanpDVjY0TEhzWUdYQnhRVkk3?=
 =?utf-8?B?K0RSN05IamxEMFFCTlJjSXBUY1hoTUtxbHFieFBYcGxEcEduSjBUbTBVbXlh?=
 =?utf-8?B?eGhhY0hpTkNZcmU3WGdySFNEU2c3ZUVpbXd0V0JlbC93cFQxWGhlczlhTDBl?=
 =?utf-8?B?U2tYanVuR05nTU1OODVzSkpZY1VnL3BHTUU4RloxQWhWMUV0NVZqeHIvSzhX?=
 =?utf-8?B?cDNNVk1oY1VBcUlISXpDekRtdEF3T29mcjhZUFlJeEFOQVY3V3dkZDNqUURm?=
 =?utf-8?B?VVkrU0Y4M1UyVDdtMytEeG00bmRMTERXdmM3TWVDMlhIZWUvVHNaY0ZZOWxR?=
 =?utf-8?B?UlRlekNsQ21uTEV2RjZjMk0zeE8rRkc5MnZhd3J4NHozMFpXVDVLNzFOdVVo?=
 =?utf-8?B?NmZSNm91MkpmQlVhb3NIQUVxT21wc2ZkQnBYMVpoZjJMZmMrZndpZktVck8r?=
 =?utf-8?B?SkJhTUZ1ODd5Tm1SZjVqM1Y0d0FCUFd2RWNBc3dPWjN0TG9oWVlHUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: oih88xoA0u06EgEXQror2krjSN9Q2B2wMlOvk1NDgqgVnK+Ln2SnyQlT91/MK1JPOpFVQMuae4eMi99F4ER9ZCvq0SRS1SEYXUOSJzmunoX7ElwIyAe8jRC/XswT4I5PMOQvYb/vwFsbi/yOuQ+7ZUInYkmeG9rMEz3W6n9y5g7MSjhgSuKcl17F3U1NH1Xrucz8EnwpSqQJczK24/DmaCAgX1dxwklor8PTYuB6olYZzEJsjag6X+NVKlKww1R8b7Q4a8E6QAdBcjG10HI+PQT+s/Qso+0qPjTNn9Y5bNCtmsIYg9OhBcCwJOe19impSjbJWICuFTHlLSJuNGNliw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42bb6fe2-7dbe-4b4b-f670-08deaffe73a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2026 08:14:12.9522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BOGnLmpSyiKMsiLN/tsZj/fkdiJQ89PEhol7lgYWzIjWioipYXHofNdIO8RzW2ijDtf8XFdBkH0VC06FDe40fjZ9l+iw0MN8ROnEx3ZNq1w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9929
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
X-Rspamd-Queue-Id: 12AF751C88B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

VGhhbmsgeW91IHNvIG11Y2ggSm91bmkuIE5vdCBzdXJlIGlmIEkgYW0gY29uc2lkZXJlZCBhdXRo
b3JpemVkIHRvIHByb3ZpZGUgUkIuDQpCdXQgaWYgY2FuIGNvdW50LCANClJldmlld2VkLWJ5OiBW
aWR5YSBTcmluaXZhcyA8dmlkeWEuc3Jpbml2YXNAaW50ZWwuY29tPg0KDQpSZWdhcmRzDQpWaWR5
YQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEhvZ2FuZGVyLCBKb3Vu
aSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTZW50OiAxMiBNYXkgMjAyNiAxMzozMA0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT47IFNyaW5pdmFzLCBWaWR5YQ0KPiA8dmlkeWEuc3Jpbml2YXNAaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IEhhbmRsZSBvZGQgcG9zaXRpb24gZm9y
IHBsYW5hciBmb3JtYXRzIGluDQo+IHNlbGVjdGl2ZSBmZXRjaA0KPiANCj4gU2luY2UgTHVuYXJs
YWtlIHRoZXJlIGlzIG5vIHJlc3RyaWN0aW9uIHBsYW5hciBwbGFuZXMgaGFzIHRvIGJlIGV2ZW4g
cG9zaXRpb25zLg0KPiBEdWUgdG8gdGhpcyB3ZSBtYXkgZW5kIHVwIGhhdmluZyBvZGQgb2Zmc2V0
IGZvciBVVi1wbGFuZSBpbiBzZWxlY3RpdmUgZmV0Y2gNCj4gY29uZmlndXJhdGlvbi4gQWRkIGhh
bmRsaW5nIGZvciB0aGlzIGNhc2UgaW50byBzZWxlY3RpdmUgZmV0Y2ggY29uZmlndXJhdGlvbi4N
Cj4gDQo+IEJzcGVjOiA2ODkyNw0KPiBTdWdnZXN0ZWQtYnk6IFZpZHlhIFNyaW5pdmFzIDx2aWR5
YS5zcmluaXZhc0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBpbmRleCBlZjQz
MWRkMzJlNzQuLmFkNGJmZmY2OTAzZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gQEAgLTE1MzIsNyArMTUzMiw3
IEBAIHN0YXRpYyB2b2lkDQo+IGljbF9wbGFuZV91cGRhdGVfc2VsX2ZldGNoX25vYXJtKHN0cnVj
dCBpbnRlbF9kc2IgKmRzYiwNCj4gIAlpZiAoIWNvbG9yX3BsYW5lKQ0KPiAgCQl5ID0gcGxhbmVf
c3RhdGUtPnZpZXcuY29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLnkgKyBjbGlwLT55MTsNCj4gIAll
bHNlDQo+IC0JCXkgPSBwbGFuZV9zdGF0ZS0+dmlldy5jb2xvcl9wbGFuZVtjb2xvcl9wbGFuZV0u
eSArIGNsaXAtPnkxIC8NCj4gMjsNCj4gKwkJeSA9IHBsYW5lX3N0YXRlLT52aWV3LmNvbG9yX3Bs
YW5lW2NvbG9yX3BsYW5lXS55ICsNCj4gK0RJVl9ST1VORF9VUChjbGlwLT55MSwgMik7DQo+IA0K
PiAgCXZhbCA9IHkgPDwgMTYgfCB4Ow0KPiANCj4gLS0NCj4gMi40My4wDQoNCg==
