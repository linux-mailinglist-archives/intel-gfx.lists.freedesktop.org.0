Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6213CBB045E
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 14:07:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F33A410E06B;
	Wed,  1 Oct 2025 12:06:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="glsyWvSc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E56D410E6E0;
 Wed,  1 Oct 2025 12:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759320415; x=1790856415;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=af4IFGA11O3D8pviGsvy4hSwxMBsP+jebLQWJjye29w=;
 b=glsyWvSciukBlvAHpvJsTZu0WMh5gxy6F4oeLqhsCxbgIgedPkMpawUN
 9D9Wf++dbyjE3FmUgTXNLTU2NJaRifoSv35w5QxUgYYEuojuW675c34z9
 a/YEMm74f4muMbUpo2xL5QN4/oo28y4rlKGySokJH1KBxImQsfW5+nTXC
 E2W79gscr6MtY/MOeT0rVdwD+TqQG9I+JWHPsAiTa4zfTdfWikLEsn/pw
 45NZIHG9ELQG37WhZCH5ZEG/kU9GVlPnbPVTr0vkRGJUouN+VW9Gel/oe
 hlpc/XoUHgP/jCcLK1n4j714Sm8UTa614mtqbgocrEqwXVASxtFB6LlFt g==;
X-CSE-ConnectionGUID: MDm41ApZRRqIJrGC10t5qQ==
X-CSE-MsgGUID: 35qCpbV7Sv60ZeMKA9VUUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="49147479"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="49147479"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:06:54 -0700
X-CSE-ConnectionGUID: fIYApEvWRMW2acm5t0X9IA==
X-CSE-MsgGUID: Eu9uJBA1RgGop9Lqwh5iWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="183952454"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:06:54 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:06:53 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 05:06:53 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.63) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:06:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=apC5f1vrRce01BffpHbBvV64K0zaxxKnBJnKshC0Z8n6c7Zcjz/Q7DfHXrZBWNvsegXrSkDbx9wpQBWJlFz5Gazw+jTGq4oQ92/fZZM57A7Bej3aesJXw5gETzEnrKNbwErUZb4AHwob7AezFUePAheM0ugkZjbBrbYxGGN+54ijV7YG1bF3nSE3EfMVt46bZ9MJM4no1YNZ0CayXk98K7tAG/6MpGw7leNWteh2+qbgE+sHMYn0FSpzaXch5LGwwmUyIcMSrnkBDUBq/zxwXD6GncUvPHHJTC8yoVU0HXJxXE3SNRIkI2ckH9Juz3l3ZVOzgEUZCZbde52fIWqe8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=af4IFGA11O3D8pviGsvy4hSwxMBsP+jebLQWJjye29w=;
 b=DftK983mlnCXioiug8upzJAqQle/v7FFBuJkQX8hEQxWl4xJzxhPhaNZc20Du53LXx6fIvG/PYuvGSA9CK90gnXuCpX2Bt4+0ZcmsqI92Qz4UuFnmjy4CC/5q3jHk4vQFC4578nVgtKI+v7X9aj9OczoTa7NEMb/iYpwxxF/BkGRVmCPBXYf+KwYUf3heL9673Ovmnkax9FqX2TCge+76GDb07XGw0eKaXIw6VO0rt23KRlxwnpRPg9x22myRlzf8nc5XLxyk5b72Nn1YHfjC8YUgqwz21MPwud0cU5voSs1N4UMMdbVubvkyf8tm6RhuKg4uklPPyr91bmzGozrnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW3PR11MB4618.namprd11.prod.outlook.com (2603:10b6:303:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Wed, 1 Oct
 2025 12:06:48 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 12:06:48 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/i915: Deobfuscate wm linetime calculation
Thread-Topic: [PATCH 2/3] drm/i915: Deobfuscate wm linetime calculation
Thread-Index: AQHcKZCGWi6PQ8VnjkGWGLqhdV11a7StRJYA
Date: Wed, 1 Oct 2025 12:06:48 +0000
Message-ID: <2e068f58ee4f81caca16257a3016d516b75c186e.camel@intel.com>
References: <20250919180838.10498-1-ville.syrjala@linux.intel.com>
 <20250919180838.10498-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20250919180838.10498-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW3PR11MB4618:EE_
x-ms-office365-filtering-correlation-id: 215f491f-dc35-4af8-5672-08de00e2ffd5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?dmhkU2JqZTA2R2lmbm5HTG1DK3piM0VkSmk3d0ZuV3dUNEQvSDNjaW9lbFRp?=
 =?utf-8?B?YkhvM0lacW1xemxlNW9Mb25QMkcwSzVNVjRxV1J1YjJVMElsRk1xNnh4ZTBy?=
 =?utf-8?B?RkNVQXpYZmZWSUFURmk5K1ZZV2J6MGt2d0ZsN3JOMkFrQTRleFlDRExYVUVa?=
 =?utf-8?B?T0RzY1BHVGcrWWpHVThRV1ZWZTdvVkdwZC9OemRkdjJvSTN0OXFRRHRhT25V?=
 =?utf-8?B?elhNcXAwTG1uL2l4WXNpYUtZZkQ5WEJzSWF1WWZFbnJqSFJqM1d6Sk5mbHBr?=
 =?utf-8?B?TnduTHFmeUpheWREbkdIZTVaWENIQ1QzUU9tekVMUThCemxUNEIvUzROZDA1?=
 =?utf-8?B?c1BiVUNPZXRyaTgyN1RhMDdqdjBHTlJTOFQzN3N6L290NllSV24vS091bkQ5?=
 =?utf-8?B?ZlgzMmtVVDhqSG9IK3dXNE82bU1FNTlWLytobktWeDdoeTdKMnJHSWl6bjYr?=
 =?utf-8?B?NnZlVlIyZVIzRm9iTVpBa3Y4TTRQR3dnV0lHR0ZiOGpTNmRqU1g4VUtLN2dY?=
 =?utf-8?B?bGdORXRzVVc2ZElid2I4Z05lWThSam9EWkMrZ1FhZ1Z5QWMvNVBJbTdRR0Fj?=
 =?utf-8?B?Sld4aVJjL1BIMXpZOVJzTDZCV3YzRGs1aThmeU5zTmhHZHhJdGtDMldVVm1l?=
 =?utf-8?B?YkZ5VEF0OU1HV0lUd0NFOHBuU2t5d0djbGtGbVUzdkhGYmxpbjZnNERvbWV4?=
 =?utf-8?B?VkxKRmZiM1ZXem5PNlZ0U1pwNDU4enUwOWhDOEEwQzZxdUxYVFhKM2szN0NC?=
 =?utf-8?B?Zmc5amQzT0pjQWNFRG5zelpNa09rRFVuWXEralh3eXJ4dXMyWjN0eFpXTjZM?=
 =?utf-8?B?ZjVpbFoxNmpGdVBLV1NpZlF4R0ZTWDZxSTRBUi9pYThvTUk1YW1ia0lJQ2lQ?=
 =?utf-8?B?VjRXSGdsMFBzN2Q3MlpTeHB4bHA5eFhJMHQ5bVpwS1NLUW4yK01wQjFLemlI?=
 =?utf-8?B?dkRPc05Ed0dTbFh2YnNBV3NoRTYwZmptcFVTeWw5NU0xZFdmNGtITjE5bFg5?=
 =?utf-8?B?NEYyNCtOaEo1OXVnZkRobTZQVjljUmw3a0RiZVBTTTJaRSt0d3oyY2Y1elVZ?=
 =?utf-8?B?cWVLMnhYbElQSlZWWlNzUmwwaUh0MjlJWUluRnRjaEY3RFR4dGlYOEQ1WkNt?=
 =?utf-8?B?MWNkZU5ycTFVR01jK09XNFdlbGg4NUV0cndmaHR2VXh2R1BxM2hYdHFhb3hS?=
 =?utf-8?B?NVR5dDQwMFNtVkVBQVpsdFNBT0JTT2FrVlZrajZNOGhNNkhFV2NyS1pIREZN?=
 =?utf-8?B?NEd3T05ONXdmUTZxQ2haRE1OVkpYY1lrY0JNdGJ1Q1ZPUnJocW1BUzI5WjRW?=
 =?utf-8?B?RkU3b1htcTgrSERWR3FMMjdYY2JwZVh5UUZMWno0NUdsMnAzb0w3eXNwRGZB?=
 =?utf-8?B?RFhEYkE1THFWQ244Z3JVeWdCNkdsUUcyS3ArRUhmVmZXU2k3UXhldGE2cnkz?=
 =?utf-8?B?V3B0ZTgySG1TVFVVWnBWTmphM0UxZEM0bXFEcS8vOUV3c2tSWGowSllOMUg4?=
 =?utf-8?B?UTlvbkwra2NqWjJXM3FKTll0ZG5nZTlrcHdJUXFQZ3ltVi9CK2U1ZkFYcmU1?=
 =?utf-8?B?YzhOK0RiUUdMOU1iVHpUVlFRYmNuSDl0T1VEUVpxL1JGYjljRXJGbGx4bkMw?=
 =?utf-8?B?enJDYVI4ZWQwSGpLbWtBVGVoTjBQSVQ1NHdBTEpBQU9SbXdZc0JYTjdCc2lV?=
 =?utf-8?B?VW1qU2RKb096aStrT010OEdURFBDKzNQbUs3QjhPYklmYmxFNzB6M2RPV2lL?=
 =?utf-8?B?WjRySVRBd2Njb1FVZGsxaTNhUTlSSCtUN1NYZ0ppRWM3Vk03dWJEWE9Sendp?=
 =?utf-8?B?YmlHK2hCODdhODVUVi9oK1dQanZGMTd3OTRsUkR4WXJBcm1TZ2YxaHdXQjlQ?=
 =?utf-8?B?dy8waVZEbGlCNFJla0ROYnZqejJMcllZMmxqSDVFOTArdW9tVzBVUEloK0JV?=
 =?utf-8?B?V3BiQ3QxSVdEVjFaVCs0S1k2dWlUMHVRZDRGMm5NTVVORm5aMzkwQ0pIb2RJ?=
 =?utf-8?B?dHBscCt2SVlBOWVibERLaEo4cmNJa3JkTTNrNW9aR3hWbmNXRTlySEhUd0ZX?=
 =?utf-8?Q?4GV2Em?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?azdVMGhVaFE1bUdlV0o1dTA5UlZjTXBkVUpBRTBYejBpU1ZSK1lnQThKMTZG?=
 =?utf-8?B?QlJtV083Mmp3S2VaV3JsZUhLVmsrc0h6QVh4bEpqVFVKV1ZRSTUreEJhbnE1?=
 =?utf-8?B?Qm5WbFZoL1dERHZ4cStaUHgxZmVQMzJZYlMwc3NlVktqQWw5RGpsd0t5Y0k3?=
 =?utf-8?B?VDFrWm01VzNmcEtDS1RHS2Era3J4OENZZHpyK0dDZWJHZDB4TDhqNTZWSDB3?=
 =?utf-8?B?dEs1UVQxc3FYdWp6VjVMa2ZTdlNuNnZJTnJKcmpvUUJjb2w2amZhRDZESnFG?=
 =?utf-8?B?S05CeFFnTnRvdjRlamh2aFR6SjNhZGt6VmZXSzNBMUEyR1g0bmZSNmJ0aGhk?=
 =?utf-8?B?RDF5U0NaNThzT3NhV0VKZHorRzlzQW5NajNLREU1K3NEUG80SDVSVFdYRGs0?=
 =?utf-8?B?czhqZkZoNm96RmY3dUZScmdkUFdMS1AxLzZ1QUZnQ2t6OW03RU1KS0kwMElM?=
 =?utf-8?B?ZFBWZFVERnBqdDROcGk3UnhFL1paU2pKMzRzeW0xM2lzY0Y1VzlHTCszZWpS?=
 =?utf-8?B?SzFRSHVvZjNMQ1pHNEp0dGpaQkJVQmQyUit0cXUrTGNaOXZQSE5sNEhma1Rt?=
 =?utf-8?B?NFNBNGdDcnJsZS9QNUI2SlBVWExxbnJTNllkbDluNWpxcGw3blR3amRPS0Nm?=
 =?utf-8?B?amptRXl3cFkrN2F5TUVUNzl4RVYwSTNER0hMMFgyeHgwN2x3U21vR285Y2ZT?=
 =?utf-8?B?NzNMYTZzQ25SdHk5bitIYVkxSFRhM2JaZmY4ZG9UcFFWNzhkV0k2cGRGL3Nk?=
 =?utf-8?B?ZkxWSW9MR3QyZUtweFBoRHQzcjUzZjdya00za0VCeE5qcm5oZzF2R3Uydm9R?=
 =?utf-8?B?MGE4OGhiMUhvYjdDOFFTUS9zbmRoNW94T1dsZjhuaXRSeFc0eWlaVmFiSkNZ?=
 =?utf-8?B?bXZWL3NkUldLaDkrOTR2djhzTFl4L3JYTUpvVWN3MUlROTRmSi9RSHpJTDMw?=
 =?utf-8?B?b3huckFHU24wbXk5TkNZVXJiamhxZVFXZVFNUUVQZk1mN1pCNmRBN2dRcmVN?=
 =?utf-8?B?QURwVlRNRTluSjJxMEFRZnU2bjh5VXc4NmROYUhOMkUxa0VUd1U2SEtacGFm?=
 =?utf-8?B?Rk9UbmlSVXY3Si8zTGduSTBwN2J4RW53MUFGRU1INEpMT1AvekpkZG56UWhV?=
 =?utf-8?B?LzdOWDkxd3BOVHJMbVdVY3VheGVFY3dsbHpzUjBheGROVlltNWFzUWZ5anNV?=
 =?utf-8?B?OWFvRC9YeGRYdnJFU1Azbk5DSGxyUXQ4cXowd25seUxjTVcwWiswcUYxd25X?=
 =?utf-8?B?LzhpZU45L3BXTzVHZy8xZEhOUEt1eHBvTFpiVTJUeEF5QVFnd2dKZjVPRDM0?=
 =?utf-8?B?MnB3TUxHM3NPN05SaWFCVm94SWdhdEFWSC9rTGorSVdKQ1kxclhWSmpzT25R?=
 =?utf-8?B?SFJUTTBBdFdlZ2dpdnYvUjByNkRJSlhhVi9YMXE5QTV0VXc5dUExbWFONVQ1?=
 =?utf-8?B?M0VKbEVWMHEySXkxSWZPc1hKMXNVWjA1enRhN0JyVWVESjFFeFZ1amFqQ0VD?=
 =?utf-8?B?VzBhUFF1NEJFYkhKSzNacUhDRlYxRUQ0MGJTNWV3ekRGeUdsK1ZhY2x3bUxW?=
 =?utf-8?B?REJTN1lKcHNodUFMQXVDeEkzcTZpUzRoV3BDZmJDZHpiMytBN3VnWjI0eXRn?=
 =?utf-8?B?L29lK3VoNk1ramkwQXg4V3hGRHQ4bTZxVEFvN3hEbjBuNkE3THRleFBROG9x?=
 =?utf-8?B?N2ZUK1NYTFJ1Qi9YcTREY1FqcXJRT0tjTUZhYU8yZTZMYXo3R2V0VndlWUE0?=
 =?utf-8?B?MU9keGRJRzlMc1JVRkQyUnByU0pFOC9aanRoT0xuL3pNWFJkSHpCY3FzZGxC?=
 =?utf-8?B?WFVZVVgrekovRTR6bWFpcktXMThTbExnWDNVa085ZmVGOE1oOUZ1c2VXeUV3?=
 =?utf-8?B?OTRzVUZjYmtIN0dJaEJKVFM4NkRxdGtqQmtDOU94NjhZc05WMlBmZllDTnYw?=
 =?utf-8?B?eHFKNkNoZWdrYjhna3RpNTlhcXNTWUdING9XRjVPZWUzZXV4STVHTFNXZmYy?=
 =?utf-8?B?Z3BLL1JuRS9McEtrTlFaRWVxSnVvdWpiUVRIVk1lNEdwdnZJNzJNRHg0NkJp?=
 =?utf-8?B?VnA0ODJ2TGtnK3o4ZXpaZS9SVGoxZk1yVGdyTi9LSGFwZjRabDYvZ0kycWE4?=
 =?utf-8?B?Z1pSdGNweXk3MW84L1RvZjdxNWlsWnBybTNZTXIxTzhzRWFkQnB0WEpTN1FT?=
 =?utf-8?Q?xWkW3Ott6GglFSSx768/2N0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F52FC1EF74F19F4DA6CF93D4F2EB2038@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 215f491f-dc35-4af8-5672-08de00e2ffd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2025 12:06:48.7414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W5qbyKkBERzEha8JyT3SEasd8clbD1wvKyJsNrWs5c1F5KEkIJN6MmRC+mjMr+y0jG9OZDgbr6KIhkG6/JgJX2fA6fl1DT0rJe+RFXr+JW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4618
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

T24gRnJpLCAyMDI1LTA5LTE5IGF0IDIxOjA4ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gaW50ZWxfZ2V0X2xpbmV0aW1lX3VzKCkgaXMgYSBtZXNzLiBSZXdyaXRlIGl0IGluIGEg
c3RyYWlnaHRmb3J3YXJkDQo+IG1hbm5lci4gQWxzbyB0aGUgY2hlY2tzIGZvciB0aGUgIWFjdGl2
ZSBhbmQgcGl4ZWxfcmF0ZT09MCBhcmUNCj4gY29tcGxldGVseSBwb2ludGxlc3MgaGVyZSBzaW5j
ZSB3ZSBrbm93IHRoYXQgdGhlIHBsYW5lIGlzIHZpc2libGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYyB8IDIxICsr
KystLS0tLS0tLS0tLS0tLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MTcgZGVsZXRpb25zKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8
dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gaW5kZXggYmRkMDA1YzZjYzJkLi4zZWFh
ZjI2MTAwZjEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2ts
X3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dh
dGVybWFyay5jDQo+IEBAIC0xNjM2LDI0ICsxNjM2LDEyIEBAIHNrbF93bV9tZXRob2QyKHUzMiBw
aXhlbF9yYXRlLCB1MzIgcGlwZV9odG90YWwsIHUzMiBsYXRlbmN5LA0KPiDCoAlyZXR1cm4gcmV0
Ow0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyB1aW50X2ZpeGVkXzE2XzE2X3QNCj4gK3N0YXRpYyBp
bnQNCj4gwqBpbnRlbF9nZXRfbGluZXRpbWVfdXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsDQo+IMKgCQnCoMKgwqDCoMKgIGludCBwaXhlbF9yYXRlKQ0KPiDCoHsN
Cj4gLQlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0
Y19zdGF0ZSk7DQo+IC0JdTMyIGNydGNfaHRvdGFsOw0KPiAtCXVpbnRfZml4ZWRfMTZfMTZfdCBs
aW5ldGltZV91czsNCj4gLQ0KPiAtCWlmICghY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQ0KPiAtCQly
ZXR1cm4gdTMyX3RvX2ZpeGVkMTYoMCk7DQo+IC0NCj4gLQlpZiAoZHJtX1dBUk5fT04oZGlzcGxh
eS0+ZHJtLCBwaXhlbF9yYXRlID09IDApKQ0KPiAtCQlyZXR1cm4gdTMyX3RvX2ZpeGVkMTYoMCk7
DQo+IC0NCj4gLQljcnRjX2h0b3RhbCA9IGNydGNfc3RhdGUtPmh3LnBpcGVfbW9kZS5jcnRjX2h0
b3RhbDsNCj4gLQlsaW5ldGltZV91cyA9IGRpdl9maXhlZDE2KGNydGNfaHRvdGFsICogMTAwMCwg
cGl4ZWxfcmF0ZSk7DQo+IC0NCj4gLQlyZXR1cm4gbGluZXRpbWVfdXM7DQo+ICsJcmV0dXJuIERJ
Vl9ST1VORF9VUChjcnRjX3N0YXRlLT5ody5waXBlX21vZGUuY3J0Y19odG90YWwgKiAxMDAwLA0K
PiArCQkJwqDCoMKgIHBpeGVsX3JhdGUpOw0KPiDCoH0NCj4gwqANCj4gwqBzdGF0aWMgaW50DQo+
IEBAIC0xNzQxLDggKzE3MjksNyBAQCBza2xfY29tcHV0ZV93bV9wYXJhbXMoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IMKgCXdwLT55X3RpbGVfbWluaW11bSA9
IG11bF91MzJfZml4ZWQxNih3cC0+eV9taW5fc2NhbmxpbmVzLA0KPiDCoAkJCQkJwqDCoMKgwqAg
d3AtPnBsYW5lX2Jsb2Nrc19wZXJfbGluZSk7DQo+IMKgDQo+IC0Jd3AtPmxpbmV0aW1lX3VzID0g
Zml4ZWQxNl90b191MzJfcm91bmRfdXAoaW50ZWxfZ2V0X2xpbmV0aW1lX3VzKGNydGNfc3RhdGUs
DQo+IC0JCQkJCQkJCQlwbGFuZV9waXhlbF9yYXRlKSk7DQo+ICsJd3AtPmxpbmV0aW1lX3VzID0g
aW50ZWxfZ2V0X2xpbmV0aW1lX3VzKGNydGNfc3RhdGUsIHBsYW5lX3BpeGVsX3JhdGUpOw0KPiDC
oA0KPiDCoAlyZXR1cm4gMDsNCj4gwqB9DQoNCg==
