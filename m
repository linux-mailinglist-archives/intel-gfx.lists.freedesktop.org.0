Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D413C9967BE
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 12:53:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D311C10E6DA;
	Wed,  9 Oct 2024 10:53:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i30VMP+4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F5710E6D8;
 Wed,  9 Oct 2024 10:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728471207; x=1760007207;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9zdV4aAo6T8w1h2bA55++5FY3h5egcTy6AHXDUGSCks=;
 b=i30VMP+4HXGAdNS3We+V5wqlmiNzLW1TtbePX95FeG02cBx0kCYFl4vY
 o7EYoktsx4yM0oAJCp7ciLTIB1q2/dTPCeufSonWUxSTcxcTy0rY8JGBS
 4pYTPW/PhHwDEe5GGVYI+Fv+dUuTyBMZcFhMlbazq3uFf4cGBZfkPi8aP
 ++t7Eo+ldLVSPKK62eTh8/y+y2IUx8JvKd8gnEILVonECvWAEfvzef3cB
 KnPBAvGILkSbAz76fVOqYdSGNK0JR2mzfY6awgX9uAZz/z/0kpxZXQA0N
 d2Sy2LDlK0CwG2+Yok5eicUtVgz/ylVKyzStsgUUaaIRobsVd0KwvIyBZ Q==;
X-CSE-ConnectionGUID: k3GauADeTcefMJuyjJeruQ==
X-CSE-MsgGUID: iv6Bt6+/QmilVFnUoHNn7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27641821"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27641821"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:53:27 -0700
X-CSE-ConnectionGUID: 9ftUghgCRoSQ505VGXgGVQ==
X-CSE-MsgGUID: 8jw9WkyhTRmFglm9ntTCFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="80193696"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 03:53:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 03:53:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 03:53:25 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 03:53:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wcOENvaKYE2xvsUjNWBkMqJClvST8BwWl+dxBB/7zDHsnKol054B0SiiyvcLcDLbQDP4dFrzn8ZGV+FGrvBhf/NSVvLBnGfVOB4Q2qWu2FB2hocqiByHSTeeiFGiZF5oRtpMBSdmSOJmaiBHv4jcf3MW6jFXzN4EHpaGLXJ2VkLULPYIuBF5prTSYKY/qPA1xheKudORl5d40DYHL6+mycuI2n3rpEQ/tJ06dG+bTTe1RTwRscCJDNC6FpkJecX2YkBqVlfoXQ7YsVLt3+H/wbM8VQJHPqoIL/aEBsnzsshLwWxqpMFTLdS6s2qrOmfDkQfvwGZdrgTlMT7Fd7unLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9zdV4aAo6T8w1h2bA55++5FY3h5egcTy6AHXDUGSCks=;
 b=NPVTTIGKIxMYOj6G8Fezc6cKUBnsrgGIVeHcuvLy3K+2hnw1o95VkVP4/ynWYRsRHjDEUBr3jzfBjqHyKtX9jX0O5oYWeSHbosJmvH+qMb5X1bJ74l6+5Y20gGExYGeIP+FrnT7Xel+fCMUyUXGYEciah58CdFJiogA1QXXHvlorh0GlKmTbEdc1Uvx/C6mcavHEwsocYcbtRFlznygSZx3+xSi/ZAe7e0sSRqXYyUR+QorgEfgR1mCnDYv1aHitcwR1lLEqETETt7lCzApDZZmSKiJ1C/ixUgs9ZNeto7i2AqRRPKupDeH2Xd5OCNqTy3ws2QyHRv3RZiRi5+dk6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 10:53:20 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 10:53:20 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: Re: [PATCH 02/10] drm/i915/xe3lpd: Adjust watermark calculations
