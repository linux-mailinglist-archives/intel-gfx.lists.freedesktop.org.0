Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D3yGNPqHV2qVWQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:15:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA7E75E8B1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:15:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VAfeuQWR;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A21DE10F053;
	Wed, 15 Jul 2026 13:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F9210F04F;
 Wed, 15 Jul 2026 13:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784121335; x=1815657335;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i0/GqeCcq7+PLoSPlntHX2adjkBin1ZwIEPmj2e7cps=;
 b=VAfeuQWRV15J1WENTCfxCpsNsSvba3vSckmlAo52cdE8ZCWjJnsty5xE
 NjVRKDkzyzVaxoRmmZHSiaBHrPxhEviyJ7O/KN/bKQBW7Y7jpeUKix/Li
 Cc8NV++oyxa3KUNSGStAjY8i8v9j5/CWjKdhDls/xCYuSPPpXe8OWXoaO
 hSGsdiyrzmwDhorz8ctk3y+R6D/0n0/Lc6ldqa4Ku13hZeC8stLpWS5sH
 Yp378tGpo2dzwcxq6ePRPIRWajS7lm+2YxkX7EOuTlFVn8YOU0GoechZn
 g8QZOuIbkmrSmy7aFRvEGKgU9YWTxbIXgLTQ36sZO6aoxtSDGxhEVd+vz Q==;
