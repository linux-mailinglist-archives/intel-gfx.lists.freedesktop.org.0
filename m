Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 082309E336E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 07:09:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC69110EBF7;
	Wed,  4 Dec 2024 06:09:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HX6Z0WFZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08C010EBF7;
 Wed,  4 Dec 2024 06:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733292544; x=1764828544;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H/F4rubOeD+TXgsL8YBrcRJH7dt58irMEE1dchqdvUg=;
 b=HX6Z0WFZMTvPq2fph81Fu5LCGrrNxHMJycDfl8AQXnvQTp2KwnnqwIpA
 ku9UkZoo6ZJhTnJ6RV9LjXptRMPHDcdsvARDZCyHPnyH27WSZXUHqCXaJ
 SVjv/4A/vwG5fNxPn4CBg4XGEmmHqQec2icmhD8vzIOqEmZZTQ4oM3emI
 +EdBbh8YeLcDX/rrZX5n27RC2+j0CUvBgI9AYCgdp9P2TNwnsEWEjEhI7
 eVaXdhM39U/jC6cb1BKOL0JCTJfVJQV07E25bmmTByZXKZlcj0uQuE438
 AWQW0/5TWNdvbSj4L0tONkKsbzXO2Zh22N+tVpIdRDvFfAD0NJmuBGToD w==;
X-CSE-ConnectionGUID: b4altYiYQaa65tfyYLcSlw==
X-CSE-MsgGUID: 9EOZaoj7SVKiVWtJ7bvWjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44151657"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44151657"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 22:09:04 -0800
X-CSE-ConnectionGUID: jprb8tevTHKh1SYml1gFpA==
X-CSE-MsgGUID: 8TozkKG2Q7KG92LDwpvX1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93757014"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2024 22:09:04 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Dec 2024 22:09:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Dec 2024 22:09:03 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Dec 2024 22:09:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FE/UvYAmdHHefrTzXiTu1CmGEI5F1MVQz867HemgJTqNEaXzxlY90AoAqiQjwUN/9+UxCWvDfODtSo1P9/rLMzkf14PU/y51933w3jOZbnksC0p9i1lC8e7aCZz7Z71cwkwjTx96NdL//i2qydKN6+ur5/tT7eTe6/m5QVOFmlQx/DuwEGOK4C1PMQH5LRB9Pa+kQCBoQOJGapfes4Bih01xAKpUGXLhHDJZ+wLku++hCJXB6f/8fpayirvWeiq5POrT0asZaetsyKXMY/J83Sv6yRpUUYjAH4RTPBlO0khqj7VphZaNDcnEXtGKS0AO9z8RSgEvW4zxoQv29GOm8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H/F4rubOeD+TXgsL8YBrcRJH7dt58irMEE1dchqdvUg=;
 b=wxAkkHFYL+XHanWOwg4mlPytCll0SP6C9u0Z65227u3etOBY3omfgGJlfb/6sUnN0sojLMT1tPfgtELZLOAyfGASjedxtURgC/h2O1npuxi/pAaL39AF87RAieuNFswTJklqKHexoKiWQoYcOJIxPET+XOOZcaCjZCVjab6xf40A+QE9rL/O5B51R/AZUnlzjAHIac4szsjYniw3mDeURsiqq4Mlgl66V7UBZPJsutuVRSGilj44zBXJdMF1YeYZH7DpxKPYyqFHD698rFY/nmZ9IbiwKhfnCSDBftIoZWevQ+l3Fe5YUhL8/n4NN4gTV8RKovQ82bmOX78B8RDo7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by IA1PR11MB7296.namprd11.prod.outlook.com (2603:10b6:208:427::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 4 Dec
 2024 06:09:00 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%5]) with mapi id 15.20.8230.010; Wed, 4 Dec 2024
 06:09:00 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2RwX21zdDog?=
 =?utf-8?Q?Fix_a_few_side-band_message_handling_issues?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vZHBfbXN0OiBGaXgg?=
 =?utf-8?Q?a_few_side-band_message_handling_issues?=
