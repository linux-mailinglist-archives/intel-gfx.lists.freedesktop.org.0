Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AB5ACDF5B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 15:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64A710E6EC;
	Wed,  4 Jun 2025 13:38:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K8O1Qez+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2AA510E6EC;
 Wed,  4 Jun 2025 13:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749044293; x=1780580293;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=bV6nK/yGOAdmBVfYirUuE6Hq+rqmdrw+5Z5NH/efLCU=;
 b=K8O1Qez+AXtWgK4++adyYHlDBasO8Y5HRf4wj75cPty43dC9ux/2C+jq
 YVt+l8FF7u6/jSCmVsaldCtt2QFKYhrW9VYvHUWvWgb7wgLjZ03/qFXod
 fVyu9+rVpwP3ZBfsLcBDwzuGfMCa4eb8w8DbtUCO2u4iuJ0jYa6lWTIga
 WDNnKZOl8s9BVgBdlrBVxceQ+37U4IFso5tlrlv1AZkacISqHGrAJHq9y
 ExBXKSomcZNYredcJgM7pP3tY0zo8g4RY51/nNcrJtBynwqf2FIc7fqd8
 9CfsCPS6O2/bxs+SjLTPe7urqXhNDnEnfiWucadRTduAPaduUpMNNlKsw g==;