Thread-Topic: [PATCH 02/10] drm/i915/xe3lpd: Adjust watermark calculations
Thread-Index: AQHbGdK/e17m7zg9kkabpnhJTWeFQrJ+P0AA
Date: Wed, 9 Oct 2024 10:53:20 +0000
Message-ID: <abc829fa09da7054ebd492747c41ba0c3766aad3.camel@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-3-matthew.s.atwood@intel.com>
In-Reply-To: <20241008223741.82790-3-matthew.s.atwood@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH0PR11MB4886:EE_
x-ms-office365-filtering-correlation-id: 956d72b3-71c7-4397-e1a8-08dce85096e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?T3MwZFdiNWZUdTh0RzMvb2R2NVNqVmxadzdyYldHTCtUMGd1djRwbVdnZTVv?=
 =?utf-8?B?bE5DbHV5dkpXRWZ6Nlg4WERsZ00yL0oyaWdUc1ZmOXBuZzhBcTRVR0NMRzlH?=
 =?utf-8?B?SmFXZytndVBEMTNlVFhwSlFZV0d1Ym0vM0J0bFhpd1AxT1l0YUtKTW9sNytn?=
 =?utf-8?B?a3FVYTVWT1JiK1lqQ1ZFbHBuNEEzUEJobVVyV0wwaWdaRFo1dVRjcmdzWE9D?=
 =?utf-8?B?K3JrN3dLWWZtQW9iUnB0S1hCS2Z4OFltdzU5VitYaDBVZ0FWNkdLb1JLWXJs?=
 =?utf-8?B?MjJVd0JuWHdkalcxd1Y4RXA0TFVXMTdWd2I0QXhRaFRBSVJSZ0EyVk91TXR2?=
 =?utf-8?B?R1VzRG9HZWFZRzNEdnlmVGtwdmRtZ2xGYVdCdlNyRTNrcXNBQWdsekU5b0Qy?=
 =?utf-8?B?MndkMnpKTVpZSkcveWVpYVMwZHA3WFhLb3JBakZyaGlVS3hvNzNUc2tncHl5?=
 =?utf-8?B?dnZDb0QrenpVVi9CMFBiT3dQclNBaXJMR2RBTGQ4WGpFOHpUaGluaitiN0VE?=
 =?utf-8?B?UlU1bmJQeUlVTjZYdW9NTFhjdGkrcjFaSEkvRkkwTjBxN0dReUZJVThrVGV5?=
 =?utf-8?B?OVVMZGVWVWV3Q3ZHZTFwUmc5bkR6dmZOdTVQNzBJOW1YbmJpMFVNQ2xDUit1?=
 =?utf-8?B?c1ZmQUYraWlRLy9mTSs4VHNIMlVOdi9sdnBOQmNBTzZEakcyaWlobExtRjZM?=
 =?utf-8?B?c3NtenYzOElyZWQyMkJhaWwrbU9kb044MHVjZUNmZm90MHdpQkYzM3JQS0JY?=
 =?utf-8?B?bHpCMjBIbHlqdDNLd2tWQUM0c1lWU0x4T2sxWGxuZmMvRVQ5RDJIREhpUGk2?=
 =?utf-8?B?TzI0OTdGb1ZtM1dYMUFDUDZ3UkhWVVVlSERreWtDNlpDTnN0N2NPY2lXS214?=
 =?utf-8?B?UXVLdzlwSlBmMVA2am1PWE93QVo2Q1l3eTduODVEOVJRRFpMT3BzL2lZcm53?=
 =?utf-8?B?WDkvdFhJWmpOZlo4RlFZejVMOE15cHp2ejNxMVJJMHpUci9IeWNXUm10QlBI?=
 =?utf-8?B?TWVzRkpiOERpc3YyUW9KSzE2WDNTVElwUXB4N25Ec3BVdExxRDhnUitEV3Vn?=
 =?utf-8?B?TEpJMXljY2FxNkhFdmw1bDYzVlE5azBieXFMSzBkVndBOENnSlRuNWZIVFNp?=
 =?utf-8?B?MXFyNXZ1UjkzMHBGR2Q2MWxDS0M0Zi9KQlkrRE1vaUNPUlQyc3NVRExqd0Nm?=
 =?utf-8?B?NGgvT092bkZUcmEvSmNmZlZwUElGelQxa1VTY0gvNWxraW5WVnhmaE1kSnA1?=
 =?utf-8?B?UDBBdnRKdVFDNkp4M1NJM2FrajJLYVVOQlBNZ3l3MURWdFAxLy9RYjFtSWhs?=
 =?utf-8?B?MEg2LzJWZG5qMEFKTGVWMHh3THd6MEpHbmVKTEhXLzk3ZHZBbThyQ085NjZa?=
 =?utf-8?B?QURVK0d6SDdlbGVPUEFFbTRaVHh4ZXJLTkxsR0lNTm10MzgydS9SbExnWUZr?=
 =?utf-8?B?OG4xSHhsVVI0cVVlVkhoRXZxeGVtemJGckN1QlY1MGtjQlNuQXJJai9PQUtY?=
 =?utf-8?B?Nk1wS2h0YW9sZUVtdW4ydjdlYkxQYXBHN1dZdlV4ZmsrMFBpTHpRaGs0c1NS?=
 =?utf-8?B?d0szUXVIMmcwT0xNc2gvdU9aZGdYSExNQlQ1Q2dOYUJJL1Q5UjFJbGNKUXhG?=
 =?utf-8?B?VWM3cmFtWDBlYnRFWVV3aklyMXkvUWZxR1Uxd1dZTXlXZldxbVFMc0ZaK3k0?=
 =?utf-8?B?YkxhM3pjL2sveGE3aDdzMzdPWm16YjhESm1GSGZQSWgwVUVDd3U1NHBtZjZX?=
 =?utf-8?B?WXYwaWp3MTFTclNWaGpYaEJyaFVIZTZoSG1iNEVSbE9BVkluRFdUcFp6Tko0?=
 =?utf-8?B?dnVaOU9xQUk5Q0VqeG1Edz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VjlsNUNwc0w5RFVLREdMbWRCekJqenZ6Qm9NcDVtR0J1TWVOTWZHVHo0eTds?=
 =?utf-8?B?WUZyR3U4elc2cTZXSm45ditSYldzY3RTSVFuSU00SnNrUmtrWGNSMDA2VVJ4?=
 =?utf-8?B?VW91djJlUWYwUWYrU1ZPRlJ3Qjd5MWZaZUN1OWlrMisvdmtMeU5DK2FHWFZp?=
 =?utf-8?B?RGRyOVE2RXF0VEFGcDJDQ2tBTGRrZzZZWU94R3k5YnNtQzdIZkwwbFJBOVpp?=
 =?utf-8?B?SVk0T0p2MWdEODFMMEo0UzRTL081QUUzOFlGb1VMc1l0Mk4xVnZpVUhOdjR1?=
 =?utf-8?B?N3I3dGMwek5xWW1KdEZ1aFVHV3AzT2FTZUJ0NXIvNmFHVldmc0ticFlWTVZP?=
 =?utf-8?B?VHBlcnZXck9SL3hxOGxxdnFERy9SdVQwRGhtV1NsS29DYjhObHoyWHRDeWlQ?=
 =?utf-8?B?TXZmd1B4OUdwSEpmWTlxVmpFbys0L1NjTURMMkllMDhRdmFqNWFJeHhmakNa?=
 =?utf-8?B?UGxzeHZ6V3lyMEpycGUvekRsU0ExYkNtL09ocFJpSysrSm9ORmJrSDBZWlZR?=
 =?utf-8?B?c2JUbXA3QmVtZUV6d2hVc250LzdaN0JMMVBtWnpPakZtZ2F2NHVjM3NWOUpZ?=
 =?utf-8?B?ODFZMktOUkNGdTRUSE5Udi9weWh3WGhsaStlR3NvUnB5T1J2YXVQdmZMd0Q3?=
 =?utf-8?B?OEcyMmhVWVFRdytzRDExeDZhRUE3Nm5GSCtsVms2dEJQYnpzRkFzT1ZTeURj?=
 =?utf-8?B?QUxEd05ubmcySnM0R3J1d3RVQ3ZnWUJVRVpvOWROSkpYVm01MG9RY3ZuTVIx?=
 =?utf-8?B?UnFWRFNqelRrT3NuMkxHa0hqQlUweWoyQ2JJS25xZmhkcloxYzZNZW41cTZZ?=
 =?utf-8?B?Qk96U2w0WlhQOWxtYjJKQy9SV2ZPOWNjRU9veFN6eldyY2VjREFObC9HN2lt?=
 =?utf-8?B?Q0VXbTZEWHdHdllJNzBNRFF5TDZDblYrK3hWaDRxU0liNVRiR1hRa1VFZ212?=
 =?utf-8?B?WXAwb1lRdFdlYlJqS3VLLzVOQVhtTTMwdUJjZVkraWRXRHYxNkhCakl2cXBP?=
 =?utf-8?B?VXpyUmk0Ny9SNU94MWVmbCt1UFdNUTJYc0x5MGxURnBDZ0dSaG42T0pRTkV2?=
 =?utf-8?B?VUo4bXFtZ1lnKzU4WEppM201cXExcjFFSmZFbHdCdEdOeW0zb0NKM1Y5NEFv?=
 =?utf-8?B?dmkxcXpYVkp6R0NvY1BSaTA5SnA0M2xYVmxUNkNsVDh3Z1V6NWpsM2ZkQjlp?=
 =?utf-8?B?SFhtMHJZZWpJMjAwVXBMQjJsdTRLYUl4N01nMkR4N1dra0h4M29ycElZT3Fi?=
 =?utf-8?B?N0hjOXJENWJ1MmZuL3ZUMVFVTU96eU55MHp6Mi83Wi80MkM0WjNFMGl1SVFx?=
 =?utf-8?B?SXRiSjR1SURHbm94eDI3anhIZS9LS1pGS0xiaGRpM0dnSHRwYmZna3E5aE83?=
 =?utf-8?B?cEFzYURxQU1HUlp4dGFHdnBLNUZJam9QMTdiMDBFejRLR0dhRkZ0T2ZlRmFl?=
 =?utf-8?B?bWJrZlpuZDJVSTVEazRkUWpPZGVVUktCQkt3ZlIrLzZhNy9YTHV1dmh2dXZs?=
 =?utf-8?B?ZEc2V0FaenZtVkRVaU1KU2NzNEZIc3lSZTRwdG5LeHF3Z0ZVcWRzVEp1TVdr?=
 =?utf-8?B?cUN3amtPWW5kNjliTThNalEyQktYRmpONU9OQ1hhL1VsWHBYazFyT0pyQXFI?=
 =?utf-8?B?ZVRKQnFuRXhPMTVDUldMSVJGWUNrMVJaS0lnK21UMlpHcXg1elp3SGZka05o?=
 =?utf-8?B?MXBJN1Rrc2E5TnlsLzNlTXgvZDExSXNoZlQxUTFDSjBoa3BBdGFjS2ZlbXlM?=
 =?utf-8?B?QnU4bWpJSzAyQnlRM1ZPUVZmNUZYWWx1Vk4rQ0YzOEdKYytMUFpYZDFBOUU1?=
 =?utf-8?B?TVhZbHFwRW82NjhUcm83T1FqUlZuYmQ1WDhLQVNoa2NFY2FWRnRuUVYwZWxK?=
 =?utf-8?B?YU0yR0s1dEdvS2RIQ1dqY3R3V092cTdQQnJmQlNHUVJYcFV4VStPWEpGVkZU?=
 =?utf-8?B?RjJ5K1RqYTd1MUpvc0ZqalVEZHB6dkJycmZwUkRlVERyRkUwOUk1QzF5WFds?=
 =?utf-8?B?L3d0L1dKSmhyT1ZVTzZFK1VSKy9mMitucUluNXU5eFovT01zVmI0RlNnUjZM?=
 =?utf-8?B?VHJ6L1lEZzRRSGpnaGFKOHRVdG93a0E1Z3E1SmMyUGRBU2ZPV2xSZWt4UUxC?=
 =?utf-8?B?dGN1NjVibjFMeWduTnZyMmRGRnlqWDZZckFYbVRpZWJROFViTXVweVlFQ1d2?=
 =?utf-8?Q?PkdK+ZsGetONSC3qg71mgFc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <65CE185890084C4CB0DB02221500FBDA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 956d72b3-71c7-4397-e1a8-08dce85096e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 10:53:20.6587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k70MEITRRWe5JQIXnn10lEnEcPS0UYkpJJ4kUbdyt2LZQg6be5VOTUVIPLoNLxTTYCIEEPQvg/deApVqGe3CMndI0nCxkHe7OLzwMwEUKZo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4886
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

