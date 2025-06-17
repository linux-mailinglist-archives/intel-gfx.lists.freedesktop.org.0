Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EE9ADC907
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 13:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1136610E5A4;
	Tue, 17 Jun 2025 11:05:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IWz3BTox";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E85810E5A4;
 Tue, 17 Jun 2025 11:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750158325; x=1781694325;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xJVT683SN5FEXT1W8s++gGs5S1jUvbA10KUybnpCav0=;
 b=IWz3BToxWO3r5ikELZyu9p0m1sTp0QZA/LFi+fmqZmO4UUnNF7BLeuz4
 DSRSIIzRG5RWioqM1YBRzQGGrduxLIsoGwG5GgeZpKJQjjKjmViOyWMEr
 AMVrWNngDAzp1vMI54G3Xqrka06Jc5fM+8Z96LP7KsqNXhTb9aUE7Ip9g
 ADi9sMRjge03zT2yzaVW02rtavnsNRBAz8+dLs+QMkE7ewAKCnU1LBPbC
 XDkmF+55xWRc9ClUtSBgBd28VRya1ukyfir6qEI9OU/VdjoCDi8OpyOlq
 bw/aNT00SII/9KNQp/gZ5a75l0brYliaURm5i2vu78E4RprHTpU8IjWw1 Q==;
X-CSE-ConnectionGUID: RtOVCm1QSDenDDnylxs4Sg==
X-CSE-MsgGUID: fzDUf96KT4Waw6v/f+ranQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="62982426"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="62982426"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 04:05:23 -0700
X-CSE-ConnectionGUID: BQtnRE+ER8S3dVFHRffXyw==
X-CSE-MsgGUID: rkkdCZs/TMq6eGyHSOI+Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="149236588"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 04:05:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 04:05:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 17 Jun 2025 04:05:21 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.42) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 04:05:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hRT12wBGuo5qlMIxAbKqYuWu8d977SV0GYNx7TAsO6p9ccjWOzs00gQ6/D/aIXPRnVIDX8BqmnY/OrdkdZv/MCIPprBBxnH01MZsqJIvYE1+ySBe0rFMVhzFasoEtURSZXev1S9L3IL3HK5g0tvB+Btvz+kDUTMs3GQN0SUkMaCu9IcLg27Fwj8eb30HiE8vI/AtX3eMVrIUoE4LmWjq9UxMaS8CFiOfKMB2O+12ltFj/TmXdd7tQFvvW6SX/Z5zyPlJfRL5KI7CNkf5zb/Tj+/gNIOM1VmnaKTBc4QiWeooez/Hf4EN5jLZwuPVwS+h+Dw28NXhQaD/D0xjtaQ+Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xJVT683SN5FEXT1W8s++gGs5S1jUvbA10KUybnpCav0=;
 b=EBo99C1wAST7hhYUMCsmSzJuESuEneme5URfl6XBCjjEiMkrMKx4iMnC9HjzJWn+5tLVKATxNDGOA1sg3Jph0Il2D8q+RcmQeGjJnLmshDVT4YPu8K1rZIv6joucQBdY9glTiamwFCAdDOY6IDkYxACFF8rMdhT3hQXzKwQDUn3wqc0LFwZ14U7lkycPGBJNtHxQ1ALuNgelcl5ofkWUdJiV2LDFwoHMmuhxF4GTEdVZ/vMNpdmRLhU20Oy6JNaa1KUn0+iO4g2NIKXZP0WYdWNw9lfGzhUZ0NCJQmpQIdzeH3WN4U+bC9lswRmOlGAiYGPDamIgRQfeuTiphBZruA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SJ0PR11MB6624.namprd11.prod.outlook.com
 (2603:10b6:a03:47a::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Tue, 17 Jun
 2025 11:05:05 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::cd7d:8601:c9fb:ef8c]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::cd7d:8601:c9fb:ef8c%4]) with mapi id 15.20.8835.018; Tue, 17 Jun 2025
 11:05:05 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Grzelak, Michal" <michal.grzelak@intel.com>