Thread-Index: AQHbRaXm2KxVQfaHBk2Nykis88HNb7LVmxcg
Date: Wed, 4 Dec 2024 06:09:00 +0000
Message-ID: <CH0PR11MB54916C375464E8FA27DFA5DAEF372@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20241203160223.2926014-1-imre.deak@intel.com>
 <173324464977.2079416.10103553173053470508@b555e5b46a47>
 <Z0867N2_OIfdKRNe@ideak-desk.fi.intel.com>
In-Reply-To: <Z0867N2_OIfdKRNe@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|IA1PR11MB7296:EE_
x-ms-office365-filtering-correlation-id: 0fde5d93-31b2-4477-015c-08dd142a2527
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZHVYTFl1MllwNk5kN0FCSTR1RXUzbmtMS0VHN1VtdmdVbUt2a2g2dVdERWVZ?=
 =?utf-8?B?TW1YcDhzL2lyMGcyWGdNQUZ3dVRUb1dYb0FUMlA5V1EzTlRkRE1sZnhqL29q?=
 =?utf-8?B?TlMxbGFDeG1LTVNBSUNvNVdtWVlieDlNaVlsVzB3a2YxWHZNYVRvMktIbDNY?=
 =?utf-8?B?bWtFamljdXJHdUp0bEt5RVZiUUVjUEx6dXp0VUxSa2RGVzBkR0YwVFIvMkx2?=
 =?utf-8?B?aHJpK3kwUkJ5aXJvbEw0Qkt2eFZuejNxTWpjZEY1NDBlWTRoYnllT0xWY3NS?=
 =?utf-8?B?SlplTmJWN1hPVUFVRXlWWUZyTnVvWGFMTHVINUpwSlZNc2VybTI3SW9iQ21X?=
 =?utf-8?B?aWRFQUJndVBNZmJKWnh2SjA3SEtRRVhuejJXS05SWGJCTHk0QWhRUnQwalFV?=
 =?utf-8?B?N1p4M2Z2Wm9LMW5mNTFwaHhaODVDZ0tVZTE0bkh0Q2ovYUh4b3BHWjU5cldu?=
 =?utf-8?B?cG1nOEtvTzBLOVhrYU5JczV0SlVCTDJ1Vkorc01yU05ReE5YQzZDVlNLaUVk?=
 =?utf-8?B?d2Jhc2d6aUp2U1dzN2ZiWHdWQnRMaFRrdWgvZDlqaGU2emExTCtmTEJmNGNJ?=
 =?utf-8?B?Zk1XRVNQYU1vejdHZEkzTUxVVUV2bnZDMlJUM1NBekhvN014Mng5eFY2N29l?=
 =?utf-8?B?YVd5TW1FQkJydWxxWlRFNENwUGllNHovZWdZMmhIOEJFc1Z2eXdpZTVkZXlR?=
 =?utf-8?B?TWxhODh6R3lBN2Fka2h5ck04WHUyN29Bcy9RRGtjNjhmUUcwa1JadFVXRG9n?=
 =?utf-8?B?SElacnYxZ2s1bGhwdXk5ODdUaHE4STlmc2g3RTBJcVBZRUlzeUdYNXBDcG1h?=
 =?utf-8?B?c0lYWTk5cjBHMVpZRW1WUmIwTzZsaXdMRWpBUTAvSCtVVDlCWmoxdmxRVmlt?=
 =?utf-8?B?cmFzV09FT1NqL0JBYzZ3alEvYWlHR0tYZmxqTU9KVTdLRkwybkVWZ0dodE1p?=
 =?utf-8?B?ZnV4aWNQNmZpTGFPbmpqL2U5Rm85UFRvMDROQTAyKzBpTjFzVCtHTno1eERV?=
 =?utf-8?B?cUUyclExNm5laXROOW1yd0hIa0VFdEZta1ZRNUd3blMyb0FsYVBBZWQ5UzE1?=
 =?utf-8?B?N0Zsc3BTeWM1WHRNTXpualZCRll6K1dKcmpBMldBdmxVL0xlRXJRd3ZzZE1a?=
 =?utf-8?B?b0ZMNGpnc1JGcFlHdlhkVTV2TWY2dkZYV0VnNlhycDVKZGlLVHdJNHo1bVha?=
 =?utf-8?B?T2xtMVJWdXU3ZHZmb00wMUJaZDNGQnRRVFRibG95dmsxUm1Vc2lFVUlhM25J?=
 =?utf-8?B?YVNsUUJkZmwrUVJiNDcxeXVVYlRXWDJxZ0NaYjR0b1JEQ2IyaHZLcFNFUi9T?=
 =?utf-8?B?UnFoRVoxNVVqWGtEeGhNYWZIVUsvYlFpY1NUTUlmV3N1QWxYRDhpeUVlK3kr?=
 =?utf-8?B?cENGblprVEFuK1ZzWkhvZWxsR2V3RFZmcmp2Lzd4dG4wc0tXUjQyL3IvYTFo?=
 =?utf-8?B?b0cvczFyQnVXYys4TUhBeWxLL2ZyY1hDRFpLV0JVZGRLallsY2tHaHRxeWhJ?=
 =?utf-8?B?dUlYTEJMM2UvemtCZ3F2b2d0dVJZNUVUYTBRSmlsNGZ3OW83OUVldzNGaHRr?=
 =?utf-8?B?SWs2WitBckdjMUROZyt0akYvTmdXNTlxb1ZxUGJBQmgvd0x6cnVpUFM2eFVV?=
 =?utf-8?B?a2hrcWdCalZMN0VkU2hlNVErY3NHYmZBeDZ2NStZZFVaYUY4SmFpUlJRRTVx?=
 =?utf-8?B?WjAvdWhrMm9jaXh5YURLckx0RWcyeDlFa3JlN2ZXdnNDeE1VU2VPQTlJQSty?=
 =?utf-8?B?RjJwV0V4d3ZsRVFMN1VyWnR1S1dIeHpwY3NkekFFME02bFBpZ0pBc093czF2?=
 =?utf-8?Q?rAOokut6YXgqMZZplwW+d/c3GNdb6EWzjipOQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXFyRXdjeURWNDhnMnVPV3M2cUFJU3czVzZkT05zbjFjK3ZvQ1FqQ3FSTjMv?=
 =?utf-8?B?bk92Z2loa3B5azhZb1FRQzdFSnBLbEY2UWtSTFNpQWw3Vk1pR2ZyOGkzT0hk?=
 =?utf-8?B?MUhZVHoxZE0zNnk0MU9RNzlNZEpxcklVeHRseFV4OVdVRXJmS3d3MnNaUk5D?=
 =?utf-8?B?Tm53eFdtZitQUHJDV2tISEZGd3J0bWVYdWFqdFhUbUcrek1JM2hXSlF1c3R3?=
 =?utf-8?B?UWlFM0l4cWsvQlpXMXJzVkZjelp4WlREcThuRm5oc2pkYzhrN0VpT2ptWCtO?=
 =?utf-8?B?NEFRR0dtbFYrL1k0NTVVY2hFU2huWlVYSHFXTkpEV01VWGhwWGJ3c3hTVTdH?=
 =?utf-8?B?clFxdmliZ2c4dG90U05zZGlaR1NseVMvVVZuOWFOcnRTa3UzTm15UkptUWdn?=
 =?utf-8?B?L0pxcm4zUGVaY05NOU4zbzZUL21Vb2p0UVRBWUowaFRMZ0FZRmJCVnozRURy?=
 =?utf-8?B?elZxbWMzUHRUcHFtUDBYQzJKSWR6MktzcGpoSjkxZ1pIZ0lzVnNwZmVFV3Bj?=
 =?utf-8?B?WEprd3JnRmxCKytnZUlSL2tTSDV3U3JSVUcvV1NVbVJlTXZmRXAyUUxsY0N0?=
 =?utf-8?B?T2pwTURKeklxeldxYU5GeUJNcUNaMFRuK1l2SHRPWUxFd3BXbXI5RkZJeGl6?=
 =?utf-8?B?M0FjOTh5cGoyVzVhOFRZdTBESU5CUXYrcG5OZlhpSkZxbjE3R2hnN3NpMllx?=
 =?utf-8?B?anVyZ1YxNVlXQ2huYWdPZDd1ZnBLd3ZGMkVrbFlnWWNqREVmM0F6YW51NUQy?=
 =?utf-8?B?dWRwT2lWb1JJRHpRSHJSR3poYXJabDEzYVRyaXJxcWVrTHFvWGNRNjA0MEVs?=
 =?utf-8?B?Vnp4d2dkQk1VVVJzRVZsYU1XZVVrSE51QW1tMlB3SjdFbmRjRE1KQys3ZzZ4?=
 =?utf-8?B?RWdWaVJUSkN1eU5Qb0E5VzBDSkNtNzl3OG1haWdLRGJUNFQ3Mk84UEVRV1Ni?=
 =?utf-8?B?bXNkWGpINklHam9GSUVJWHpReDIzUUFFdGkxdEdpU0d0bjdmK2ozK3RqMlYv?=
 =?utf-8?B?RHR2U1hwVWRBQVNwSmZ5ODVKZmkvWWFUWDlSWDlYOXZpYml4NWRZL1MrWUQ4?=
 =?utf-8?B?LzdXdi9wUkxhcnM5OGhOckhDWmJMbkEvSWlOVWtIcXZvSGJHYlJtSHlrVmJW?=
 =?utf-8?B?SUlWN2g0ZElZWWoraWpVWitYNjZBQVUwVGIyZ1NnOC85MUloVFo5dDllU1Bz?=
 =?utf-8?B?UnNDQ1ZSbWhFYk44ZFpwSnk2QmhhL1dUQnVVQ0xFUGFQajg2dEw3Nmk1NytQ?=
 =?utf-8?B?S1BpWUlFV1k4cHdXV0N1dk45MFpjMEZVUVhyVU53bXJvM3EzMDc5T1JCZ3R2?=
 =?utf-8?B?ZHVDV0VKLzFrVVNrbVhXa01yTitlNlN6Y0hCbjlEd1gvWnNsck9TbmZPZWlE?=
 =?utf-8?B?dkh5akQ3Y2Q3Qmk4eXlWVXlPdW5BaXE0WGVNellOUmtnb0hLS1NrQWUreW9K?=
 =?utf-8?B?aVZ3V1BQVXRyd1NheXllVHlhRHUvVlpZcW54MlpTL3dFR0ZlNVVXMDRMWXJn?=
 =?utf-8?B?b1JNaktJVnRvWmJoZVoxemJXQ29tZnUzTktmUnkvZFIrUFIwdE9DT2NLc0FE?=
 =?utf-8?B?eXJWYkpUKzlkOFhBTC9tMGRaanNUR21TMjBNSHdUalpTUkt3b0FQblVNVzIx?=
 =?utf-8?B?YlQ5aTFWbXZuOUJGbzRnVUxXVDM4eVlMT0o3WVFaVVNpTjZOL0lPcjAwblg5?=
 =?utf-8?B?WXpZWTViZk5YdFRCaERoSFBpNnJHbURjcUJjWXcvRkdNeElPZ0M1WmtHazZu?=
 =?utf-8?B?eFZiVjliS2RXREZrOEQyMUErS24wVUVCRGRDZ1RzVHl4dGQ2STF5aXJhdHZI?=
 =?utf-8?B?QldlLzRCcjZiVEZxWThJN011ZERiaGI0cU5yUEdSUkNiUGtWa2VJSjNSbkx1?=
 =?utf-8?B?Myt4M1lmU0I2TUFiSnRoRTk1WTRPZUJ2Mmg1NkRFblhmVFVqWnBINnFOTHVR?=
 =?utf-8?B?UHdXV0JPNDF3WmE0cUloRVNpMVZsWk1rdkQ0QmkxU2lyRWR4VFZhT3A2Smtu?=
 =?utf-8?B?d2FNdXZJV2gxWjNOOWR2ZDRaVXJzNHJFVUNJWnBUMXZ3R0YrSkgrYjBuVGp5?=
 =?utf-8?B?SUp0SGdRVHQzTTRzSEhFbUlVdzFkSGJkU05uTTNrWERJNlRFWk5rVTlaYzVP?=
 =?utf-8?Q?f+FWeleSpyxQyBuDkWLr+5j5r?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fde5d93-31b2-4477-015c-08dd142a2527
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2024 06:09:00.0622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vHtTJvPKHw8qq5peW4mDSjBR1sSBRcEYCjkfaEI6z4qFoemYn84MREGbJzO8UOB9Jzn9yGSSYBIQQatCJ6wcgb290vUbODF/AaS9D89J9p8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7296
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQyMDU3LyAt
IHJlLXJlcG9ydGVkDQoNCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KUmF2YWxpIEp1cGFsbHkNCg0K
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEk5MTUtY2ktaW5mcmEgPGk5MTUtY2kt
aW5mcmEtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERl
YWsNClNlbnQ6IDAzIERlY2VtYmVyIDIwMjQgMjI6MzgNClRvOiBJOTE1LWNpLWluZnJhQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1
YmplY3Q6IFJlOiDinJcgaTkxNS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9kcF9tc3Q6IEZpeCBh
IGZldyBzaWRlLWJhbmQgbWVzc2FnZSBoYW5kbGluZyBpc3N1ZXMNCg0KSGkgQ0kgdGVhbSwNCg0K
T24gVHVlLCBEZWMgMDMsIDIwMjQgYXQgMDQ6NTA6NDlQTSArMDAwMCwgUGF0Y2h3b3JrIHdyb3Rl
Og0KPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiANCj4gU2VyaWVzOiBkcm0vZHBfbXN0OiBGaXgg
YSBmZXcgc2lkZS1iYW5kIG1lc3NhZ2UgaGFuZGxpbmcgaXNzdWVzDQo+IFVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDIwNTcvDQo+IFN0YXRlIDogZmFp
bHVyZQ0KDQp0aGUgZmFpbHVyZSBpcyB1bnJlbGF0ZWQsIHNlZSBiZWxvdywgcGxlYXNlIHJlLXJl
cG9ydCB0aGUgcmVzdWx0Lg0KDQo+ID09IFN1bW1hcnkgPT0NCj4gDQo+IENJIEJ1ZyBMb2cgLSBj
aGFuZ2VzIGZyb20gQ0lfRFJNXzE1Nzc4IC0+IFBhdGNod29ya18xNDIwNTd2MSANCj4gPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiANCj4gU3Vt
bWFyeQ0KPiAtLS0tLS0tDQo+IA0KPiAgICoqRkFJTFVSRSoqDQo+IA0KPiAgIFNlcmlvdXMgdW5r
bm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDIwNTd2MSBhYnNvbHV0ZWx5IG5l
ZWQgdG8gYmUNCj4gICB2ZXJpZmllZCBtYW51YWxseS4NCj4gICANCj4gICBJZiB5b3UgdGhpbmsg
dGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMN
Cj4gICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDIwNTd2MSwgcGxlYXNlIG5vdGlmeSB5b3Vy
IGJ1ZyB0ZWFtIChJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cg
dGhlbQ0KPiAgIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCBy
ZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPiANCj4gICBFeHRlcm5hbCBVUkw6IA0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIwNTd2
MS9pbmRleC5odG1sDQo+IA0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg0MiAtPiA0MSkNCj4gLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIE1pc3NpbmcgICAgKDEpOiBmaS1z
bmItMjUyMG0gDQo+IA0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IC0tLS0tLS0tLS0tLS0tLS0t
LS0NCj4gDQo+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJl
ZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQyMDU3djE6DQo+IA0KPiAjIyMgSUdUIGNoYW5n
ZXMgIyMjDQo+IA0KPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4gDQo+ICAgKiBp
Z3RAa21zX2ZsaXBAYmFzaWMtcGxhaW4tZmxpcEBiLWRwMjoNCj4gICAgIC0gZmktY2ZsLTgxMDl1
OiAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdDQo+ICAgIFsxXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU3NzgvZmktY2ZsLTgxMDl1
L2lndEBrbXNfZmxpcEBiYXNpYy1wbGFpbi1mbGlwQGItZHAyLmh0bWwNCj4gICAgWzJdOiANCj4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMDU3
djEvZmktY2ZsLTgxMA0KPiA5dS9pZ3RAa21zX2ZsaXBAYmFzaWMtcGxhaW4tZmxpcEBiLWRwMi5o
dG1sDQoNClRoZSBhYm92ZSBob3N0IGRvZXNuJ3QgaGF2ZSBhbnkgTVNUIG91dHB1dCBjb25uZWN0
ZWQgdG8gaXQsIHNvIG5vbmUgb2YgdGhlIGNoYW5nZXMgaW4gdGhlIHBhdGNoc2V0IHNob3VsZCBo
YXZlIGFuIGVmZmVjdCBvbiBpdC4NCg0KVGhlIGZhaWx1cmUgaXMNCg0KPDM+IFsxNjMuNDQ1NDM0
XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBDUFUgcGlwZSBBIEZJRk8gdW5kZXJy
dW4NCg0KYW5kIGxvb2tzIHRvIGJlIHRoZSBzYW1lIGlzc3VlIGFzIHRoZSBvbmUgcmVwb3J0ZWQg
aW4NCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1
ZXMvMTI5MTQNCg0KPiBLbm93biBpc3N1ZXMNCj4gLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUg
YXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNDIwNTd2MSB0aGF0IGNvbWUgZnJv
bSBrbm93biBpc3N1ZXM6DQo+IA0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+IA0KPiAjIyMjIElz
c3VlcyBoaXQgIyMjIw0KPiANCj4gICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkOg0K
PiAgICAgLSBiYXQtZGcxLTc6ICAgICAgICAgIFtQQVNTXVszXSAtPiBbRkFJTF1bNF0gKFtpOTE1
IzEyOTAzXSkNCj4gICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV8xNTc3OC9iYXQtZGcxLTcvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQu
aHRtbA0KPiAgICBbNF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDIwNTd2MS9iYXQtZGcxLTcvDQo+IGlndEBpOTE1X3BtX3JwbUBtb2R1
bGUtcmVsb2FkLmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX2ZsaXBAYmFzaWMtcGxhaW4tZmxpcDoN
Cj4gICAgIC0gZmktY2ZsLTgxMDl1OiAgICAgICBbUEFTU11bNV0gLT4gW0RNRVNHLVdBUk5dWzZd
IChbaTkxNSMxMjkxNF0pICsxIG90aGVyIHRlc3QgZG1lc2ctd2Fybg0KPiAgICBbNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1Nzc4L2ZpLWNmbC04
MTA5dS9pZ3RAa21zX2ZsaXBAYmFzaWMtcGxhaW4tZmxpcC5odG1sDQo+ICAgIFs2XTogDQo+IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjA1N3Yx
L2ZpLWNmbC04MTANCj4gOXUvaWd0QGttc19mbGlwQGJhc2ljLXBsYWluLWZsaXAuaHRtbA0KPiAN
Cj4gICAqIGlndEBrbXNfcHNyQHBzci1wcmltYXJ5LW1tYXAtZ3R0Og0KPiAgICAgLSBmaS1wbnYt
ZDUxMDogICAgICAgIE5PVFJVTiAtPiBbU0tJUF1bN10gKzM2IG90aGVyIHRlc3RzIHNraXANCj4g
ICAgWzddOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQyMDU3djEvZmktcG52LWQ1MQ0KPiAwL2lndEBrbXNfcHNyQHBzci1wcmltYXJ5LW1t
YXAtZ3R0Lmh0bWwNCj4gDQo+ICAgDQo+ICMjIyMgUG9zc2libGUgZml4ZXMgIyMjIw0KPiANCj4g
ICAqIGlndEBpOTE1X21vZHVsZV9sb2FkQGxvYWQ6DQo+ICAgICAtIGZpLXBudi1kNTEwOiAgICAg
ICAgW0FCT1JUXVs4XSAoW2k5MTUjMTMyMDNdKSAtPiBbUEFTU11bOV0NCj4gICAgWzhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTc3OC9maS1wbnYt
ZDUxMC9pZ3RAaTkxNV9tb2R1bGVfbG9hZEBsb2FkLmh0bWwNCj4gICAgWzldOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIwNTd2MS9maS1wbnYt
ZDUxMC9pZ3RAaTkxNV9tb2R1bGVfbG9hZEBsb2FkLmh0bWwNCj4gICAgIC0gYmF0LWFkbHAtNjog
ICAgICAgICBbRE1FU0ctV0FSTl1bMTBdIChbaTkxNSMxMjI1M10pIC0+IFtQQVNTXVsxMV0NCj4g
ICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
MTU3NzgvYmF0LWFkbHAtNi9pZ3RAaTkxNV9tb2R1bGVfbG9hZEBsb2FkLmh0bWwNCj4gICAgWzEx
XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0MjA1N3YxL2JhdC1hZGxwLTYNCj4gL2lndEBpOTE1X21vZHVsZV9sb2FkQGxvYWQuaHRtbA0K
PiANCj4gICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkOg0KPiAgICAgLSBmaS1jZmwt
Z3VjOiAgICAgICAgIFtGQUlMXVsxMl0gKFtpOTE1IzEyOTAzXSkgLT4gW1BBU1NdWzEzXQ0KPiAg
ICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8x
NTc3OC9maS1jZmwtZ3VjL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwNCj4gICAg
WzEzXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0MjA1N3YxL2ZpLWNmbC1ndWMNCj4gL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2Fk
Lmh0bWwNCj4gDQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0KPiAg
ICAgLSBiYXQtYXJsaC0zOiAgICAgICAgIFtBQk9SVF1bMTRdIChbaTkxNSMxMjA2MV0pIC0+IFtQ
QVNTXVsxNV0gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1Nzc4L2JhdC1hcmxoLTMvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFsxNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjA1N3YxL2JhdC1hcmxoLTMv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgICAtIGJhdC1hcmxo
LTI6ICAgICAgICAgW0FCT1JUXVsxNl0gKFtpOTE1IzEyMDYxXSkgLT4gW1BBU1NdWzE3XSArMSBv
dGhlciB0ZXN0IHBhc3MNCj4gICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fMTU3NzgvYmF0LWFybGgtMi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
QHdvcmthcm91bmRzLmh0bWwNCj4gICAgWzE3XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjA1N3YxL2JhdC1hcmxoLTINCj4gL2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPiANCj4gICANCj4gICBbaTkxNSMx
MjA2MV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9p
c3N1ZXMvMTIwNjENCj4gICBbaTkxNSMxMjI1M106IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTIyNTMNCj4gICBbaTkxNSMxMjkwM106IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI5
MDMNCj4gICBbaTkxNSMxMjkxNF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI5MTQNCj4gICBbaTkxNSMxMzIwM106IA0KPiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEzMjAzDQo+
IA0KPiANCj4gQnVpbGQgY2hhbmdlcw0KPiAtLS0tLS0tLS0tLS0tDQo+IA0KPiAgICogTGludXg6
IENJX0RSTV8xNTc3OCAtPiBQYXRjaHdvcmtfMTQyMDU3djENCj4gDQo+ICAgQ0ktMjAxOTA1Mjk6
IDIwMTkwNTI5DQo+ICAgQ0lfRFJNXzE1Nzc4OiA1Nzc5ZmIzYzEyZmFmMTI1ODkwNTQxMjdkNjBi
MWQzNmQ1NmJhMjE5IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4
DQo+ICAgSUdUXzgxMzU6IGM2ODQwZjVlM2MzYjk0MmFhNzk3MjdlZTQ5NzhhNWI3OWYyOTBiNjcg
QCBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lndC1ncHUtdG9vbHMuZ2l0DQo+
ICAgUGF0Y2h3b3JrXzE0MjA1N3YxOiA1Nzc5ZmIzYzEyZmFmMTI1ODkwNTQxMjdkNjBiMWQzNmQ1
NmJhMjE5IEAgDQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0K
PiANCj4gPT0gTG9ncyA9PQ0KPiANCj4gRm9yIG1vcmUgZGV0YWlscyBzZWU6IA0KPiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIwNTd2MS9pbmRl
eC5odG1sDQo=