X-CSE-ConnectionGUID: oHaU2zU4TAKLIh1B9gvGVA==
X-CSE-MsgGUID: /H/+0TQHTJibulp/QaoWlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="95404074"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="95404074"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:15:35 -0700
X-CSE-ConnectionGUID: 0bFAqljJRQmcSiA1DudjIA==
X-CSE-MsgGUID: 3KhsuElqR2mNVa1umru+mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="258138690"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:15:35 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:15:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 06:15:34 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:15:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O+lnZxPDPRCBk8tYf6vZ8TL86aPDWUapmKmEWHaii6oVTxApRwjbmGxbbAdIlbhjuAWfrP2f9tdenE+nnk2lYko4TWZXY+m4CPgtGQ4BbJAIhrjDhwfg02tnK7fxto9fKmGawEC2WoaK9qZ+biEoKE2UPrem//26bWEv1SJpeTq0K8CEAk+r6no6ElEjgef1ReCdODDUMU32gRxbC+iS9pM2FSv8zHFIjZqAUFumvO0yajP3KxpKxpRv2tOdkndiX8BoAhHvX26dYTVbsW5LBhCkvqX112nVHOlG/jYtlMG7Z8eRxxl/YFF+6bS7ZMsL3KXWomIzxHeWC3I6RgKKtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xm1Ml6RuZcM7ZLjpbXTDeLpCO0xbccx0oLE4dJ953Zg=;
 b=R4McJDAS6++ycBSljdeD5tKAPRuKiv++dzTFqw1wJB45YOvBie7WCkvqAf65D/u+8LWgEwEXCXt+o+gBAThXTWilAro1Xbc4EDSWu1slyla8uKwbtxM5RB3UYT7CvJCltj36jnze/sEJO9xAZLudaIIzKeUoZ3XC6/P7uU7QXUtSSZFk+unKfN4VxrIRBGPELzk1+hx0oc620xeCf6AAuoAoq58a25PkOmgwhnizFUU05rOFYdg9pf2w4STiVtdqMx8iKnbzS+moj+i35S3vHirKhEKCRLQlQtUKldURFc/TAoS/cuRRIZ9KN+MeqCeIrAaTRFy8+HTXnNnQyUqiFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by SA1PR11MB5779.namprd11.prod.outlook.com (2603:10b6:806:22b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.12; Wed, 15 Jul
 2026 13:15:27 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 13:15:26 +0000
Message-ID: <79756ac5-c326-4459-bed5-8867c07666d0@intel.com>
Date: Wed, 15 Jul 2026 18:45:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/8] drm/i915/vrr: Return from CMRR compute config in
 case of PSR2 enabled
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ankit.k.nautiyal@intel.com>
References: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260714103938.2371448-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260714103938.2371448-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0107.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::9) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|SA1PR11MB5779:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e0e034f-ab0e-428a-365c-08dee2732280
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|10067099003|11063799006|4143699003|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: U6WPWTLjb3pbvkLDq7+v7qXP+ADz0aAB0b41opoTnRI5LklN6O2qGabzwouqoGtgwWJGYKz0OEkZyrgM6a877uTsKAz1bPYqbftBzbMMHaSw+Tv8VBXoyqmQYn4xD8bGOqCuX2Q3HRefIbIEjGfTcUC2CpWPvJaFfyy59Kji750ZFDPOh+U5lkHUt3uHn2irESAVk2IYI335ryNvVDdqdURZ/c8NyBdoQx+w+yMQjkxkxtbAhhnuJ3VmzJuolccNmz9D50bLG4STVWvdZhvuQay130ZhtuCF4/A/BxRMCGmI7kIJlxqEaedMr6JzNfwf6ApFjsimDhJyVU3kWs4bZ9uedALvLbr22oc7kdxgD7Ra5Tysu2jgye2N7f5xzmWWAvGXUalx73ccV08iYCUekRVgdOptKm0ytBkftsu9p6LbLtcF4s3ceXDmOGZxHR/4CVYue3K5lNdXQneoLWjeKVd7vD6s2t+UlPDq53AiRoUU4CTZCGpCm6/XEpysJueQKY5xItG99XVf+yaeCclNKJIHJVj+DJgmcWXOYtpTPb7hdMztCLZ7Z3vllJNMRk/H2iAC+e6W1+d0hCwV3NgCJ3mKvbuSuMvmTbfVF+QWLReUsmxQKuQyTbV5fvPOliOAqqXHlVwZ6KEwnqjKRxXK2inmVl6p1W0wRiOGHef+/g0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(10067099003)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajdkekVobWl5ZWtBOU5tSXIzRnlNUFZTWGxZNFRXUjBLYWo2VmYveno5MVo0?=
 =?utf-8?B?WitNNHRVdnZjNDYvd3diNXQ0YTdZSzlTYWo0dkZmMjM0bFlFWGVsajBsUEZF?=
 =?utf-8?B?THFtMjdCM0dRTGd0M1hGc2E1d1dLbXNtbmpBT0ZKM2tJWlllKzNMWkRBanlz?=
 =?utf-8?B?VmRwRW9mblFkNHRnT3JCZHFwcFk4MHdQckhoTVc0Q2RGM0pFUTRCUnROZHA2?=
 =?utf-8?B?MGhra01hdlpCUGhPRkZDUWFNMHVOaEt5bG9YWENJbDBEVDRIUUptZEo3VXcz?=
 =?utf-8?B?RWNJNEtWSXV6OWpXZDdLdk9FWGRaQUxjS3FGVTdjUEcxQURZNyt2b0NKcVF1?=
 =?utf-8?B?L0JHalNaWFIvaE9WeDgrS1phZnQ4M0Y0cDJ4cDBpUnRuZ2VhUXBIanZmWWxY?=
 =?utf-8?B?N1BtQWlqUlcrTVBvYWlZK1ZRSFN1TEd2OUpzczFuV1B3RExRV0svemRybUlu?=
 =?utf-8?B?bWZJblo0WDJpbTRWTVMrd1cvdVhmVkhKa3d1a2RaVm43eHRKZ1dwQjNjdXda?=
 =?utf-8?B?UnZ0WjlMdVFCaXcrV3VKWjhKalZrRlM2aVk1dFJXTUlRcXNWcXh1Mnpua0My?=
 =?utf-8?B?SlNMTyt6SmZ4cHF6YXloMVFRNWtyMjI0Wmo3RDNPaUd5amk2RUMxYkZhNTlH?=
 =?utf-8?B?SFlKOW9tWDdxWGp4bFJoaGJTQis1UUNzYnVJaDBKd0lRNEpwZUY0K3Fsem5r?=
 =?utf-8?B?cnBQWjZDMVh5TDZjRnJ5SzY0N05zUktlNVBzcDlFb0FNRzNBOXF3bkE5TnBV?=
 =?utf-8?B?clptWG5VQjhoRnM1c0x1MDBHVGYvNWxtYUJ1VkhqT0JCV2VOOTBqbW03NVpl?=
 =?utf-8?B?VmtmM2dGVjdsaGxRWlcybHFVRnQyQmVCYmtwM3c2bjdkL2xRQVhNNlFuNmNa?=
 =?utf-8?B?eXRzT1V0WHRFM1gxa3dNVFVnMS9RYmVtTjRtUUhmRC9GcERMVU91WmZ0Wk1x?=
 =?utf-8?B?ZWhxWlNvMllLbVlydnRtVXk4SHlrYk9MelF3NE95SzdaNFQyakJJSDRrUTRZ?=
 =?utf-8?B?Ym9lTWpaM0xpdHo1aSt6Z0pNdlFZVy9LNzBlNkczWHlPczZaa1FIaXJUeWIv?=
 =?utf-8?B?T3RjUHNTRXBPZVBrSm9HQTBUVGlmMk5tZHZycDU0dVRTUytKaUZsMGI4TFVh?=
 =?utf-8?B?LzJuMm5BVWRHd0E3dlhMZ3dpVWxaTVk3VzZJb3lPbTZBb29wNUVVTDJaNHZ0?=
 =?utf-8?B?SVlHMDBGQjZWa25yc3VGVFhwbHJSenJsRnZ4RzJsWDlOSGdJUmVNM1ZGTWFR?=
 =?utf-8?B?amVxUWpjNXBLVXpoaUVheWlZbnRUV1VYTmlJcGwxUHNQYVVNOUE0NmFZU2tJ?=
 =?utf-8?B?ejE0OEE5aTZscjh2aVh4cURZa2hWYmZYSWlMWUlXVTlqdlByL0dIZXNOWjZD?=
 =?utf-8?B?a2lRdjlvaVdGTEpmQ2tLTGtZcTk1RGxpMHdUVDQ4ZzcrWDRDdEZMYzdnd3Vj?=
 =?utf-8?B?NlZWZkxVK1E5amR4STdkU21HVGpkY0lJMU9xM0kySUZqNmR2SVZlRnBzNTll?=
 =?utf-8?B?VktMMzFpbjBXSTdGMWx3eVN2ZU1JZzJrRXdUMlZKU2tKMVg0TVZuVHV1K1la?=
 =?utf-8?B?bjRTR1lzdXhxZVhsdlVjQjVVOVVHSFRYTGNpNkkrbkM2NUVoUXE3M3FBQzZv?=
 =?utf-8?B?NG1ZdUhuY3lxaFB1VUZpZmdFbzdwN1d4cngyaXUyaS93c2VJcjZSUllpWDdz?=
 =?utf-8?B?MEtudHV2Tm53UWVzSGRManpSUmZFUjVsVWZHZnhVUnRoVVZxVGpsTXBYUzdD?=
 =?utf-8?B?cmhkd3hvcHpPODllREplWXNDTjBWVnkzR0tXNXdxeUdtOEdCVHFJMFRuZ21E?=
 =?utf-8?B?VFJqZEY3T0hyUkV5Q1ZMMk9KYzAxNVFBZHN0L2NmQjgvYTgvd0h6ZnVQSTlr?=
 =?utf-8?B?ZlgxNWVGc2VvZDBMVkVWcWFqRWh0eXdlSkdOMllPK2VvbzQ1TEJnb3FOYkZZ?=
 =?utf-8?B?Qmsyc25zc1JrblhDUGFVODlSZ0V0dWxIc3cwbndMcDZQdXBOc2FFSFJZSDM3?=
 =?utf-8?B?dDB6VDNxUndqVzg5M3R4eCs0RWxCWXcrK3grYytYcjEycHBiNnJtNTl0WFlx?=
 =?utf-8?B?SStNZUFvTzcxeFp5eW1DZ0tFNWl2UjhmOUh5NEdIRm1kdm5jdlk4TmY2Q3l2?=
 =?utf-8?B?d1hJOVFnc2cybG5XbER3Vjl2WWN6SDNoR0RFYnV3R0g2cUJJZi85YUREeUs1?=
 =?utf-8?B?TzRSMjFXeEdDTGRCQUUyZFBPSE9xMEllWFR4bG54dmxiMXdmUUltbEZvMHhO?=
 =?utf-8?B?SkVQMjIzNTRpZkZYVUZ1ZEJWY2JnWHVXZW93U01IMU9hOENjLy9VYUNwNXJr?=
 =?utf-8?B?aGFTaXhRRGkvb2tGZTlCdDM1T3FMQ1NzZFJKN2NKbW45THZuckxMaE0vUmRH?=
 =?utf-8?Q?XzZPDVcT45tyBDOzix3b0nIonMNSfeOJ/TxK/?=