Subject: RE: [PATCH v2 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Topic: [PATCH v2 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Index: AQHb1fn+Lv4/6V3pYUGt0l4iBXE+vbQHPP8Q
Date: Tue, 17 Jun 2025 11:05:05 +0000
Message-ID: <DS4PPF69154114F6344CD02CF0D853FBE4FEF73A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250605091300.3739436-1-michal.grzelak@intel.com>
 <20250605091300.3739436-2-michal.grzelak@intel.com>
In-Reply-To: <20250605091300.3739436-2-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SJ0PR11MB6624:EE_
x-ms-office365-filtering-correlation-id: fbeb18bf-1a14-4925-6bc2-08ddad8ed08f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?YXM3ZWhLNG9WVDdpYnphUlV3eW1YN0lqcG1BcjZ4R1FkdlFpV3lwWE51UCtk?=
 =?utf-8?B?RDBsVUVHYVdFSWJwNlM1ZDQ3andUR0gxak9mR1BuTFN5VzlkQXlYcUhyTUxm?=
 =?utf-8?B?dUs4cmdFNUMydGFzaGtJUy80S1BsT2xuNmpGdHQyUUxMZ3pUVkxJYlJFaldi?=
 =?utf-8?B?MXZvWjZMYm5ucVFaZzIwejJTQlJYc05QK0dsb0Fya3dFZmk0Vk42aGc0ZkhF?=
 =?utf-8?B?RXE2MmF5S2ZTVnViOFNGSGw1T2grV0xEcWk4THl5Y0crTWhLNVIwN0JOTHJE?=
 =?utf-8?B?YktiTFI3VXcrc0V2RUY3Y3YzMVV6c0VKYVVINVoxSzVVTi9jd1Aydmdhc2Jp?=
 =?utf-8?B?bG9RancvS0NSckZwOTRTc3VDRVVuajBnQzJVYVRNV2hnUW4yVjQyaWRZcjdE?=
 =?utf-8?B?UGRJbTRvUEZIclVTZDRkY0ppME5PVEhCRFFKbEppZEhmdXJnbkhCKyt3U0k0?=
 =?utf-8?B?ZS9yVXo3WWtnN3IxRUYyT0Z3MmRyY1JZN3BmczNNMTBoYmxVVHhhV0lYNU1N?=
 =?utf-8?B?YzNOSlVuQnR6TlNBcnBqNmlvVUt1RytyQk0wZmtCaFZ6bCt5WWRUbDdFbC9S?=
 =?utf-8?B?SnhFN2JLZmhXLzN5UWpEbDlrTFp1VGNyR0c0Tk4rcXR4Y2RvSGkzWW81Rm9m?=
 =?utf-8?B?STE0aThGQXhZZjUvbnFvMC9TTnNSdktyMFgwNXlvbHFKb3F1L1FXdlJOeDI4?=
 =?utf-8?B?eGdHWWRxODV6WG9LWFMwdGQwT081S0R3L0JjVzZTb2FmVmY0RG8zSUFEWmVR?=
 =?utf-8?B?SzU2L0hlVjEvL1FtQ1p2U1MrQjY2dFpKQklyNDQvcE5obHRPTTR2S21lc0RT?=
 =?utf-8?B?dCtYWXgwNHhQOWlNU2FvSlpwZGkyOW1lZ1RwUWc2M0h2ampUNXhWUnlxZ2J6?=
 =?utf-8?B?VVBjL2pLQXVTbE93WFZCajlmZHAyZWU0TzQ4VTZwN3JDM0xod3UvWWgvOFZ2?=
 =?utf-8?B?TDRBaFV1cmE5SmlScnprYUZwZXpOQWNlT3A2dUo2dlNoWkY4UE1aYUpFWG9j?=
 =?utf-8?B?S2Q3QVVMaU4vWmp5YVlpM0NVZVMwNHh4dzJISHBZajBmeGt1UXUxamFmVEMv?=
 =?utf-8?B?QXU0SGNlNTRadU9ERTJEYkhCaEt6L0pWRHMxSEpnakpOcVppR0N0MW1GSWdi?=
 =?utf-8?B?N1hXRmNDZ0FSdlpPNXRxWDV1cUlMS1A2Tmo5VVIyWVQ2U1R0cldGNEcrcEpu?=
 =?utf-8?B?d0ovWlhDVnlaVWpjL1VuSVdnWGdnSU9sakQ3Tmh4RDlDWlYwZTBKYVVUYUxF?=
 =?utf-8?B?cGR5US9rQXlUSWlTL1dFb2RmMW1lNXBnVmxya2VodFlzOHBJMGhFM3p2ditS?=
 =?utf-8?B?VkVQS20xaEtEK01lb2NCWThFWDhOYURzMUZIMW1GbmhYdVQ1eFVoNHpqWnRi?=
 =?utf-8?B?Y2hvZ0x6aEpDcm5qM0pseWhtL21KWUFPUklXaFBuRkpaRXlJVXlZRUtRSU1i?=
 =?utf-8?B?djNOQU5zQ3M4YkczVkJmaFFKL2FWZjU3U2M1Mmp4c1RZTUg1VHRkU0tDck1W?=
 =?utf-8?B?bXR1bzJBcUQ5Mm4rcjRhamx0NlF4WWtLb3Fyd1NXOCtVNll0elJFMEtKVzE1?=
 =?utf-8?B?Z3pxaFlYd2Q3b3pMNFJxNTJKZGxHc1dIbGhMNGozQzJjTHo1QlFJMmJLRHFu?=
 =?utf-8?B?WHdFUG12OUtjaWtFWnBrNmZpb0tNd2VpMVJ1SzZidW5SVitWQk1sVERIdm1s?=
 =?utf-8?B?cGMwWE1EQkdicmdHM25lV2FJZ29TclR3M2xISTZhNS8vV1FKNjZtMWxKcFN5?=
 =?utf-8?B?VXlYZFExUVR4RTU2ejRyUFZuMnM4aFgvY1ZUdWh3K1I2YWJjOFEwaWVTdEVK?=
 =?utf-8?B?bkV0US9OMGE4VUxtY01rYlhTWnpxS1ArdzBRNm1VKzZQYy9wVU1aczV1NTND?=
 =?utf-8?B?ZUJEMm5XTHNlT0VGZlRxWjc3RHc4VER6ck4vcFladHdueFo2UzFITFo4cElM?=
 =?utf-8?B?TXVEcHd6Z3ErT2srM2ZuSEhlbTFLc3I4YVJDR3hhQlM4U1VjSW1wOHdkMzQw?=
 =?utf-8?B?Tmx0UUJXVmR3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bXc2a1hRUSttUlJYZ09LQiswTUVGaGdsTklwekRMV01mOE5LTGs5ZXFIVFph?=
 =?utf-8?B?ODhuQUlJZGxwZjA3ZnYxOHpIa2tWRUo0dDNPQnZQUnFBRjZCL2dxZElJRDMr?=
 =?utf-8?B?dU9hMTVoVEpRWDc0OHBwWHN6YTlsR0FSOTNNNnJsWUxXVWp0SFV6dUlCNmtl?=
 =?utf-8?B?MzNxV1pSakpTR0htRC9lZko3RUpuaTNvOGkwSFlxeHFtSjgzM0hOd0VPdy85?=
 =?utf-8?B?TjhRb3BVUmQyOW9CSmhwdHNLK0hyZUJSWlRDK2xrMnR2dGF3RjBGNTB3ZDlD?=
 =?utf-8?B?ZGdHZlBZQ2ZnN3ZyRmVaMy81VXpCYTJaQ2VQekxvOTA0YWhWN2NRSzdsRXZ4?=
 =?utf-8?B?aDhVcGlaZXUrSWxNVlhXMXU1c2QxcFJ0VlNlTnhkdW5VRStXQzBNYXV1UU9q?=
 =?utf-8?B?aEt5SStTSUtMVU9ZWnY5bVZya24xb2FRODdrR1JMVG5tcjh2M3ZVeXVtQUhn?=
 =?utf-8?B?U3cwYVFjamRvcGhIUFprUUYwb3NCaXhJTkhSUW53WlhNL09pNHN4dzU4TWVJ?=
 =?utf-8?B?QWVBZE9iNG5IUVg3d2hoNDZtNkxJTE01ekZwWWZsaC9xVzMxRVZTbVZFWnpT?=
 =?utf-8?B?MGhaTGFjQkNjNXJLRDdXQkovb3Y2ODlDY1RyMjUzZEI0Wi9BVGdqUWRoVVB4?=
 =?utf-8?B?WjZXR1NMSFR3N1duUWVBdGozNHgzajFPVnVqZ2IwSnBqYXROekFDSFI5Wmdv?=
 =?utf-8?B?dDN3aDBtTUkwZHp0OEQxUld0SDc3ME80UythdGtEeEhzTG1uYmY4RUZVSDVZ?=
 =?utf-8?B?bENEZWdXbWNyZlA3ZzR6ek9WZGhpdE1RMlN0cTUxcWRtTW1VemxhQ29Hcm5h?=
 =?utf-8?B?bkVQN3lEaWx2WUk5aDBneWRsaE5RaFEvcnU0U0ZmSEQvekxNN1QremZNMGpq?=
 =?utf-8?B?bS8wd3g5QnhVQnNwM1J2MUtWL1krdDQ2MzZXVEdYUFc3bEtFYnpnUEdKbHV1?=
 =?utf-8?B?cU5kNlNWcmtnZW1Wemw5YTMvTmVnZ0I3WFpIcjNkejk3eVM5V0VMbzFaaElu?=
 =?utf-8?B?ZUE4YjgwdnA3dEJ0NndEWDBuNW9YdHZ5Nis5akx5YjVGUzNMWGdCOGpYNmJU?=
 =?utf-8?B?dWp0N3Rya0R1V2lNeXJ1V1RSWm5TN0VUR2diMS9nNmloZm55ZWpkTWh3Umw4?=
 =?utf-8?B?c2dEOEliS3ZoQStscllhckZGallWYURUa3JJWkFVdmRXL1cveGZyR3ZNUjZD?=
 =?utf-8?B?dlpJM0pyWXVoUXpSZWZUUWhaYWxJVHMyWGNxU08vK0IvSXBSMzNneWhYdG94?=
 =?utf-8?B?QmJKd1RqTGx5ZGZSWWtZZjdPUHNvRjdDYXBMOWNPT2VpcVpPUVkvUUs2ckFT?=
 =?utf-8?B?MzRQcDVjVmVOZTVicVhYbExiMHVDY3F0dmVEQVlKRHR2NldtS2d0NVNiSjFx?=
 =?utf-8?B?QTFUalR2WStQNkZGT1JGVWVCb3Y1TEZhYlIySEpUNklXZ1VnT2RJd1ZmY09j?=
 =?utf-8?B?bVFSVkcwOTExYlQ5bFRjbUNGbkFSSnR5NStlc014Q3JRZFJNSmkxOU4wRGRD?=
 =?utf-8?B?ZnZuZng5V01Ob05WNmVVRXp6S3RySG9SUUc3SWFsV1VmT2xwTjQ0NHI0M2tC?=
 =?utf-8?B?OFBBZzB2bjU4Um1zcXQ2Kys1M2t3Q2FmNkFZWmwxd0xabTBmdWNWMjlnWXk4?=
 =?utf-8?B?aVJxYzVzdm1HQklKdS9PNXp1RXZhNUJ1RVVHTkpNbWtRTlBLSW9oRHdZY2VK?=
 =?utf-8?B?WEcxcURTdk1UNFYrY0RjUGNvb2JYd0tiZ1Q4M1BFaU8zNUdmendWR0VhMGlq?=
 =?utf-8?B?TW5UTlVIM1dGbFFCS2tpL0NBd0R5S2h6aTRKMUI2ck1uN3l6VEVxRWpXZHpP?=
 =?utf-8?B?dDhOampoQjZqMUxIcGNqT01xYzJDV3ROMEJkWFVaSVRBclFrZ0NRVU4xUDI2?=
 =?utf-8?B?eXN2M05ySDRnWEpIMVRXaW9lZSs1eHVOZmhOZENuZW9hM25MMUQ5N3p3bG9k?=
 =?utf-8?B?MlhYb1d6eStmdWR2ekhrczNMcGxHdGpkMUk1b2FJVTFqZndjeTVUeHRjam54?=
 =?utf-8?B?cTBBMkhRRTNURXpWSDRPZG81cHRSdlg1bmJFcUJwazU1OGVzVjVyNVByYm5o?=
 =?utf-8?B?ZTU2OUdLRlg4WmNaU1lGeHlVd1NwN0VXMzA3NzRRbVlQMkw5WkFVdjV4L3k3?=
 =?utf-8?Q?ui2U=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbeb18bf-1a14-4925-6bc2-08ddad8ed08f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2025 11:05:05.2361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LhidOmzJyfbnnpO/bcqKmuPDR9A63rVwsPm3WlfY8Fyc1NoRoOQir8gpCmRAnEzudzPf83mj1zzY8vFYvvz/YA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6624
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBNaWNoYWwgR3J6ZWxh
aw0KPiBTZW50OiBUaHVyc2RheSwgNSBKdW5lIDIwMjUgMTIuMTMNCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogR3J6ZWxhaywgTWljaGFsIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6
IFtQQVRDSCB2MiAxLzFdIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBub19wc3JfcmVhc29uIHRvIFBT
UiBkZWJ1Z2ZzDQo+IA0KPiBUaGVyZSBpcyBubyByZWFzb24gaW4gZGVidWdmcyB3aHkgUFNSIGhh
cyBiZWVuIGRpc2FibGVkLiBBZGQgbm9fcHNyX3JlYXNvbiBmaWVsZCBpbnRvIHN0cnVjdCBpbnRl
bF9wc3IuIFdyaXRlIHRoZSByZWFzb24sIGUuZy4gUFNSDQo+IHNldHVwIHRpbWluZyBub3QgbWV0
LCBpbnRvIHByb3BlciBQU1IgZGVidWdmcyBmaWxlLg0KPiBDbGVhbiBpdCB3aGVuIFBTUiBpcyBh
Y3RpdmF0ZWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hhbC5n
cnplbGFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmggICAgfCAgMiArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jICAgICAgfCAzOCArKysrKysrKysrKystLS0tLS0tDQo+ICAyIGZpbGVzIGNo
YW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5k
ZXggNzQxNTU2NGQwNThhLi43ZDU5ODM1N2E3MDIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xNjUzLDYg
KzE2NTMsOCBAQCBzdHJ1Y3QgaW50ZWxfcHNyIHsNCj4gIAlib29sIGxpbmtfb2s7DQo+IA0KPiAg
CXU4IGFjdGl2ZV9ub25fcHNyX3BpcGVzOw0KPiArDQo+ICsJY29uc3QgY2hhciAqbm9fcHNyX3Jl
YXNvbjsNCj4gIH07DQo+IA0KPiAgc3RydWN0IGludGVsX2RwIHsNCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGNjZDY2YmJjNzJmNy4uMmM4YWYyYTEw
ZWUxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
QEAgLTE1NzcsNiArMTU3Nyw3IEBAIHN0YXRpYyBib29sIF9wc3JfY29tcHV0ZV9jb25maWcoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAlpZiAoZW50cnlfc2V0dXBfZnJhbWVzID49IDAp
IHsNCj4gIAkJaW50ZWxfZHAtPnBzci5lbnRyeV9zZXR1cF9mcmFtZXMgPSBlbnRyeV9zZXR1cF9m
cmFtZXM7DQo+ICAJfSBlbHNlIHsNCj4gKwkJaW50ZWxfZHAtPnBzci5ub19wc3JfcmVhc29uID0g
IlBTUiBzZXR1cCB0aW1pbmcgbm90IG1ldCI7DQo+ICAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRy
bSwNCj4gIAkJCSAgICAiUFNSIGNvbmRpdGlvbiBmYWlsZWQ6IFBTUiBzZXR1cCB0aW1pbmcgbm90
IG1ldFxuIik7DQo+ICAJCXJldHVybiBmYWxzZTsNCj4gQEAgLTE4MTIsNiArMTgxMyw3IEBAIHN0
YXRpYyB2b2lkIGludGVsX3Bzcl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0K
PiAgCQloc3dfYWN0aXZhdGVfcHNyMShpbnRlbF9kcCk7DQo+IA0KPiAgCWludGVsX2RwLT5wc3Iu
YWN0aXZlID0gdHJ1ZTsNCj4gKwlpbnRlbF9kcC0+cHNyLm5vX3Bzcl9yZWFzb24gPSBOVUxMOw0K
PiAgfQ0KPiANCj4gIC8qDQo+IEBAIC0yOTA0LDEzICsyOTA2LDIxIEBAIHZvaWQgaW50ZWxfcHNy
X3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJ
CQkgKiAtIFJlZ2lvbiBFYXJseSBUcmFuc3BvcnQgY2hhbmdpbmcNCj4gIAkJCSAqIC0gRGlzcGxh
eSBXQSAjMTEzNjogc2tsLCBieHQNCj4gIAkJCSAqLw0KPiAtCQkJaWYgKGludGVsX2NydGNfbmVl
ZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgfHwNCj4gLQkJCSAgICAhbmV3X2NydGNfc3RhdGUt
Pmhhc19wc3IgfHwNCj4gLQkJCSAgICAhbmV3X2NydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMgfHwN
Cj4gLQkJCSAgICBuZXdfY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgIT0gcHNyLT5zZWxfdXBk
YXRlX2VuYWJsZWQgfHwNCj4gLQkJCSAgICBuZXdfY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc3Vf
cmVnaW9uX2V0ICE9IHBzci0+c3VfcmVnaW9uX2V0X2VuYWJsZWQgfHwNCj4gLQkJCSAgICBuZXdf
Y3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSAhPSBwc3ItPnBhbmVsX3JlcGxheV9lbmFibGVk
IHx8DQo+IC0JCQkgICAgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMTEgJiYgbmV3X2NydGNfc3Rh
dGUtPndtX2xldmVsX2Rpc2FibGVkKSkNCj4gKwkJCWlmIChpbnRlbF9jcnRjX25lZWRzX21vZGVz
ZXQobmV3X2NydGNfc3RhdGUpKQ0KPiArCQkJCXBzci0+bm9fcHNyX3JlYXNvbiA9ICJOZXcgc3Rh
dGUgbmVlZHMgbW9kZXNldCI7DQpQaHJhc2luZyB0aGVzZSBzdGF0ZW1lbnRzIGFyZSBhbHdheXMg
bWF0dGVyIG9mIGEgb3BpbmlvbiBidXQgSSB3b3VsZCByZXBocmFzZSB0aGlzIGFzIGZvbGxvd2lu
Zw0KDQpwc3ItPm5vX3Bzcl9yZWFzb24gPSAiQ1JUQyBuZWVkcyBtb2Rlc2V0IiANCg0KYXMgY3J0
YyBzdGF0ZSBpcyBzaW1wbHkgYSBzdGF0ZSBvZiB0aGUgY3J0YyBhbmQgY3J0YyBpcyB0aGUgb25l
IHRoYXQgbmVlZHMgbW9kZSBzZXR0aW5nLg0KDQo+ICsJCQlpZiAoIW5ld19jcnRjX3N0YXRlLT5o
YXNfcHNyKQ0KPiArCQkgICAgICAgICAgICAgICAgcHNyLT5ub19wc3JfcmVhc29uID0gIlBTUiBk
aXNhYmxlZCBpbiBuZXcgc3RhdGUiOw0KVGhlc2UgcmVhc29ucyBhcmUgbGlzdGVkIGluIHRoZSBj
b21tZW50IG9mIHRoaXMgc2VjdGlvbiBvZiBjb2RlLiBIb3dldmVyLCBzaW5jZSBoYXNfcHNyIGlz
IG5vdCB0cnVlLCB0aGUgUFNSIGlzIGRpc2FibGVkIHdoYXRldmVyIHJlYXNvbiAoZHVlIHRvIGxh
Y2sgb2YgcGxhbmVzIGV0Yy4pIEkgd291bGQgc2ltcGx5IHJlcGhyYXNlIHRoaXMgYXMNCg0KcHNy
LT5ub19wc3JfcmVhc29uID0gIlBTUiBkaXNhYmxlZCINCg0KPiArCQkJaWYgKCFuZXdfY3J0Y19z
dGF0ZS0+YWN0aXZlX3BsYW5lcykNCj4gKwkJICAgICAgICAgICAgICAgIHBzci0+bm9fcHNyX3Jl
YXNvbiA9ICJBbGwgcGxhbmVzIHdpbGwgZ28gaW5hY3RpdmUiOw0KTWF5YmUganVzdA0KDQpwc3It
Pm5vX3Bzcl9yZWFzb24gPSAiQWxsIHBsYW5lcyBpbmFjdGl2ZSINCg0KPiArCQkJaWYgKG5ld19j
cnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSAhPSBwc3ItPnNlbF91cGRhdGVfZW5hYmxlZCkNCj4g
KwkJCQlwc3ItPm5vX3Bzcl9yZWFzb24gPSAiQ2hhbmdpbmcgYmV0d2VlbiBQU1IgdmVyc2lvbnMi
Ow0KPiArCQkJaWYgKG5ld19jcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQgIT0g
cHNyLT5zdV9yZWdpb25fZXRfZW5hYmxlZCkNCj4gKwkJICAgICAgICAgICAgICAgIHBzci0+bm9f
cHNyX3JlYXNvbiA9ICJSZWdpb24gRWFybHkgVHJhbnNwb3J0IGNoYW5naW5nIjsNClNpbmNlIHJl
YXNvbnMgYWJvdmUgYW5kIGJlbG93IHRoaXMgc3RhcnRzIHdpdGggIkNoYW5naW5nIiBhbmQgdGhl
IGNvbXBhcmlzb24gaXMgc2ltaWxhciwgbWF5YmUgd2UgY291bGQgcmVwaHJhc2UgdGhpcyBzaW1p
bGFybHkgaS5lLg0KDQpwc3ItPm5vX3Bzcl9yZWFzb24gPSAiQ2hhbmdpbmcgUmVnaW9uIEVhcmx5
IFRyYW5zcG9ydCINCg0KPiArCQkJaWYgKG5ld19jcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5
ICE9IHBzci0+cGFuZWxfcmVwbGF5X2VuYWJsZWQpDQo+ICsJCQkJcHNyLT5ub19wc3JfcmVhc29u
ID0gIkNoYW5naW5nIFBhbmVsIFJlcGxheSBtb2RlIjsNCj4gKwkJCWlmIChESVNQTEFZX1ZFUihk
aXNwbGF5KSA8IDExICYmIG5ld19jcnRjX3N0YXRlLT53bV9sZXZlbF9kaXNhYmxlZCkNCj4gKwkJ
CSAgICAgICAgcHNyLT5ub19wc3JfcmVhc29uID0gIkJzcGVjICMyMTY2NCBEaXNwbGF5IFdBICMx
MTM2OiBza2wsIGJ4dCI7DQo+ICsJCQlpZiAocHNyLT5ub19wc3JfcmVhc29uKQ0KPiAgCQkJCWlu
dGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChpbnRlbF9kcCk7DQo+ICAJCQllbHNlIGlmIChuZXdfY3J0
Y19zdGF0ZS0+d21fbGV2ZWxfZGlzYWJsZWQpDQo+ICAJCQkJLyogV2FfMTQwMTU2NDgwMDYgKi8N
Cj4gQEAgLTM5MTgsMTIgKzM5MjgsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfcHJpbnRfbW9k
ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJCSBzdHJ1Y3Qgc2VxX2ZpbGUgKm0p
DQo+ICB7DQo+ICAJc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7DQo+IC0J
Y29uc3QgY2hhciAqc3RhdHVzLCAqbW9kZSwgKnJlZ2lvbl9ldDsNCj4gLQ0KPiAtCWlmIChwc3It
PmVuYWJsZWQpDQo+IC0JCXN0YXR1cyA9ICIgZW5hYmxlZCI7DQo+IC0JZWxzZQ0KPiAtCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOw0KPiArCWNvbnN0IGNoYXIgKm1vZGUsICpyZWdpb25fZXQ7DQo+IA0K
PiAgCWlmIChwc3ItPnBhbmVsX3JlcGxheV9lbmFibGVkICYmIHBzci0+c2VsX3VwZGF0ZV9lbmFi
bGVkKQ0KPiAgCQltb2RlID0gIlBhbmVsIFJlcGxheSBTZWxlY3RpdmUgVXBkYXRlIjsgQEAgLTM5
NDEsNyArMzk0NiwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfcHJpbnRfbW9kZShzdHJ1Y3QN
Cj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCWVsc2UNCj4gIAkJcmVnaW9uX2V0ID0gIiI7DQo+
IA0KPiAtCXNlcV9wcmludGYobSwgIlBTUiBtb2RlOiAlcyVzJXNcbiIsIG1vZGUsIHN0YXR1cywg
cmVnaW9uX2V0KTsNCj4gKwlpZiAocHNyLT5lbmFibGVkKSB7DQo+ICsJCXNlcV9wdXRzKG0sICJQ
U1IgZW5hYmxlZFxuIik7DQo+ICsJCXNlcV9wcmludGYobSwgIlBTUiBtb2RlOiAlcyVzXG4iLCBt
b2RlLCByZWdpb25fZXQpOw0KPiArCX0gZWxzZSB7DQo+ICsJCXNlcV9wcmludGYobSwgIlBTUiBk
aXNhYmxlZDogJXNcbiIsIHBzci0+bm9fcHNyX3JlYXNvbik7DQo+ICsJfQ0KPiAgfQ0KPiANCj4g
IHN0YXRpYyBpbnQgaW50ZWxfcHNyX3N0YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+IC0tDQo+IDIuNDUuMg0KDQpPdGhlcndpc2UsIHRoZSBwYXRj
aCBsb29rcyBnb29kLg0K