T24gVHVlLCAyMDI0LTEwLTA4IGF0IDE1OjM3IC0wNzAwLCBNYXR0IEF0d29vZCB3cm90ZToKPiBG
cm9tOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IAo+IFhlMyBtYWtl
cyBhIGNvdXBsZSBtaW5vciB0d2Vha3MgdG8gdGhlIHdhdGVybWFyayBhbGdvcml0aG0ncyBibG9j
ayBjb3VudAo+IGNhbGN1bGF0aW9ucy4KPiAKPiBCc3BlYzogNjg5ODUKPiBTaWduZWQtb2ZmLWJ5
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwgMTggKysrKysrKysrKysr
LS0tLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkKPiAKCkxvb2tzIGdvb2QgdG8gbWUgYXMgcGVyIEJzcGVjIDY4OTg1CgpSZXZpZXdlZC1ieTog
Vmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+Cgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYwo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMKPiBpbmRleCA2
ZTFmMDRkNWVmNDcuLjMxZGUzM2U4NjhkZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jCj4gQEAgLTcxOCw3ICs3MTgsNyBAQCBzdGF0aWMgaW50
IHNrbF9jb21wdXRlX3dtX3BhcmFtcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGludCB3aWR0aCwgY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5m
byAqZm9ybWF0LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgdTY0IG1vZGlmaWVyLCB1bnNpZ25lZCBpbnQgcm90YXRpb24s
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB1MzIgcGxhbmVfcGl4ZWxfcmF0ZSwgc3RydWN0IHNrbF93bV9wYXJhbXMgKndw
LAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBpbnQgY29sb3JfcGxhbmUpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgY29sb3JfcGxhbmUsIHVu
c2lnbmVkIGludCBwYW5feCk7Cj4gwqAKPiDCoHN0YXRpYyB2b2lkIHNrbF9jb21wdXRlX3BsYW5l
X3dtKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKPiBAQCAtNzY1LDcgKzc2NSw3IEBAIHNrbF9jdXJz
b3JfYWxsb2NhdGlvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGRybV9mb3JtYXRfaW5mbyhEUk1fRk9STUFUX0FSR0I4ODg4KSwKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIERSTV9GT1JNQVRfTU9EX0xJTkVBUiwKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERSTV9N
T0RFX1JPVEFURV8wLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlLT5waXhlbF9yYXRlLCAmd3As
IDApOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlLT5waXhlbF9yYXRlLCAmd3AsIDAsIDApOwo+
IMKgwqDCoMKgwqDCoMKgwqBkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCByZXQpOwo+IMKgCj4gwqDC
oMKgwqDCoMKgwqDCoGZvciAobGV2ZWwgPSAwOyBsZXZlbCA8IGk5MTUtPmRpc3BsYXkud20ubnVt
X2xldmVsczsgbGV2ZWwrKykgewo+IEBAIC0xNzQyLDcgKzE3NDIsNyBAQCBza2xfY29tcHV0ZV93
bV9wYXJhbXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCB3aWR0aCwgY29uc3Qg
c3RydWN0IGRybV9mb3JtYXRfaW5mbyAqZm9ybWF0LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgbW9kaWZpZXIsIHVuc2lnbmVkIGludCByb3RhdGlvbiwK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTMyIHBsYW5lX3Bp
eGVsX3JhdGUsIHN0cnVjdCBza2xfd21fcGFyYW1zICp3cCwKPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgY29sb3JfcGxhbmUpCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IGNvbG9yX3BsYW5lLCB1bnNpZ25lZCBpbnQg
cGFuX3gpCj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0g
dG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwo+IMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+
IEBAIC0xODAzLDcgKzE4MDMsOSBAQCBza2xfY29tcHV0ZV93bV9wYXJhbXMoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHdwLT55X21pbl9zY2FubGluZXMsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdw
LT5kYnVmX2Jsb2NrX3NpemUpOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMCkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDMwKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZXJtX3BicGwgKz0gKHBhbl94ICE9IDApOwo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihpOTE1
KSA+PSAxMCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpbnRlcm1fcGJwbCsrOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3
cC0+cGxhbmVfYmxvY2tzX3Blcl9saW5lID0gZGl2X2ZpeGVkMTYoaW50ZXJtX3BicGwsCj4gQEAg
LTE4NDUsNyArMTg0Nyw4IEBAIHNrbF9jb21wdXRlX3BsYW5lX3dtX3BhcmFtcyhjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmItPmZv
cm1hdCwgZmItPm1vZGlmaWVyLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwbGFuZV9zdGF0ZS0+aHcucm90
YXRpb24sCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX3BsYW5lX3BpeGVsX3JhdGUoY3J0Y19zdGF0
ZSwgcGxhbmVfc3RhdGUpLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdwLCBjb2xvcl9wbGFuZSk7Cj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgd3AsIGNvbG9yX3BsYW5lLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBsYW5lX3N0YXRl
LT51YXBpLnNyYy54MSk7Cj4gwqB9Cj4gwqAKPiDCoHN0YXRpYyBib29sIHNrbF93bV9oYXNfbGlu
ZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCBsZXZlbCkKPiBAQCAtMTkwOSw3
ICsxOTEyLDEwIEBAIHN0YXRpYyB2b2lkIHNrbF9jb21wdXRlX3BsYW5lX3dtKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgfQo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBibG9j
a3MgPSBmaXhlZDE2X3RvX3UzMl9yb3VuZF91cChzZWxlY3RlZF9yZXN1bHQpICsgMTsKPiArwqDC
oMKgwqDCoMKgwqBibG9ja3MgPSBmaXhlZDE2X3RvX3UzMl9yb3VuZF91cChzZWxlY3RlZF9yZXN1
bHQpOwo+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDMwKQo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBibG9ja3MrKzsKPiArCj4gwqDCoMKgwqDCoMKgwqDC
oC8qCj4gwqDCoMKgwqDCoMKgwqDCoCAqIExldHMgaGF2ZSBibG9ja3MgYXQgbWluaW11bSBlcXVp
dmFsZW50IHRvIHBsYW5lX2Jsb2Nrc19wZXJfbGluZQo+IMKgwqDCoMKgwqDCoMKgwqAgKiBhcyB0
aGVyZSB3aWxsIGJlIGF0IG1pbmltdW0gb25lIGxpbmUgZm9yIGxpbmVzIGNvbmZpZ3VyYXRpb24u
IFRoaXMKCg==