X-Exchange-RoutingPolicyChecked: gXD1iMFa48Hn/EASWNrewMoBK2qzGTXFDbAD0CijQ3GZVPVyoBjVJjaTmKfYGgHA4vhJ8Q/Vc60vFZlHmzbr+BddU415lRnkRt/AavUZZJvcM3br7hwmZ3yE/XqkR2WSxogmm3chIc+bEkHFdYX0mCxylcFuOrMeIooQFKLNcuUlEldkqHA9MMDESUy6ZAN3Bto8DaXzNBhcrMeRc0JEu8+SD7qkUIfugXdQiP4pw3Z7RKJh6qYSapts7Uy/VkKlkWgT/XQdRBKW/+S6JcqZDJ9FQPdd5CL7KojBKs6PMSpWY8Uam3eplQ4E/xyiPH4G8Mw4pUA7Dultx6E4Gi8//w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e0e034f-ab0e-428a-365c-08dee2732280
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 13:15:26.3452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ES3Mznwb2m0Whn6XcTuodxxmmxIT9VGHy6nieCAe+fWilBNp3r6t4um2k8RKgMeTOXTDgewygiW+3yZga4NwriGtNF7QTm7+Z4TY2ugUsXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5779
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[10.18.126.92:received,10.1.192.143:received,2603:10b6:510:26f::13:received,192.198.163.9:received,10.18.126.91:received,10.60.135.144:received,52.101.52.48:received];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1BA7E75E8B1
X-Rspamd-Action: no action



On 7/14/2026 4:09 PM, Mitul Golani wrote:
> CMRR is mutually exclusive to PSR2, hence return from CMRR if PSR2
> is already computed.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 52fe40fdbdb3..ca3cac5aa6ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -202,6 +202,9 @@ intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
>   	if (!HAS_CMRR(display))
>   		return;
>   
> +	if (crtc_state->has_sel_update)
> +		return;
> +

This won't work because psr_compute_config happens after vrr_compute_config.

Also is this the best flag to identify PSR2?

>   	/* No CMRR ratio configured through debugfs */
>   	if (!crtc->force_cmrr.numerator)
>   		return;

