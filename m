Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C941CB4EAC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 07:48:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F6F10E71F;
	Thu, 11 Dec 2025 06:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d8uwjbv6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24B410E2A2;
 Thu, 11 Dec 2025 06:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765435718; x=1796971718;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=TPgmshb5TwGhTR1yiz4CIIbLGVLlOyFI2n2iU4xrHGM=;
 b=d8uwjbv6iYdBBDPEv0OE2J4c418MagWQthK8MvI4UWD4P0ON7Y3LxAca
 XTUjNAempKoForUgQTNJhSknkJEjA+b30sJcRIytZX1tQ2j1C9t5z7pMD
 fTq6BEORGLYKyQYI+E2AMsaT+h7C04SZhfhUfdSfVVOrzHRk/44Zo8ego
 ArNL4lPA42eqsglZTbUN6iqf1Vrp3UQVZeo0UNBWI9FxzRhlJbGHfzHjl
 u6Ly5YDmiyTFq0jvdPUDs84UEA5i2udKZEBHXT7hseZKP0tkFY8ne5Kx2
 W07W1WcGc9WdXoK0aI87ipCXSK4yBFX3tgvNNgvtlDG0njMlOSEuyfjY6 w==;
X-CSE-ConnectionGUID: hNntHlt5ReW5CXz57T3tzw==
X-CSE-MsgGUID: baMMVr4OTuKF1ccRS9/FHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="67349381"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="67349381"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 22:48:38 -0800
X-CSE-ConnectionGUID: M7HCHw1nS6KZwDgEhmHAYQ==
X-CSE-MsgGUID: R/wmksEfTf+kzD+hQ/GUfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="200888795"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 22:48:38 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 22:48:37 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 22:48:37 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.63) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 22:48:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ic4f8UiU0j9cfgaG1g9AdILiHwTRqbQqGDoWRVB/rrQneIykjK1OWAcy985fsCofqvnxYht87AHgr1T5YApDJNBSVt5OARh9v7Ge4+jmTXLxdq4djo8KSDtfuY4DvkMHKuSnZgbRMMyX04XtcB+KkZ0rMNGYv50K5MiMsvpw8HwXx2Ij5DzYfsxQrOKJuo7Kq6aDUyxDon/UGzK4wQ5hFfhllZFqep9u68lp9wInUWMsGkZFRrfhGBx2SRwgozmOSna7VY7PN8hTMo7iOdNlm9KWS+vcH6+XHUb4amhlwgiUCEHWZ1HufOytGWLLAtR4wh9OjKwOatHfVv+fF/+MjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TPgmshb5TwGhTR1yiz4CIIbLGVLlOyFI2n2iU4xrHGM=;
 b=u/wLwcsYxTynFjNrTDcXoKQ+0iGMJdCgrtZoTWzWOZq47ffVYS5p0xJ9CQqPKGd7NWS0YC9imvPz0+RxZhnO2FWW7dVxPILRl0NiLDJO7pOfG15vvSkI7694ZYLUjaEyEDDwrAYhRuJ3L6CqH8HDridqqL7YwBsMyv3Br1vse33Uk97oiG8dM4eKaiX7cTI+mk9Y+PoJ/5+IDNfqkkLwOLGI6Ztw+OHouANB7gKjipzMIsCdbjwm/GSrWlfI5ccWfyd6FRHnHE6xmoewmVvb1Ca4j418u5yRAHeOD7lcLTKFtCKtNGi/WtbpUswKgqfCJhpcQ0KY/c2WcKzf0FKv+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB5138.namprd11.prod.outlook.com (2603:10b6:303:94::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.7; Thu, 11 Dec 2025 06:48:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 06:48:29 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 48/50] drm/i915/dp: Unify DP and eDP slice count
 computation
Thread-Topic: [PATCH 48/50] drm/i915/dp: Unify DP and eDP slice count
 computation