X-CSE-ConnectionGUID: bVyRL1LPTs2RTN9THfhcxA==
X-CSE-MsgGUID: Pgy3QTAgQCqoX1RzE8Zv0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="50989971"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="50989971"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:38:13 -0700
X-CSE-ConnectionGUID: lK5blYx0SGW9HVAZDNjoUQ==
X-CSE-MsgGUID: I5JmU4MdTM6UeI8iP/WJEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="145090378"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:38:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 06:38:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 06:38:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.50) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 4 Jun 2025 06:38:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TRZReGDSIemr3Bu9Z7cOjJR2NvwaktSpNOVEPlu0Ykc4S2XdMHUaMZbVtbuAc6s503L5tDc727PXjFrAssdmP4IOciZeJpBjlkIoChQc0bt7kwM4duMkA3RecUvCFPYsS0iX5GRqstxY9CqQs/VPVFqU9abBwu9WXKiWOAH1N4aN66Mcv+YHognwVGWkgJA7LqAtZPazPVprjah1YHpYujxx4wkF5QTpBmkGJbJsQvgtgdAhrHTI1+AF/iSUWcicH957XjN9XHK+l0y5i9ylOlxAKb2xreO46OxH93+A/3/vVk3JbeS7cBFuIvvKIf9+GZ5wAtuKp/RHLIW1yO/WfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bV6nK/yGOAdmBVfYirUuE6Hq+rqmdrw+5Z5NH/efLCU=;
 b=TNH7sl6A516f8NBBbw/Umn5OXTCAGs2n9UAk1EVEb+5++kzeJafrxbsHeP8bYczhgQkKBnxos+Bsam3Fmj1wMjyZdTqPWVqVE7mNhKV1mSIA0WJvYkgcXr61PYN4b6FUxYryh2Rt0jw0Qvi8VgVW/nHHpnZiO7nDmwiHf4rSqCSOsBaF+o5RmJmoY97nwpKeOK9HyAw9FGJpFQqsPmbpV3NMVac1gnzcHYTTMToDB4pkYemZCEMROIkDFfanEME14bp8cCCblLzIT+8AWMQ46o2BTRvlpJ8AC1F+42Jm87Ft08lYc/bXWCGWFewPJnj4J6j3orY31JFFAAG8rBuyaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB8132.namprd11.prod.outlook.com (2603:10b6:8:17e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.34; Wed, 4 Jun
 2025 13:37:49 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.8769.035; Wed, 4 Jun 2025
 13:37:49 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [RESEND 4/6] drm/i915/dram: pass struct dram_info pointer around
Thread-Topic: [RESEND 4/6] drm/i915/dram: pass struct dram_info pointer around
Thread-Index: AQHbzuleyUzE6dNbb0OoM9EKK23FErPzDeUA
Date: Wed, 4 Jun 2025 13:37:49 +0000
Message-ID: <c385505d30bd81b9ed6a7c80b87ffc69372685ab.camel@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
 <8ac6b308b210cf4a429d5abfb9bf32737dcab51f.1748337870.git.jani.nikula@intel.com>
In-Reply-To: <8ac6b308b210cf4a429d5abfb9bf32737dcab51f.1748337870.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB8132:EE_
x-ms-office365-filtering-correlation-id: 666f5be0-2f4a-4b45-a6da-08dda36cff99
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WSt2Qm5Cc09BM2FnRDhnOGd0UGZOTHdyUE55WjV3U3BZU1FDR3hoTFNiOHJU?=
 =?utf-8?B?VTFSRVE3cmMyRnZLNVJ1K1U3RHlnRzQ3VzV6ME5FRG9zcDFWTlFFZm1nbEtW?=
 =?utf-8?B?Z1QzYVpBZ25hSmhTWjkrNktGWXd6R2c5NFV5a3J6ZVBMOCtYdXVQK1VBeVpX?=
 =?utf-8?B?cWxnRXRGdDJkWXRUR2RCbjIvNmJQVm9kakZWek9GT2kzaEN1anlERzU1dVNW?=
 =?utf-8?B?bFpLcE5QekJBUTlKVXZHY1h1c1EyOW85blB4VzBiMkxIbm9SaFZNaXY5cXMx?=
 =?utf-8?B?Zkh1V0F2VDJZMlZnQTN3RWVIRWcwalRubmkyNWFwMmluWFpPV2FwTTVIVTdh?=
 =?utf-8?B?VWFCdDhhUzU1Mmg2M0xUem52Z2swWGJob1F5ODFCWE1JOTMwSTRSelhUTm4r?=
 =?utf-8?B?YTZaeVg4VVZLVlhqYlRFQjM2MFRSRm1DNFllTzEyY0ljMDFHTmZmQWlNYUJs?=
 =?utf-8?B?dzZIQklHRjNCSjYrY0xYbWhOQjBkbXd6Zm53TSsxK1BrZ1h5aTFCWUo3TW4x?=
 =?utf-8?B?OUtOcFVWQ2tXa1NXcWxScE05MlBjazRDdVJRN1RxTCs1d1Z5d1RsdFoveHF1?=
 =?utf-8?B?Q1IyWjB0cDBOMVRSVDRZTjFQa2c4WjZabDhyd2NsS3N5YjVENXZ1VUJMU21x?=
 =?utf-8?B?dndidTVlR3VKWENEeDk4cTBiZzEzVElaZHpmaUEyTlFvNGlzcHUyWEVyS1o3?=
 =?utf-8?B?NjBTK0NBZDVaNC8xM0pFZkh4ZW5zRjZlNlpWZitCZmk4UGxGcEdaQjVYUmcv?=
 =?utf-8?B?VzIrLzVmTkpuNHI1cStVMTE0dkx5bXJFMGZqZENpRVFCRFRsSTFqbS9JWURz?=
 =?utf-8?B?Wlpwd2RiY3lLVjlhWktaaW5qaU1rMGxhL20vMktNelBKOE1nakNpa2t5amov?=
 =?utf-8?B?Sk9EOThteTRrS2hyV2U0aDFBUDQ5MjhmOUJYUzdvUFpNakRTeVlNam03b29h?=
 =?utf-8?B?YU5BR0U5cjZ3V3JHNGlkRzdVNVJtbTZSQ3E4YzUyNzRwZEhTL0Y3RnVYSTR6?=
 =?utf-8?B?WXh5cER4QmdQZDkyMHdhRm84OGhpNnRJMFpJL3AwSGlFWXZFZlo5YmNqRkxN?=
 =?utf-8?B?V2w4TmJubzlUdktiaytsTlBRbkNQZ0U0UnJ6WGxxQ3pZSm1iUnBiSUxnRWZn?=
 =?utf-8?B?MlBtelBodm02NGZIT2xlQndldTR2NzEzR2R6YlFUbXlrTXp5QlF0WkxoSy96?=
 =?utf-8?B?SmF2ZmEzZThlMlpwcXd2RTBvaDFJRUU2YkI0ZUt5aDdJS0FpR0VKN2Z2WUtM?=
 =?utf-8?B?TC9wODR1OUtOL0xPeExoVHNkN254Ny9ZQWNocDFudXoxYmRZYnkwOHkwYW1o?=
 =?utf-8?B?VmYvRGVIbUFocis2UHNOdkNvMzNmZ2IybnJSYmF5VjhVTjJJR0Y2QkRtZFEz?=
 =?utf-8?B?SmJybGZrcmo1V2VyclVBb3o2endUUFdaY3hpTFhWMXFnQnZTMlg0NTk0MFZt?=
 =?utf-8?B?M1FlU0l3QXJ2L0FWZ0VzWnFJZnlUQlg3d2tLU0FSNmJFQXoxblYvMkl3Smlt?=
 =?utf-8?B?TFBYK3F3Q0xjQkhiVHgwMEZENCs3QjNva0cwMnBwcjRSU0FyeFFuNlFOaE5M?=
 =?utf-8?B?cmFQTCt3QWtOVFRPWW5aN2FQektyQnlTMGxuVkQyUmozSERqME1Mb3gvSWJT?=
 =?utf-8?B?NkdldVhnRUxzZkt4N1ZlbDdQZEhad3FmdGhpendrTmgvM3J3dWlOTlF2bll6?=
 =?utf-8?B?T0RRK0Z6VjNGVStaZ0J0bVNsRENBMVpDWkt5aWV5ci92bWFvUTc0eHNZUmMy?=
 =?utf-8?B?U083SmZ2RWY4Y211VGsvYjI2bkd1ZjJ0azQ4VFVYTFljenRwcUsvQUs5SDdC?=
 =?utf-8?B?Vyt1ZlF6QnYyZndZdHF3ZmdpYjEva1VLbFRWN3VUR3NXbVMwWDdQVW9kUFZH?=
 =?utf-8?B?NGh6cEVVa1FzMTV4clVvYTAyaGZvLzlZN2NBd0R2REtvd2xjU1VQVHhqczVw?=
 =?utf-8?B?SW4rUUVGQmdBNisvby9UUDBKOFk0c1V4bTNUV3RGbTRSeFVLTUFFbTJuMjRy?=
 =?utf-8?Q?+fGHQ9H12dH5vbdouI2bPPL5kTxTwM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WEZkNFRCUmhIa1lOVlhQZGduaHl1U0I0SkJGb01ETXpzb0FvZVQ5aXZwUUZY?=
 =?utf-8?B?b2hWR0xNZktHcVc0VjBiUHUzQTYxQy92N1c2Mm40RlFLazVoVkNXaVJZa1Nt?=
 =?utf-8?B?SEZJU3c2ekR6QllOSlBsdUFBcHdsMFVFRk92Z3VDQ3FaelhJc2RaRmVyZjBD?=
 =?utf-8?B?V2RXR3RTUnl6YS8yeUxld2VKNzh1bnBLN1k0Y3dYbWpBTVNiNTVSbnhDTlVq?=
 =?utf-8?B?bGdiMGVDTEdPQXR4V3U3NFFxeVBKS1czdXd5VFpMeENYSTB1Y2dXcWh0SjMy?=
 =?utf-8?B?WnB3dEJZaWRTL1ZKYnFOUkNGL2VSdzRRbXdramlCTUQ2clJIbjZsWEJDWnZ0?=
 =?utf-8?B?NWFKVVV3MExieUFHbkVlZzZDcXAydVFEK1p4V1I4NG16ZkJXV2duUVcxQVdp?=
 =?utf-8?B?RUZqcDMrSnhzR2xJWUFvSzk5dE5raExkalF2MXV0dW5STjJNSWt4SFcrWXJt?=
 =?utf-8?B?cnBjUENLYVNqRTREVXZDYit0TVZjRTR5bFZpY2k4TzdYSXFWb2NJUjRtZno3?=
 =?utf-8?B?em1SS0lyMzNDdHRIVUZxbTgvakx0TTgwclNaNUhZcHdNbmM1VkhHMDB5OWJw?=
 =?utf-8?B?MmxHZ0trNm04NzVqYXRtODVoV2VTeXdORjZGbnN3UEgzazNOaFZXbUZiY0ZV?=
 =?utf-8?B?Nmd6Smg2OC90T2loVFo1RExDK2ZlVzRhUTU0QS9YREhMSkdSRUdYcW80SXR3?=
 =?utf-8?B?RVlpL2hZWCtRVmlwUEJJbWFFSThQZkhpZ0V4SjFMVURSMUdpWHZ1TWpVbEhq?=
 =?utf-8?B?SS80SS91bVJaZkswSGZhMlVNVUgySXZIZW1CdFZISHU1NnNFL2pmQnBRMmpR?=
 =?utf-8?B?WWdMei9aK0N1SVpZS21mWksxNTVNTldNK0pLeS9VcXNVV2EwcDlOb3dKbU0x?=
 =?utf-8?B?TlExZk9VZmdZWmRzR3VLNW9DdHdqWStTemI5cmxnRVZjRktCMWw5Sy9Mbm0x?=
 =?utf-8?B?cVVKZCtHc3NkL3ZDVkEvNTBDNTdNZm1XRE9OYkJPZzhWL2JONEFwL1lSTzRS?=
 =?utf-8?B?dWpCVmxMdDV4TmRsUURraXB2QlhXT1BreURCR3BwVk1yK1hOZllmVUZNbGV2?=
 =?utf-8?B?elFseVRQT2UyMTFtSmVlOVFrYU1ldTdob1VtZGFIbXA4Z3EwUm9yNElvdzkx?=
 =?utf-8?B?RlNzQnZJRmt2LzJ2Y2hVM3RGL3N0TGtSOC9GQlB4dUdjdDVwcEx5VlN2eU1D?=
 =?utf-8?B?bFNWK3Iyc1FjVWQ0d0hUSmVCdjJIS0JnYXNyTVZXZk9JdUo5Qy83dHdBWlcr?=
 =?utf-8?B?bTd2UlJkNTN4YUFGVmYxQkZVTkhpWDFFN050cUt6Y0J4L2lBYnlubWcwQjM3?=
 =?utf-8?B?OEF3Q3pSa2hxc3htb05nbnBDcnltTW55SngwRTZ1bnprRGpOSGl5YUp4ekdx?=
 =?utf-8?B?YW9ENGdPbG13TVpDTUUrekVOcURISlF2ZHJJMnJya3czVmNTVHZNVEpWZ0VH?=
 =?utf-8?B?T1VIaWo5YVg3K1drbC9abmFVU2dVamhjYWJFdnVLUEliSkk3VE55ZlZ5eE5E?=
 =?utf-8?B?NkJOaTY1UWU5cUpqNENkT2RnZng3ckhVSndyZzZWVzNlaFNuUEdYYU9VTUhM?=
 =?utf-8?B?NGU5UjB2dEhFWjJMcEd6OTlNeUZHZ3R2eXpxQkdMWGdyYnB0M1FFMzRxbE10?=
 =?utf-8?B?N0ZBakJDWXkzeUNjME1IMlU4R0d5UUMvdEZYbGI1R05WTTBGZ1ErbWo5VEY4?=
 =?utf-8?B?SDJ6dmR1THF1MlpyRXFTVlFqUFdjeldXZEJxZUxiTlNYTnZWRzdoY2xoWmcw?=
 =?utf-8?B?OVFSZWwwWkNNMXlZVG1UYmZjSks1bXZhekhmTkxNb0pnSG5jSGRPZC9uYjhD?=
 =?utf-8?B?OTQrNGpjeWxMUG50ZVB2eHc3dXV0Wk1kQzlNSVd0QktXOUNvRmFLOG1aV3Rs?=
 =?utf-8?B?ZFpENW8rb1RsNW80M2k3bnBGenQwbDBweVZJbzJQZEdXSkF0NjFwZ1JrTkwy?=
 =?utf-8?B?NXJqS1JzcUdCMDVNY09Wd3RvVTNKVVBRUUdEUndKVUlXMXZhM0cyMXdNb3Rk?=
 =?utf-8?B?ZVZ0YXlwZkM2RFdiNE05SDloeVZuaVBaVElGMmhNYi8vL2NVWUJldjl4YjZS?=
 =?utf-8?B?TWlsZWxLZkliRTY4aVVEeWp1ZzBGaXJYKzNrREZtbmdxbjFQcGhkbTBVTUJ6?=
 =?utf-8?B?Y281eHhEMHFiRlo5d3RkVWs1U1VHdFpXRzhLeEJnWkRnNWVGNUNYSlBsWVVi?=
 =?utf-8?Q?h4LtQhJXlxm0U71MCyenVaQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F9AE3B3C14B17A448E5240CA4FD9C57D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 666f5be0-2f4a-4b45-a6da-08dda36cff99
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 13:37:49.6342 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CA4JFYC+619inSC1GTSaj5Ehyt8pmv7WF+7k41fyy3GibE7r7Yp2upBf0gcxRgilTvTJr9FYvAMrrL/Xw2zrrklevpwqFhPc1aWKdYlLUSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8132
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

T24gVHVlLCAyMDI1LTA1LTI3IGF0IDEyOjI1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
RmlndXJlIG91dCB0aGUgc3RydWN0IGRyYW1faW5mbyBwb2ludGVyIGluIG9uZSBwbGFjZSwgYW5k
IHBhc3MgdGhhdA0KPiBhcm91bmQgdG8gYmUgZmlsbGVkIGluLCBpbnN0ZWFkIG9mIGFsbCBwbGFj
ZXMgcG9raW5nIGF0IGk5MTUtPmRyYW1faW5mbw0KPiBkaXJlY3RseS4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9kcmFtLmMgfCA0MCArKysrKysrKysrKystLS0t
LS0tLS0tLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMjIgZGVs
ZXRpb25zKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2Qu
Z292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRl
bF9kcmFtLmMNCj4gaW5kZXggNzZjMjI1ZmQ2YzcwLi5mNDJkY2RiNzRkNDAgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9kcmFtLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uYw0KPiBAQCAtMzgzLDkgKzM4Myw4IEBAIGlu
dGVsX2lzX2RyYW1fc3ltbWV0cmljKGNvbnN0IHN0cnVjdCBkcmFtX2NoYW5uZWxfaW5mbyAqY2gw
LA0KPiDCoH0NCj4gwqANCj4gwqBzdGF0aWMgaW50DQo+IC1za2xfZHJhbV9nZXRfY2hhbm5lbHNf
aW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gK3NrbF9kcmFtX2dldF9jaGFu
bmVsc19pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgZHJhbV9pbmZv
ICpkcmFtX2luZm8pDQo+IMKgew0KPiAtCXN0cnVjdCBkcmFtX2luZm8gKmRyYW1faW5mbyA9ICZp
OTE1LT5kcmFtX2luZm87DQo+IMKgCXN0cnVjdCBkcmFtX2NoYW5uZWxfaW5mbyBjaDAgPSB7fSwg
Y2gxID0ge307DQo+IMKgCXUzMiB2YWw7DQo+IMKgCWludCByZXQ7DQo+IEBAIC00NDYsMTQgKzQ0
NSwxMyBAQCBza2xfZ2V0X2RyYW1fdHlwZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkN
Cj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIGludA0KPiAtc2tsX2dldF9kcmFtX2luZm8oc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ICtza2xfZ2V0X2RyYW1faW5mbyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGRyYW1faW5mbyAqZHJhbV9pbmZvKQ0KPiDCoHsN
Cj4gLQlzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtX2luZm8gPSAmaTkxNS0+ZHJhbV9pbmZvOw0KPiDC
oAlpbnQgcmV0Ow0KPiDCoA0KPiDCoAlkcmFtX2luZm8tPnR5cGUgPSBza2xfZ2V0X2RyYW1fdHlw
ZShpOTE1KTsNCj4gwqANCj4gLQlyZXQgPSBza2xfZHJhbV9nZXRfY2hhbm5lbHNfaW5mbyhpOTE1
KTsNCj4gKwlyZXQgPSBza2xfZHJhbV9nZXRfY2hhbm5lbHNfaW5mbyhpOTE1LCBkcmFtX2luZm8p
Ow0KPiDCoAlpZiAocmV0KQ0KPiDCoAkJcmV0dXJuIHJldDsNCj4gwqANCj4gQEAgLTUzOCw5ICs1
MzYsOCBAQCBzdGF0aWMgdm9pZCBieHRfZ2V0X2RpbW1faW5mbyhzdHJ1Y3QgZHJhbV9kaW1tX2lu
Zm8gKmRpbW0sIHUzMiB2YWwpDQo+IMKgCWRpbW0tPnNpemUgPSBieHRfZ2V0X2RpbW1fc2l6ZSh2
YWwpICogaW50ZWxfZGltbV9udW1fZGV2aWNlcyhkaW1tKTsNCj4gwqB9DQo+IMKgDQo+IC1zdGF0
aWMgaW50IGJ4dF9nZXRfZHJhbV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0K
PiArc3RhdGljIGludCBieHRfZ2V0X2RyYW1faW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwgc3RydWN0IGRyYW1faW5mbyAqZHJhbV9pbmZvKQ0KPiDCoHsNCj4gLQlzdHJ1Y3QgZHJh
bV9pbmZvICpkcmFtX2luZm8gPSAmaTkxNS0+ZHJhbV9pbmZvOw0KPiDCoAl1MzIgdmFsOw0KPiDC
oAl1OCB2YWxpZF9yYW5rcyA9IDA7DQo+IMKgCWludCBpOw0KPiBAQCAtNTg1LDkgKzU4Miw5IEBA
IHN0YXRpYyBpbnQgYnh0X2dldF9kcmFtX2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpDQo+IMKgCXJldHVybiAwOw0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyBpbnQgaWNsX3Bjb2Rl
X3JlYWRfbWVtX2dsb2JhbF9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikN
Cj4gK3N0YXRpYyBpbnQgaWNsX3Bjb2RlX3JlYWRfbWVtX2dsb2JhbF9pbmZvKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gKwkJCQkJwqAgc3RydWN0IGRyYW1faW5mbyAqZHJh
bV9pbmZvKQ0KPiDCoHsNCj4gLQlzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtX2luZm8gPSAmZGV2X3By
aXYtPmRyYW1faW5mbzsNCj4gwqAJdTMyIHZhbCA9IDA7DQo+IMKgCWludCByZXQ7DQo+IMKgDQo+
IEBAIC02NDcsMjcgKzY0NCwyNiBAQCBzdGF0aWMgaW50IGljbF9wY29kZV9yZWFkX21lbV9nbG9i
YWxfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+IMKgCXJldHVybiAw
Ow0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyBpbnQgZ2VuMTFfZ2V0X2RyYW1faW5mbyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gK3N0YXRpYyBpbnQgZ2VuMTFfZ2V0X2RyYW1faW5m
byhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGRyYW1faW5mbyAqZHJhbV9p
bmZvKQ0KPiDCoHsNCj4gLQlpbnQgcmV0ID0gc2tsX2dldF9kcmFtX2luZm8oaTkxNSk7DQo+ICsJ
aW50IHJldCA9IHNrbF9nZXRfZHJhbV9pbmZvKGk5MTUsIGRyYW1faW5mbyk7DQo+IMKgDQo+IMKg
CWlmIChyZXQpDQo+IMKgCQlyZXR1cm4gcmV0Ow0KPiDCoA0KPiAtCXJldHVybiBpY2xfcGNvZGVf
cmVhZF9tZW1fZ2xvYmFsX2luZm8oaTkxNSk7DQo+ICsJcmV0dXJuIGljbF9wY29kZV9yZWFkX21l
bV9nbG9iYWxfaW5mbyhpOTE1LCBkcmFtX2luZm8pOw0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyBp
bnQgZ2VuMTJfZ2V0X2RyYW1faW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4g
K3N0YXRpYyBpbnQgZ2VuMTJfZ2V0X2RyYW1faW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwgc3RydWN0IGRyYW1faW5mbyAqZHJhbV9pbmZvKQ0KPiDCoHsNCj4gLQlpOTE1LT5kcmFt
X2luZm8ud21fbHZfMF9hZGp1c3RfbmVlZGVkID0gZmFsc2U7DQo+ICsJZHJhbV9pbmZvLT53bV9s
dl8wX2FkanVzdF9uZWVkZWQgPSBmYWxzZTsNCj4gwqANCj4gLQlyZXR1cm4gaWNsX3Bjb2RlX3Jl
YWRfbWVtX2dsb2JhbF9pbmZvKGk5MTUpOw0KPiArCXJldHVybiBpY2xfcGNvZGVfcmVhZF9tZW1f
Z2xvYmFsX2luZm8oaTkxNSwgZHJhbV9pbmZvKTsNCj4gwqB9DQo+IMKgDQo+IC1zdGF0aWMgaW50
IHhlbHBkcF9nZXRfZHJhbV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiAr
c3RhdGljIGludCB4ZWxwZHBfZ2V0X2RyYW1faW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwgc3RydWN0IGRyYW1faW5mbyAqZHJhbV9pbmZvKQ0KPiDCoHsNCj4gwqAJdTMyIHZhbCA9
IGludGVsX3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUsIE1UTF9NRU1fU1NfSU5GT19HTE9CQUwp
Ow0KPiAtCXN0cnVjdCBkcmFtX2luZm8gKmRyYW1faW5mbyA9ICZpOTE1LT5kcmFtX2luZm87DQo+
IMKgDQo+IMKgCXN3aXRjaCAoUkVHX0ZJRUxEX0dFVChNVExfRERSX1RZUEVfTUFTSywgdmFsKSkg
ew0KPiDCoAljYXNlIDA6DQo+IEBAIC03MjYsMTUgKzcyMiwxNSBAQCB2b2lkIGludGVsX2RyYW1f
ZGV0ZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiDCoAlkcmFtX2luZm8tPndt
X2x2XzBfYWRqdXN0X25lZWRlZCA9ICFJU19CUk9YVE9OKGk5MTUpICYmICFJU19HRU1JTklMQUtF
KGk5MTUpOw0KPiDCoA0KPiDCoAlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTQpDQo+IC0JCXJl
dCA9IHhlbHBkcF9nZXRfZHJhbV9pbmZvKGk5MTUpOw0KPiArCQlyZXQgPSB4ZWxwZHBfZ2V0X2Ry
YW1faW5mbyhpOTE1LCBkcmFtX2luZm8pOw0KPiDCoAllbHNlIGlmIChHUkFQSElDU19WRVIoaTkx
NSkgPj0gMTIpDQo+IC0JCXJldCA9IGdlbjEyX2dldF9kcmFtX2luZm8oaTkxNSk7DQo+ICsJCXJl
dCA9IGdlbjEyX2dldF9kcmFtX2luZm8oaTkxNSwgZHJhbV9pbmZvKTsNCj4gwqAJZWxzZSBpZiAo
R1JBUEhJQ1NfVkVSKGk5MTUpID49IDExKQ0KPiAtCQlyZXQgPSBnZW4xMV9nZXRfZHJhbV9pbmZv
KGk5MTUpOw0KPiArCQlyZXQgPSBnZW4xMV9nZXRfZHJhbV9pbmZvKGk5MTUsIGRyYW1faW5mbyk7
DQo+IMKgCWVsc2UgaWYgKElTX0JST1hUT04oaTkxNSkgfHwgSVNfR0VNSU5JTEFLRShpOTE1KSkN
Cj4gLQkJcmV0ID0gYnh0X2dldF9kcmFtX2luZm8oaTkxNSk7DQo+ICsJCXJldCA9IGJ4dF9nZXRf
ZHJhbV9pbmZvKGk5MTUsIGRyYW1faW5mbyk7DQo+IMKgCWVsc2UNCj4gLQkJcmV0ID0gc2tsX2dl
dF9kcmFtX2luZm8oaTkxNSk7DQo+ICsJCXJldCA9IHNrbF9nZXRfZHJhbV9pbmZvKGk5MTUsIGRy
YW1faW5mbyk7DQo+IMKgDQo+IMKgCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJEUkFNIHR5cGU6
ICVzXG4iLA0KPiDCoAkJwqDCoMKgIGludGVsX2RyYW1fdHlwZV9zdHIoZHJhbV9pbmZvLT50eXBl
KSk7DQoNCg==
