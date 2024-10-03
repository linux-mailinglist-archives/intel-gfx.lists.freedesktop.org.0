Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BEB98EF2D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 14:24:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3285610E052;
	Thu,  3 Oct 2024 12:24:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RX9tvP80";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633C510E052;
 Thu,  3 Oct 2024 12:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727958278; x=1759494278;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Q8UuqVXVEadTwq7q+SJqTQfvMC6gXrOyQgQVNbcGr1Q=;
 b=RX9tvP80i2P/VVD9e0r3GiVeEbNAbOp/G4bmqetlAU2HiFWcor3u2eCS
 dawXn6wUxM29PH1LvQMP6Rgf0YnHrGlC9Cx1TCv7Te541lhtx7vnyJIT6
 WsaxvaHSNGFVeBiOD5HcsbKBZ9CTZQ0q+mWyAS1MRowwHXKgUZFg9XhdB
 /vTJ9nTx08OTijqZ/rqBlAukf88rtrL5kGpAqc+mLokK5gKd3f0tEm2Ar
 YYxondJjT0Bannee/SMNoM9Mtb8l56tI6JKl3dtPYp6L/N78FMg+NJ/gt
 x0KJroblzpCkUq68wXdNS3j7khZ6kmv78pau9pSifXjB42GuzZXDTtgfq Q==;
X-CSE-ConnectionGUID: zTgY4bEHSbuyj6r6Cc9svg==
X-CSE-MsgGUID: C+N1mOErRAmdPtOibHbOuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27325640"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27325640"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 05:24:38 -0700
X-CSE-ConnectionGUID: UUDgMMI9QXujp2PPZknmEQ==
X-CSE-MsgGUID: 8nURVrgjR+6y0ljZLjQz6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74346506"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 05:24:38 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 05:24:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 05:24:37 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 05:24:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g3uXbBQMS4irpUSW+NfShh8G2M4JhiapkndftCTMfTFrb9n9LQUW4G8SkpTo/iRepxr2NC2ZPngX11uvhhChJ+b1RLCxzZGF+WlXgO5CR6xQKXubZgaQq1sMMnCQLY0nNF4B40AJ42j/8sTMga/MzeTvWuO35yDQ2k0J+Y3AVUm0fudwCuua9cP4KNyunNnxYp3M8zX5nNyP/5Y/D/mjcC6gF2bt+SqhXtsmYrZs2gatRFlNjjPJA6tl1JlEc5ypW7tTGS1btOYRdyedLn9MlU0gWh6C2gELxIqhoDUCAAgHjmDiHq3ourx0Ke8NOPlZQylFUE0wCYFsXfzVaNfhAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q8UuqVXVEadTwq7q+SJqTQfvMC6gXrOyQgQVNbcGr1Q=;
 b=zHcm6KVYO2qFgCXdgWN7dC7g6ZO7Ek997KSLtwivtnrLmIgFp7cTaJmyRo5K3eXEmjvVBmT8eZcrhUMeY/EgRJFpDLuKr5d/koSq2f3/bLngqeVz2R3646WWVuD8I4QuiFxvOdt83vqWdEspVJzc3sExQnatnUd4JzOGYxAodms1cuoK+j1PYz3kz2U5EvFnbqsg9QFYYFnG/rMGuvn6lqpcjVyq8wAN0VYE14fcQQvKp2W8hfL1jMdxnvIMO08UC1vEVFjEIBhSG8CfrofsE/c87tyhI892jLQq42HxfN6Ic2DfnlYG1mR4rr1fpiFNm78i0Sis4R0qGI1eN6X0xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS7PR11MB6064.namprd11.prod.outlook.com (2603:10b6:8:77::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Thu, 3 Oct
 2024 12:24:35 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8026.016; Thu, 3 Oct 2024
 12:24:34 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 24/31] drm/xe/display: Call intel_hpd_init on every
 runtime resume
Thread-Topic: [PATCH 24/31] drm/xe/display: Call intel_hpd_init on every
 runtime resume
Thread-Index: AQHbDsJ0mg8iDWKwFUOBpJd0P+vU8bJ0npqAgABiRwA=
Date: Thu, 3 Oct 2024 12:24:34 +0000
Message-ID: <b01e98438bd355fac3c2949be883f3153bc4bd40.camel@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-25-rodrigo.vivi@intel.com>
 <ab4194b3d05c77e1ac5ba5f675f27ed55c244c27.camel@intel.com>