Thread-Index: AQHcX9sz8+mCA+HAp0CmZ2k4VxmVzLUcFJkA
Date: Thu, 11 Dec 2025 06:48:29 +0000
Message-ID: <ac75afdcd0bb03a76641fc1124eea8bf3ca9bf32.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-49-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-49-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB5138:EE_
x-ms-office365-filtering-correlation-id: c2ed2106-1acb-4dab-bae4-08de38814b11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?MVNtVmpuY1JIZmdQaHMrZVUxQXFvUnBRd091NGxQV3lGTFZIWkV4UEZQQ1Vv?=
 =?utf-8?B?ckp1S3l4anpGVFpXZmRNbVM0QmpTbHZ2R0FQY0FGV084ZGhtZExJUWtYRWVs?=
 =?utf-8?B?VnI3OWM3QUFndU81WEVqWUV2WnRSK0ZMNkdTWlRpUDhCWFdIUUtxKzJvdkRn?=
 =?utf-8?B?VVUxc0dlemZWN1Erb1EremhtUXZTY01yTGtPektXdkZaa083WHJ6N2xQVURm?=
 =?utf-8?B?N0tJKzk2ekh1VlJOcXIzb29VTVJNS3dPbGZrYjlZcVAxZWlSdDc0ZVV4bTc3?=
 =?utf-8?B?UlVWcnNQM2N0cXBoeUE2eFVCOXFtTk9EMFVtWU5DdTh0TW1sTkI0MHBwWm05?=
 =?utf-8?B?S1F3My9mczZTMkYzVnBXYk0wZ0xPT0pJYmpGWG1MN0UwVEt4SGZHcmEyQTZl?=
 =?utf-8?B?cjRsemdRVUUrUVJjMjJSK2RjcG5uMWgxU1hFS1JtcUxtRWZGUFlPMUpETEd5?=
 =?utf-8?B?VnN5NTBJcjdlZExhVkNyckpzRkFKcTBCNkJXWDZrSVNIeHU4dlhmY29OUktk?=
 =?utf-8?B?UHQxOCthSHdHNk40ejdqbkwxNXJQdUNTR2pOVjdQdHFhM1FiZk9RRWVZYWpi?=
 =?utf-8?B?S2sxd2REMTdoZk91N1BrbU5XcE1hejkvMmNRNlFYZVJvSFo3YkNVYmd0Zkk0?=
 =?utf-8?B?SGJkSDVzUC80WlRvM0F6L0g3Zko2Wk9XeExySERZV0V3SzNlUFNpV0hBRXYv?=
 =?utf-8?B?RVlhMVhKc1k2UkNlTno5UE5QR1U1bWFGUEwrb0FwUkozcVByUk1EMCtwMnVV?=
 =?utf-8?B?UTNra3M2YTNxMEs5Mnl3M01nVmk3Nys3TDVPbGtSaWdsenN3SzVVOVV3eHg1?=
 =?utf-8?B?SklLMkhCSWxkK3dhZ0x5K1Y5NjQweU5POERGNUtna0czNmN3OFZxbUVRZjhR?=
 =?utf-8?B?amhKblFQWUN5QlZaRjJJcWpWVnl5UDFERDNkVjVVeDlaaHhaeEtCaVlnd3lQ?=
 =?utf-8?B?eGIwblJuMTMvVjRNQmhCOG9vRFI0bDJMcDN4QlErbWtadGVFdEFqMGxPNmFx?=
 =?utf-8?B?eWZsbjFQWnp6QkRSd2p4bENtZ3pMTlBYWUxjUVkraHpid0lINWlVT0t3VFFl?=
 =?utf-8?B?RitDczdQWnV1RmhkV0cvVUFlODhjWTR6VnRRenp5Qk50WE9zNFNncDFFclBq?=
 =?utf-8?B?TzZacjBIUHBLaWpqSHVNd3Zxb0NKd3dzRkx3c000Tkt6aFZ0Q0FsWjFwQWNS?=
 =?utf-8?B?aE53Q1ZFbUE3dDFMQ1RJSUFiUDl1WW5QajVGZHVnZXNZcGVDYjdYWWdBZk9L?=
 =?utf-8?B?WUtxaEUydUl3aFYwWmVNQU1kMHZla3FRNkNxTGhtb1BNVDM2L0NRNFFwOE9U?=
 =?utf-8?B?bnhHL1RUTEM1OUR1WnZNZVhkK0VhcmtRU2U1WTBreVJUdk1JNUxsWENqTE5m?=
 =?utf-8?B?NWFFajM2MHF6SXJMb2tkNDR1aVh0MitzbUlubkYyYy9GR1pobTkxVjZVTDFp?=
 =?utf-8?B?b2U0L1dvVW5uRDRFOFlRaldCRUk0aUNPK0dndVd4T3duZ0V2NEdyK3NyY3NP?=
 =?utf-8?B?WGh4NkxtU056TXN4aHIwREtHRVlUZzFtWFNoNWwrZTJ6cUdtV0ZCYkRsRXlr?=
 =?utf-8?B?Q1lUL3MvT2xXZ3JtNmtZeTdXS3o2NlhoL1pTcnNnR1Z3cEpIempCbUZ4MXFj?=
 =?utf-8?B?cHBoUG9xSnV5UWZCeE83WnNRTlV4Vm9wWGN1NHd1R2wvZjRyYXJGZ2N0QzJl?=
 =?utf-8?B?RXhSb0JVNWlVRzFaYTF0R0c0VmRYaUFHY1JSOGxvU0gxR1IzWmp6WWRnaTln?=
 =?utf-8?B?NzA5b280bjZaS2d2Z1FHS0tuQjZBeUhpc1JvQjhHQUZhMnZqSUJxeXlpZzJu?=
 =?utf-8?B?cUdEVHVlcnplUWlGWWNlaDhxYmJ0N0hqVzV4Rjk4TElMMkZSb08wc2NzQ1dr?=
 =?utf-8?B?WWtwS2d0aFVIWXN2WVN2Ni9GUjl3QTNrbklUdmNnQlJiaGVNd3NzVlFaejlF?=
 =?utf-8?B?MWovNVFNK2JnODA0SFZkenlSTEtFaTdON1VkTzhlcW1RYnpaRkhxM1oyMHJw?=
 =?utf-8?B?cm5HdHB5NXZ3M1RlVVFrVWFZNkhORUhBSVIzWU5hT2UwbmxlVjhVWVlaTm9y?=
 =?utf-8?Q?9XeM3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M3l0dW10cVdUdkMyM0J1dVA5MjRVS3BQaUFFMnVvTmpKT2F0Y05uV3U2VVB5?=
 =?utf-8?B?emg2d2VwMVFRaEk5bG1nTUtndnRiRm1NN3hnQk1vNjhHWUg5NnlocHoybFdh?=
 =?utf-8?B?MkNqNXl6K0dXVmlseTN6cE03MWwwNFlzV2MxNDZremRDWWJUZlpvTVFZK1dP?=
 =?utf-8?B?S1NvcS8zRlFVQ3UzUjlaMVMrcFZkaEVmTTEzMTRYYUZCSGNxWmRnT1FLckdB?=
 =?utf-8?B?USt0d09Tcm5sVDJYS1p4S2p6NzBJVW0weE1kTTQwbHQzbHhsT2xhaWF3VXJK?=
 =?utf-8?B?azcwdHRmUzJQNDM3S285MlEwV2lqNUwrRWlPdnMvb0FqRW4rVmFtK2pjN21n?=
 =?utf-8?B?bjI1eVY4RkpuWExGUFZYTXlHQ0JzQWFJdThuU3owYUwzMnAxS1dJR0hlMjRt?=
 =?utf-8?B?MEp6N1F1K0lZL1BmY1Q3dlltY2UvbUFmRDhoYWRkdStEb25SRGZVZDROTEVy?=
 =?utf-8?B?amF3OFBJMU52Q1drbEtENElRRk56WThLVkxGTFh3ZnQrVzk3WWpwUEdEem10?=
 =?utf-8?B?bmhRUFVGUGtkOVpUZzRidENxUTlvcEZTeFZyRUNmOUVJTjR1M3BMTHp0eHk2?=
 =?utf-8?B?ZTh4RzhZekxOblFoMnRMNXdpZGZudW9jb3dCUlBncjZNVHpMcUV5UUR2aVZr?=
 =?utf-8?B?UElLYzIzVWY0SC9aN1pYRDRtZ2E0SytYcmtxUVRPMU15VjRTb0NkY29JdXFH?=
 =?utf-8?B?RnBpYkNvSERHTDdvQ0NTenRuTmZIVTJYNS9MSERUOVhWdzh0U1pVTHlVN2VY?=
 =?utf-8?B?ZnNQRlhUUVF2WFV6aEYyclRiWUcyVitmTjFIVzlmNTk3SXlmQkxlSEZCOEpQ?=
 =?utf-8?B?ZDFwQU5BOUFBS05WSUR6UjZMTFVYd0tMSUc1SmdXMG9nd0pkVTN0TzcxV0tD?=
 =?utf-8?B?OG9yZEZLUkxpY1FlWWFyNHhIZjJkbkk3dG4wQjJyK2x3bFpvTUcwOVZpRnkv?=
 =?utf-8?B?em5XZXBKY0tTQ3Z5T2l5SHlSUlk3WXJXKzNTb1lFTWpaUHNRZ1BhQWxiU3lh?=
 =?utf-8?B?Wm9UODdnNVJzMHJ3TnZFSmtNR1JiUGhDam92Mjl0RkNoRzNIVlZzelJIcStt?=
 =?utf-8?B?QTJLblBielF5SHlia202ZytUeVRRYmpxM1E4eEdzRzNSMTkvZGNxTEJGQk1q?=
 =?utf-8?B?NW9UdFRmUEZzZWYybnJJSWZzcUVYbENhRSt4dU5oTzJrendlRHhGOWgraitI?=
 =?utf-8?B?bit6aEVsdU5KVXBuNWluVFd2L3Y1bEpBSGJUT2hJbzg2MDFadnAvSjkwb2R4?=
 =?utf-8?B?QVhZMDVIWmN2UG10ZW4xd09Pd2FiNUQ0K2hNa1piYUZGY1o3YUJrY3hnZDQr?=
 =?utf-8?B?eWtGdVd1cmE0NXBaSnIycUZiTmZkQXRpcEJMSGlDUXJ5bVF1TXJOWkVJK2RE?=
 =?utf-8?B?eEVIckZ0NUs3REY4eVlZZS90eEdTbENZMWtwODhsM3czNFdzSms2anJUZXZV?=
 =?utf-8?B?bDMyaksydzVRSmV4QTZKajc0MHJ5TWdlZE03QmZWeThiTS9kcFRuZjgxRDBq?=
 =?utf-8?B?cHhNRXdTc3ZXYjdZTGFUU3JJVmpCVldyTFNPbUVqMm1EYWR3UmtxV3BsYlQ5?=
 =?utf-8?B?enRKMWd3dFFUVTRZNWNURjdyWnk3Sk42WUVNYlBuQ29QbllmUDBLY1QzR0Vq?=
 =?utf-8?B?NjJWWUFaeE0wc0xxVXNoNFhwT3pjdnpqM05TVitrSXNYRFlFMFlXY29kU083?=
 =?utf-8?B?bW5zRUwzTitrNDBnWDhnOS9SYkxxaFdtcFlpbjd2Mml2RC95Z1NnVFdWUUlx?=
 =?utf-8?B?eDMvTE9HZzgrT1JXb0hxbDJaV0tBMTFKUXZMTE90Ym8rY1FXNWtnZlJqRWFE?=
 =?utf-8?B?OStTMTNmRWFkcTEySjJhbTRFZkZwMWhWRkZMRXovR2xDV3piMXhZTXFFSTl0?=
 =?utf-8?B?YlN5UmJQRVdxT2k0bk5ZNEp1ZlJTVkt3RnZZSGw2bWNKbml2RUd6VEFxbUxZ?=
 =?utf-8?B?VndEbW5rR2NscTVqWk1JbFNTcWlEV3BnMTJubXRHeHVDSGhzRjZ2T1hHNWtj?=
 =?utf-8?B?aDhaNkIyYlhqMituMnV1QnJtaUxIOFBVOUdMVThSTDhmTXV0TUZGcEdKK3Zi?=
 =?utf-8?B?NTByakI1QzZ0eVhNSVRCQzl6dkpETnVLaXNUV0RYcTJjS3YzeXgzWUh5V3pP?=
 =?utf-8?B?SHRJeXAySHRCRUllK3ZjZlJ2LzdLTGd4a0x3TzBjNUx3SDBGQzN5TTZhcVVS?=
 =?utf-8?B?L3VHSU5qaE5WclNNbGdQaGRLR3FFTjk1N3Q3ejNFQTlhWjhGb3hiRjY2eVgw?=
 =?utf-8?B?QUQ3R2pNWE9nQzlrTmtDQ21FOSt3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7C997D665BBE164B84521091C49B25E0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2ed2106-1acb-4dab-bae4-08de38814b11
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2025 06:48:29.4529 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +t/oKsYwpJaMNqJA4TaPRF6QTIUQRN0T6qTZH/7UpCNwbXeKx2MzUs1K29Qq4ZOEDV7sLhreXTNuy6zsq75eWr3BxDYvfNuWEKlzbrpqMio=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5138
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFVu
aWZ5IHRoZSBEUCBhbmQgZURQIHNsaWNlcy1wZXItbGluZSBjb21wdXRhdGlvbi4gQXRtIGVEUCBz
aW1wbHkNCj4gcmV0dXJucw0KPiB0aGUgbWF4aW11bSBzbGljZXMtcGVyLWxpbmUgdmFsdWUgc3Vw
cG9ydGVkIGJ5IHRoZSBzaW5rLCBidXQgdXNpbmcNCj4gdGhlDQo+IHNhbWUgaGVscGVyIGZ1bmN0
aW9uIGZvciBib3RoIGNhc2VzIHN0aWxsIG1ha2VzIHNlbnNlLCBzaW5jZSBhDQo+IGZvbGxvdy11
cA0KPiBjaGFuZ2Ugd2lsbCBjb21wdXRlIHRoZSBkZXRhaWxlZCBzbGljZSBjb25maWcgZm9yIGJv
dGggY2FzZXMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgfCA1MCArKysrKysrKysrKystLS0tLS0tLS0tLQ0KPiAtLQ0KPiDCoDEgZmlsZSBjaGFu
Z2VkLCAyNSBpbnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggNDYxZjgwYmQ1NGNiZi4uMGRi
NDAxZWMwMTU2ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiBAQCAtOTQ4LDExICs5NDgsMjAgQEAgc3RhdGljIGludCBpbnRlbF9kcF9kc2NfbWluX3Ns
aWNlX2NvdW50KGNvbnN0DQo+IHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4g
wqAJCQkJCWludCBtb2RlX2Nsb2NrLCBpbnQNCj4gbW9kZV9oZGlzcGxheSkNCj4gwqB7DQo+IMKg
CXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0
b3IpOw0KPiArCWJvb2wgaXNfZWRwID0NCj4gKwkJY29ubmVjdG9yLT5iYXNlLmNvbm5lY3Rvcl90
eXBlID09DQo+IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFA7DQo+IMKgCWludCBtaW5fc2xpY2VfY291
bnQ7DQo+IMKgCWludCBtYXhfc2xpY2Vfd2lkdGg7DQo+IMKgCWludCB0cF9yZ2JfeXV2NDQ0Ow0K
PiDCoAlpbnQgdHBfeXV2NDIyXzQyMDsNCj4gwqANCj4gKwkvKg0KPiArCSAqIFRPRE86IGFsbG93
IHVzaW5nIGxlc3MgdGhhbiB0aGUgbWF4aW11bSBudW1iZXIgb2Ygc2xpY2VzDQo+ICsJICogc3Vw
cG9ydGVkIGJ5IHRoZSBlRFAgc2luaywgdG8gYWxsb3cgdXNpbmcgZmV3ZXIgRFNDDQo+IGVuZ2lu
ZXMuDQo+ICsJICovDQo+ICsJaWYgKGlzX2VkcCkNCj4gKwkJcmV0dXJuIGRybV9kcF9kc2Nfc2lu
a19tYXhfc2xpY2VfY291bnQoY29ubmVjdG9yLQ0KPiA+ZHAuZHNjX2RwY2QsIHRydWUpOw0KPiAr
DQo+IMKgCS8qDQo+IMKgCSAqIFRPRE86IFVzZSB0aGUgdGhyb3VnaHB1dCB2YWx1ZSBzcGVjaWZp
YyB0byB0aGUgYWN0dWFsDQo+IFJHQi9ZVVYNCj4gwqAJICogZm9ybWF0IG9mIHRoZSBvdXRwdXQu
DQo+IEBAIC0xMDE2LDggKzEwMjUsMTAgQEAgdTggaW50ZWxfZHBfZHNjX2dldF9zbGljZV9jb3Vu
dChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+IMKgCXN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0b3IpOw0K
PiDCoAlpbnQgbWluX3NsaWNlX2NvdW50ID0NCj4gwqAJCWludGVsX2RwX2RzY19taW5fc2xpY2Vf
Y291bnQoY29ubmVjdG9yLCBtb2RlX2Nsb2NrLA0KPiBtb2RlX2hkaXNwbGF5KTsNCj4gKwlib29s
IGlzX2VkcCA9DQo+ICsJCWNvbm5lY3Rvci0+YmFzZS5jb25uZWN0b3JfdHlwZSA9PQ0KPiBEUk1f
TU9ERV9DT05ORUNUT1JfZURQOw0KPiDCoAl1MzIgc2lua19zbGljZV9jb3VudF9tYXNrID0NCj4g
LQkJZHJtX2RwX2RzY19zaW5rX3NsaWNlX2NvdW50X21hc2soY29ubmVjdG9yLQ0KPiA+ZHAuZHNj
X2RwY2QsIGZhbHNlKTsNCj4gKwkJZHJtX2RwX2RzY19zaW5rX3NsaWNlX2NvdW50X21hc2soY29u
bmVjdG9yLQ0KPiA+ZHAuZHNjX2RwY2QsIGlzX2VkcCk7DQo+IMKgCWludCBzbGljZXNfcGVyX3Bp
cGU7DQo+IMKgDQo+IMKgCS8qDQo+IEBAIC0xNDcwLDkgKzE0ODEsMTMgQEAgaW50ZWxfZHBfbW9k
ZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcg0KPiAqX2Nvbm5lY3RvciwNCj4gwqAJCWlmIChp
bnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSB7DQo+IMKgCQkJZHNjX21heF9jb21wcmVzc2VkX2Jw
cCA9DQo+IMKgCQkJCWRybV9lZHBfZHNjX3Npbmtfb3V0cHV0X2JwcChjb25uZWN0bw0KPiByLT5k
cC5kc2NfZHBjZCkgPj4gNDsNCj4gKw0KPiDCoAkJCWRzY19zbGljZV9jb3VudCA9DQo+IC0NCj4g
CQkJCWRybV9kcF9kc2Nfc2lua19tYXhfc2xpY2VfY291bnQoY29ubmVjdG9yLT5kcC5kc2NfZHBj
ZCwNCj4gLQ0KPiAJCQkJCQkJCXRydWUpOw0KPiArCQkJCWludGVsX2RwX2RzY19nZXRfc2xpY2Vf
Y291bnQoY29ubmVjdA0KPiBvciwNCj4gKwkJCQkJCQnCoMKgwqDCoA0KPiB0YXJnZXRfY2xvY2ss
DQo+ICsJCQkJCQkJwqDCoMKgwqAgbW9kZS0NCj4gPmhkaXNwbGF5LA0KPiArCQkJCQkJCcKgwqDC
oMKgDQo+IG51bV9qb2luZWRfcGlwZXMpOw0KPiArDQo+IMKgCQkJZHNjID0gZHNjX21heF9jb21w
cmVzc2VkX2JwcCAmJg0KPiBkc2Nfc2xpY2VfY291bnQ7DQo+IMKgCQl9IGVsc2UgaWYgKGRybV9k
cF9zaW5rX3N1cHBvcnRzX2ZlYyhjb25uZWN0b3ItDQo+ID5kcC5mZWNfY2FwYWJpbGl0eSkpIHsN
Cj4gwqAJCQl1bnNpZ25lZCBsb25nIGJ3X292ZXJoZWFkX2ZsYWdzID0gMDsNCj4gQEAgLTIzODAs
MjggKzIzOTUsMTMgQEAgaW50IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4g
aW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAl9DQo+IMKgDQo+IMKgCS8qIENhbGN1bGF0ZSBTbGlj
ZSBjb3VudCAqLw0KPiAtCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSB7DQo+IC0JCXNs
aWNlc19wZXJfbGluZSA9DQo+IC0JCQlkcm1fZHBfZHNjX3NpbmtfbWF4X3NsaWNlX2NvdW50KGNv
bm5lY3Rvci0NCj4gPmRwLmRzY19kcGNkLA0KPiAtCQkJCQkJCXRydWUpOw0KPiAtCQlpZiAoIXNs
aWNlc19wZXJfbGluZSkgew0KPiAtCQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiAtCQkJ
CcKgwqDCoCAiVW5zdXBwb3J0ZWQgU2xpY2UgQ291bnQgJWRcbiIsDQo+IC0JCQkJwqDCoMKgIHNs
aWNlc19wZXJfbGluZSk7DQo+IC0JCQlyZXR1cm4gLUVJTlZBTDsNCj4gLQkJfQ0KPiAtCX0gZWxz
ZSB7DQo+IC0JCXNsaWNlc19wZXJfbGluZSA9DQo+IC0JCQlpbnRlbF9kcF9kc2NfZ2V0X3NsaWNl
X2NvdW50KGNvbm5lY3RvciwNCj4gLQkJCQkJCcKgwqDCoMKgIGFkanVzdGVkX21vZGUtDQo+ID5j
cnRjX2Nsb2NrLA0KPiAtCQkJCQkJwqDCoMKgwqAgYWRqdXN0ZWRfbW9kZS0NCj4gPmNydGNfaGRp
c3BsYXksDQo+IC0JCQkJCQnCoMKgwqDCoA0KPiBudW1fam9pbmVkX3BpcGVzKTsNCj4gLQkJaWYg
KCFzbGljZXNfcGVyX2xpbmUpIHsNCj4gLQkJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4g
LQkJCQnCoMKgwqAgIkNvbXByZXNzZWQgU2xpY2UgQ291bnQgbm90DQo+IHN1cHBvcnRlZFxuIik7
DQo+IC0JCQlyZXR1cm4gLUVJTlZBTDsNCj4gLQkJfQ0KPiAtCX0NCj4gKwlzbGljZXNfcGVyX2xp
bmUgPSBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvdW50KGNvbm5lY3RvciwNCj4gKwkJCQkJCcKg
wqDCoMKgwqDCoA0KPiBhZGp1c3RlZF9tb2RlLT5jcnRjX2Nsb2NrLA0KPiArCQkJCQkJwqDCoMKg
wqDCoMKgDQo+IGFkanVzdGVkX21vZGUtPmNydGNfaGRpc3BsYXksDQo+ICsJCQkJCQnCoMKgwqDC
oMKgwqANCj4gbnVtX2pvaW5lZF9waXBlcyk7DQo+ICsJaWYgKCFzbGljZXNfcGVyX2xpbmUpDQo+
ICsJCXJldHVybiAtRUlOVkFMOw0KPiArDQo+IMKgCS8qDQo+IMKgCSAqIFZEU0MgZW5naW5lIG9w
ZXJhdGVzIGF0IDEgUGl4ZWwgcGVyIGNsb2NrLCBzbyBpZiBwZWFrDQo+IHBpeGVsIHJhdGUNCj4g
wqAJICogaXMgZ3JlYXRlciB0aGFuIHRoZSBtYXhpbXVtIENkY2xvY2sgYW5kIGlmIHNsaWNlIGNv
dW50IGlzDQo+IGV2ZW4NCg0K