In-Reply-To: <ab4194b3d05c77e1ac5ba5f675f27ed55c244c27.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS7PR11MB6064:EE_
x-ms-office365-filtering-correlation-id: f6f6f825-e1dc-409f-bc57-08dce3a6574d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dGNaS00zbkRqOVYyQ1dYN2xXaTNaWkNJQmxpQnEydnF0SFJueGluVkE3bUM5?=
 =?utf-8?B?R0hRNHRQVkE5dDhIcFVJUHF2bTZoVkhFNXFrZ29PbHVpVnpLV3MyM2dBYVlK?=
 =?utf-8?B?TFFJWk9xUUY4UmFpbzJJYktJMW5wbTh1WWFsUWtESUgwZ0ZFcHFrMTRwYU42?=
 =?utf-8?B?M1VGeHNIbmVEVVBDSjVOOHRBY1FNZ3ZPVXhOYWNKdUR5emVraEJqRTVFZDV3?=
 =?utf-8?B?OWpUcncxbW9pU0dFQldjdTFHM0lhd2J2YlRjcEdNY2ZIanB6SytQYXNkNUFK?=
 =?utf-8?B?S2hMUEd1WXZrSTN0L3p0LzlSeVE0RUlzTUNPNENPMkZ6L2lJcUlrZzVpRkJB?=
 =?utf-8?B?T2sxcFhKaUIvZFRXMkp1VXFqU1FvU1lvdnczUUVjbDJJQndpNlRtR0NmSE5k?=
 =?utf-8?B?M1dNR21iSy9JczdDQXBDakFsSVM5ZjlhMEpjVGE2c1hjS3FsV1NpVndaQU5s?=
 =?utf-8?B?bFRvOVJwQTVkbjkva29ET1pyTldSNS85bG82eHAyREtmam1MdktqS3VrMGEz?=
 =?utf-8?B?UU5GRk9RNFcyTmprdTBFNVcxb0dYWm5XdVNzMGNHZ2h6L1B3cnVnZGxQMWtn?=
 =?utf-8?B?N3QxSjZZSW42d3J6T0xoRkFuOWpsMUxHcERDK0ZJbFl6Z2NrTXdJV3pGVHZi?=
 =?utf-8?B?MkFjQlpiWmhKaytHVHY5ay9FN0tObW1YdWMzbWlxaGdicEd0ZzVVZURZRk02?=
 =?utf-8?B?K0czdmJUditHdUpNVzBsVXo0a2JYMEdUWEVVTmFHbmtQMTRMak5Bb1Vjd3FI?=
 =?utf-8?B?VTZ0dlY5RTd0NHd4amQrU1NHb3BBK2xqN0phN1hwTTVEYml3NmlxR1JDN3cr?=
 =?utf-8?B?Z3kxNVpPOWZIU2locVIyVHo2akhuejhNQnVpNEdBc1hKQ0xLbXh5ei9VS1ln?=
 =?utf-8?B?UDFkMG9HL3lzNVBOUzdrU01mTmRMSnJyNnRITzErbTdvZk96VHZIczBkVStK?=
 =?utf-8?B?bTlrQWhWMkZ5MTRqeVRFTlVYU3FqTThOMU9KWURmcXhoZzJ1N0lJMjZ3WHlZ?=
 =?utf-8?B?Y0ZrV1FJUm9sbnlzeVRYZEZGRUY3QXpnWkphb3lHMEtteW5EMGdnVEIxT3k4?=
 =?utf-8?B?YWMzam9mRDF3cm5jZzJzS3VpZjdYYTN3RzR5Qk5DTGJkZjZDeFdXZHg5dC9H?=
 =?utf-8?B?aEZoV1Y4ZEloRmVnYmxxWFZsZWd0ZUl3cXYrVGg3MExLQkJVQzIvVWRHQnh1?=
 =?utf-8?B?MEYzaTgrbXdmclFvUGVUY1BKMmJWdmVTT3FLeEkrWm5tZXNuaHh3N2tLU3dC?=
 =?utf-8?B?R0ZXQTg5ZFVlM2crdS84dnZxb3B5T0VoNldVdUVteEJIMFRuNFhIVG1SbHdo?=
 =?utf-8?B?WmVTc1ZjWEFIY2JpWkhRc1AwSnFEaDlRVmRJMEZwQytjSHRFQ3lBL2l0d3k3?=
 =?utf-8?B?dWJERmJURlBrckhLZUdTSEtTVGNScDdOakxCaXBCdzYyTXkrdTlUQ2E0d3FE?=
 =?utf-8?B?SUlPYVNYeVVWNGdvQ1dkNGU4ejUxc3BoOFhQbS94dGU5NXFZRGc2Z3kyb2lz?=
 =?utf-8?B?blVlQy9Pb2ZZUWpLL2hFbWNlbk1lemZ3UmN1VzNvVUlya3A2SzdWOHhJWW1T?=
 =?utf-8?B?Z1lQSEh4dE9oR08zeDJKL2x0Vm1Vb2pKSWUwcm5tc05KK0ovK0hDZ3oza0Zx?=
 =?utf-8?B?TnJtMXhlcFkwSERLZ0MxUTIrMWU3OXpCeU1BN1NPRkdMaXVqU1p1bTVScmZw?=
 =?utf-8?B?TFdld1pjbUFTd0lOWlpLMC9iWUl1UDM5TW9tYlE4TnJ6OVo5N2NxaEpTdThl?=
 =?utf-8?B?bTg0WW54d0RVYTViSWcycUI5S3JYYmI3K1Uxc1ZDWFBXUHExNjkrcGFJYjQ1?=
 =?utf-8?B?M25DVHpGUXlTM0ZPdDNyQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0JVRURhVERtT2tZdDloYUFyd2JHNllJVUZ3ZVRYWExjMndESFhqUmZrOXNI?=
 =?utf-8?B?RVN0MG1pakFHU1VSdjgwaHlTN0VOelp6cXhiSFdJMndXL1NYQmF4QnFtdW53?=
 =?utf-8?B?L1hVV2hqVDE4cVJkNGs2THVKaU5WM3RJN0RuWWt5ZHVvMjJlUTFVMFQxeWRn?=
 =?utf-8?B?T2EwR2RaWWhicGVsQldLLzJRQThIV0Y5QkV3NUpRWjg4YklocFkzQXhjYTFh?=
 =?utf-8?B?bHR6aUZvNElCakkzeko4MGR4eStCS0UrL0IyUStWQ2VyN0dFSU1UcUxYOG1q?=
 =?utf-8?B?NXlEc3JtZEV0cXdXRk8waFI5V3hGNzBsY3dKK1NWNWZoUmFoMEVCYkt2WFdj?=
 =?utf-8?B?TGJqUTArK3h3bTJ4SmljZTJ0TmZiZ20zSjZlaU1NUE9mdDJQOSs5NE1sWG14?=
 =?utf-8?B?aXY0SjE0djVLVFJSYnhXMDU0S3NHN011UzJjMHU5bnRGakZRVmNxRHpidFpl?=
 =?utf-8?B?T3B3ZHVudGlGRW9NbGZST0g1MEhWb21YTUd3NDl5SnQzTTJxS3B1aGhDWTZ1?=
 =?utf-8?B?dytkd1NENUl3MThUWW4vTE5vYUhuZ3hWbGNWRGRzbWJtZk9FTEh5UFhjcHN4?=
 =?utf-8?B?US85bWQyN2hRM2VuNVRHUkdWUWNiNGp2Rnp3azJ4c1hFT2xFOXJmN3ZnRStt?=
 =?utf-8?B?dUNkajVPM3ZUbzlPQ0xXZ1lyb01NT1I4ZE1oRGEzaUhHKzhZUCt0NlNUQXZy?=
 =?utf-8?B?SllET0dQL1ladFllaHhDS2NMRnBWa3dmV2trZk42b1NUdGtjNnBWejVNdzM2?=
 =?utf-8?B?Lzh6UzVHTVNvOEpOZ0YzQ1RBdkhkS051QXU2TVVTUXJnbHdXWjM5UVYzM245?=
 =?utf-8?B?dE9GdktPYnVEYnU4OGxzeFdqTEhaL2hJTUh2VXkyYW9vK3o1WFgwM044UXRR?=
 =?utf-8?B?OU9vWGxxc1NCWTgxVjFCOS9GTThKZE50NzJ0bVpaaVdwVllNY0dhRHhIMGpv?=
 =?utf-8?B?a2Y4aFhEcXltN0UzWjRUejJJWGZzeThZelZaUC90cVI2alVlUW83akl0Ukx1?=
 =?utf-8?B?K2FVSGFIUng5cS9BdXZGVStDdjJvdnNsNzZVVUN3MnV1TFllMk1NNG9OZzJI?=
 =?utf-8?B?Q1h4aDQwRVN2T3VUNnFWOXpUZjFCL0pPYWVycnIxNE9sYmpaRS9DYzFXa3V0?=
 =?utf-8?B?dDBNUENDL3ZoSDZmTklzWXJVYmErL2dkd1luVUNXZGl1VTZpc01XQk5MaXF0?=
 =?utf-8?B?dE1oUW5xMTRxKzNLanNvM1VjYnFiUUgyb2FZWExGT0k3STNwYnEvTkZCMWRu?=
 =?utf-8?B?S2pEbW05aWlwREkvQjdzcGRSUUNvNXZIWkF1RkZZM2ZGdmdGbE9sWjBleFl4?=
 =?utf-8?B?R0p6ekRTUkFUc1daM3RGUytBQTBrRURmQlpwRGcvZE5IUEh4Q0JIaFkyUkUr?=
 =?utf-8?B?TStDK1RrWGxsYWt0c1JxRDlsczgzZHRVdXA2N0VMS1VFVUJ6MllMNEU3T2Rz?=
 =?utf-8?B?N3RpdVNBRis4RXQ3KzY3QVlMdkJyYVIrRkhTUk5FRUlXZDB1MDlaNTRsZ1gw?=
 =?utf-8?B?UXN0WjMzMWJPajdIZXlWZkM0Y3VKTytPa253R292MDZ0K2Nkd1kydUZid0Rt?=
 =?utf-8?B?UUpGbUZNZ1Frc2tncjZQYTc1OUt2Qit6cG9CWDM5WTR0emNidnZZUUxINXN2?=
 =?utf-8?B?SXhqd3ZERE1kQUx2NmlBU2JWczRjTU4vMzhvMDhyYUpvd0ZpdThNQjBNTXFu?=
 =?utf-8?B?Qlp0QjdDTEdPTUxjSWhyZ3JuS0VFeHZVUHJzaDZsNC9OOXdmS2NUcG5WUmxD?=
 =?utf-8?B?cExvcmpFeWZ5OTJELzYxK3ZCMVVmL0VBVTc5eklrTjJVNVpmYjgzd2xRZWNh?=
 =?utf-8?B?QkRJNkdoL2lzaERHQUsxN1dER3ZaQlgyVWw1NjRzeUhhQVoyS1NmL2FjN29l?=
 =?utf-8?B?Y0JjSjVTa3UrTWVYYk5TZ0I2SS9QNjAvZGF4dTZxemhiT1RleFNYb21Vd1V1?=
 =?utf-8?B?cTZkMjZxNnBNcEt0UnNqTUhobEN0aFJnNVpvckdUYmdscERwTms2eDc2NGJ5?=
 =?utf-8?B?bjl2Z3F6SUhsWHpnYmxRUlZqd1BMTlh1V3hrL1BDRGZFK2RYZ1BxM2RSbUp5?=
 =?utf-8?B?bWVxbzNrVVNzZDQ4WC9FTW90WmRnZHJZaC9sWmNOcDNOaVhISDFya3lpRldG?=
 =?utf-8?B?bk9uei91R2Jzd0VIblNieWIzTENvTmxPRHZ0a24vOUhvdFQyTitxdFpSaFNQ?=
 =?utf-8?Q?8dr9TMVMBS5LtUhjMUAu/8c=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D65EFF2E916D7142A626C6F19393C26B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6f6f825-e1dc-409f-bc57-08dce3a6574d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2024 12:24:34.8336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: he7A44GFGBQsvHrJqJh54ly3sB0KqAwk5gEbPbxrcXOsKbt3UnEazFQURMTzIcVN3MmM0Wvs4y3SL28/DOYDzI5uP//hsUiBEepcuYFm374=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6064
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

T24gVGh1LCAyMDI0LTEwLTAzIGF0IDA5OjMyICswMzAwLCBHb3ZpbmRhcGlsbGFpLCBWaW5vZCB3
cm90ZToNCj4gT24gVHVlLCAyMDI0LTA5LTI0IGF0IDE2OjM1IC0wNDAwLCBSb2RyaWdvIFZpdmkg
d3JvdGU6DQo+ID4gV2UgbmVlZCB0byBlbnN1cmUgdGhpcyBpcyBjYWxsZWQgb24gZXZlcnkga2lu
ZCBvZiBydW50aW1lDQo+ID4gcmVzdW1lIGFuZCBub3Qgb25seSBvbiBkM2NvbGQgaXMgcG9zc2li
bGUuIEFsaWduaW5nIHdpdGgNCj4gPiB0aGUgaHBkIHNlcXVlbmNlIGZyb20gaTkxNS4NCj4gPiAN
Cj4gPiBDYzogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5j
b20+DQo+ID4gU2lnbmVkLW9mZi1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxh
eS5jIHwgNCArKy0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlz
cGxheS94ZV9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5
LmMNCj4gPiBpbmRleCAxYWI0ZGQ1MTA5NGYuLjRkMWRkNTI5NGI4OSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmMNCj4gPiBAQCAtMzMwLDggKzMzMCw2
IEBAIHN0YXRpYyB2b2lkIHhlX2Rpc3BsYXlfZnJvbV9kM2NvbGQoc3RydWN0IHhlX2RldmljZSAq
eGUpDQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZGlzcGxheV9kcml2ZXJfaW5p
dF9odyh4ZSk7DQo+ID4gwqANCj4gPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF9ocGRfaW5pdCh4ZSk7
DQo+ID4gLQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9vcHJlZ2lvbl9yZXN1bWUoZGlzcGxh
eSk7DQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcG93ZXJfZG9tYWluc19lbmFi
bGUoeGUpOw0KPiA+IEBAIC00NzAsNiArNDY4LDggQEAgdm9pZCB4ZV9kaXNwbGF5X3BtX3J1bnRp
bWVfcmVzdW1lKHN0cnVjdCB4ZV9kZXZpY2UgKnhlKQ0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoGlmICh4ZS0+ZDNjb2xkLmFsbG93ZWQpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqB4ZV9kaXNwbGF5X2Zyb21fZDNjb2xkKHhlKTsNCj4gPiArDQo+ID4gK8KgwqDCoMKg
wqDCoMKgaW50ZWxfaHBkX2luaXQoeGUpOw0KPiANCj4gSSB3b3VsZCBsaWtlIHRvIGNsYXJpZnks
IGlmIHRoZSBvcmRlciBvZiBjYWxsaW5nIGludGVsX2hwZF9pbml0KCkgYW5kIGludGVsX2hwZF9w
b2xsX2Rpc2FibGUoeGUpDQo+IG1hdHRlcj8gU2hvdWxkIHRoZSBpbnRlbF9ocGRfaW5pdCBiZSBj
YWxsZWQgYmVmb3JlIHRoZSBwb2xsIGRpc2FibGU/DQo+IA0KPiBPdGhlcndpc2UsIHRoaXMgd2Fz
IG1pc3NlZCBpbiBteSBlYXJsaWVyIGZpeC4gVGhhbmtzIGZvciBmaXhpbmcgdGhpcy4NCj4gDQo+
IFJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGlu
dGVsLmNvbT4NCg0KSSBzZWUgdGhhdCB0aGUgbmV4dCBwYXRjaCBpbiB0aGUgc2VyaWVzIG1vdmUg
dGhlIHBvbGwgZGlzYWJsZSBhZnRlciB0aGUgaHBkIGluaXQuIE15IHF1ZXN0aW9uIGlzIG5vdA0K
cmVsZXZhbnQgYW55IG1vcmUhIA0KDQpCUg0KVmlub2QNCg0KPiANCj4gDQo+ID4gwqB9DQo+ID4g
wqANCj4gPiDCoHN0YXRpYyB2b2lkIGRpc3BsYXlfZGV2aWNlX3JlbW92ZShzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LCB2b2lkICphcmcpDQo+IA0KDQo=
