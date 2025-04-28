Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD27A9F9E2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 21:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67BD210E6DB;
	Mon, 28 Apr 2025 19:47:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ey2LdW6y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23A2E10E6DB;
 Mon, 28 Apr 2025 19:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745869629; x=1777405629;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jXP+q2LJEwQ09XFImMrbBYvIxM14EgJhiiOEZVyQtQQ=;
 b=Ey2LdW6yoboqxSZmbFrgL3m08Lw/Wnb9nG1qGvFKFckGomraArU1w4Ts
 w50qUdq4342nagmazx+HctzmP6XkRk7fMqC8e3e7HBNCAWCNM32Rcyix/
 gjXAk9Vx9ECC3kVPV6odLKj0Z1oWT/3G5NrK7bkIy6kkOJHAE3cMW2EK5
 II2XVc26VUkGLBHypVwjrmRpvUHmcWFn673XbK/yvpZ3mFG1uB1pUPMKv
 Da+h6T3Ia9EhQ0J3HrVbWqzWkd/vVUjMsPNVK1sT/FyKFJxChS4zlVwzF
 pNZzZcC65BBoXwsTir9znmG1qyEWSlGxWDDYVmz4ydTcJVZZLJdsyv7qf A==;
X-CSE-ConnectionGUID: 4yF2CK0YQE+nUf/Bx/5Q6w==
X-CSE-MsgGUID: YbzpbUK/R8Ki91pH5ETZKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="46591773"
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="46591773"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 12:47:08 -0700
X-CSE-ConnectionGUID: yagVV06VQ9SahZ2RnHq48A==
X-CSE-MsgGUID: +VJW1UoVTW+WHQRt9OCntQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="170839277"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 12:47:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 12:47:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 12:47:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 12:47:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GQXRhzbqHgBoWqKMsSrSlWcqiJEN2dnpR0qVPPpkzCAvrytrxeuMzWN217dO3E8frRqlZPsXCTKIj/uUVWDUJN0PZe1547q2UxVpbiMrZz5osBGoK9cEsIHrr7E9X2y/r72izj1P3gl7gkSoroZt8FMEDx96/sb2nlXYUNm3Eb6NKsQCj+2A1x45Btx8RbSJ5WRZ5+EURU2x8UgdTyX2ph2gURvniBMt0EYIcS2JGm9E7WhXOcBisAO+Q9BsqmdrOpByGb1lp1WH55A6KXCHPWFciZo4R1S13wFTEzVrKNBtbu6Z7qfz/QCxY8LT/4SDNueic6BSr4WrajLDxyEMyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jXP+q2LJEwQ09XFImMrbBYvIxM14EgJhiiOEZVyQtQQ=;
 b=oa/0zPdiVSjjESnWelwfO0U3hMm9dzJnUni/ldY6OM3LZ517LzvdD56+2lTYXeHsuCEQTaYqNWoXkM2zTMJcAEDvL92geSoDWzK0xtqjN9L6vYK3FZGr9t70R43K2UDjTCKzNL/PZrCqRSGCfIvT2UXO32z+nCoIj9oNPwJHE4ovW0uiba/34qQofvykmmEfa1joyzSYI11GPCmJUC2we9cIX+IoqSCcDWowu6rRFqzHQSjUfVb9dsXuhwqeF9zCuf7oDaEqOnviLgtcejCNaxOK+mFHpQexNNisGP4Y1K+OVk5Bvb6dqSKTNZoEXYHPEy/q7eyyJdpZ6LKa3sPJ+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SA3PR11MB8045.namprd11.prod.outlook.com (2603:10b6:806:2fa::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.31; Mon, 28 Apr
 2025 19:46:56 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8678.025; Mon, 28 Apr 2025
 19:46:56 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Jadav, Raag" <raag.jadav@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Wang, X" <x.wang@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: Re: Rare divide error during display resume
Thread-Topic: Rare divide error during display resume
Thread-Index: AQHbt57hFcl9lZhELUmjBB4Kfxr4lbO4r9eAgAAH9gCAAMWLAA==
Date: Mon, 28 Apr 2025 19:46:56 +0000
Message-ID: <2ffe2f710fc22c8af43cc9d15a5c992a546ee37d.camel@intel.com>
References: <aA5xvOhy9qKiVcE0@black.fi.intel.com> <87ldrkyc6s.fsf@intel.com>
 <aA81eHChYSQMYrOB@black.fi.intel.com>
In-Reply-To: <aA81eHChYSQMYrOB@black.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.56.1 (3.56.1-1.fc42) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8430:EE_|SA3PR11MB8045:EE_
x-ms-office365-filtering-correlation-id: 602a5cf1-d7da-4278-b77d-08dd868d6ee7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QjN4SS95R2hZYU1HT3RTekFIdmZaT3FqaE5sN2hBUVB2NkR4cDZGSFZXNkdE?=
 =?utf-8?B?Y0FrV3BTVXRvV2dUUHRzYXMxaGdQZ1FJaUhYRUhSZFlMdFRBOXV0V3hTMVpx?=
 =?utf-8?B?ekJBZStKWDdqd2phMlVLeGgwcnZRM1FFa1RoMmZBZ1htTE4zb2ZFNWErWTh3?=
 =?utf-8?B?d2RpRitSNEs4TWVrYjgrRmsrZC94UlV5VWhnYmx5WEw2NS9WdStIZ29uWlpV?=
 =?utf-8?B?STlEcjg1R2lsNVZDTzR3d2NQTTV2MVZFcU0zVWpQeWtrMFRyMGwyUmw5RlRw?=
 =?utf-8?B?Tmh0VlFIOUd4cW5BQkNBOXMwNVpCRHNGbFk2U0pYMG5KOTJydE9qMkZraUtE?=
 =?utf-8?B?SHFMT1NYdkhMVmRKVEJuR3BJUTVVRkdoam9vdG9xUUxtQjRZYUJDR2llbDEr?=
 =?utf-8?B?MnlqSzJWQWRsdEMvK0N0dFB0RkZkWWtWNkprcUdKZWtaT09yWXRnTGtoZ3h5?=
 =?utf-8?B?bXdYN2U5SUorbHVCeDhNeHo4Y0VMYnFWendQTEZZZW9qbmI2MDZBMVc3S3Mz?=
 =?utf-8?B?c1hvTWFxaGI4ZnF0UFR3UUsyQWg2bXEvK0srSnh2WFhxeTJnTXVQMTcyNWdu?=
 =?utf-8?B?WEJZcXZxKzJObXhGVm5RVFZkMEVRZDE3VStoNWxFbWVwYUlUZWQrSGptSjQ0?=
 =?utf-8?B?ZW9hVXgxb3I5aFBlVjVKRW1aV1FmZVNUaDlmWVA5TEVTVlZiYjA3RE14V3M3?=
 =?utf-8?B?RkMvakJTSytBYlNUbkhTRE1uWGZDWXJrY3JyUzh0RVROYjc0RVJldlFjR0k3?=
 =?utf-8?B?c1ZFMlFObkQxcVUwOWkxUW01TmpSQkQxUUJ0K09LNExQSC9ieGZ2OXlQeThn?=
 =?utf-8?B?SGxEQmNOVldnSWsveGpLanE2b0dOa2hCSTVBdENMdDVRc0RKUTBoM3ord1cy?=
 =?utf-8?B?OUFNZ0orR1J5ZTljR3c4UG1mUUhCWWYxTkJQZWoxeldWVFZFWHpMNk9hL2tY?=
 =?utf-8?B?Q1dBK3IyUkJVTzhHNzdGU21UUkFIUi92SkJ0WWRoN1dPNTJHbFUrdzNLNC9Y?=
 =?utf-8?B?Qk4yRmlSUVpwSlZPWFR0ZnRFcXFabVFCaTlvM2o0c0dqUVJtNDNFL3htUFRw?=
 =?utf-8?B?eGtyd1BOa3FEWDJ6UHhiV2I3RkFaSUNsbFdDSzNQd250bUNRem5NS0wrQk9y?=
 =?utf-8?B?aEQ3THRVQlRNR28xajhINC91NVJVV0dzWEVQYSt0clY5dWdQRGZoMUxRVld3?=
 =?utf-8?B?WERiQ0pycEVKMWJKOGFySUdWdXdDejFacTJ6Tm0vdWxQdXM2d0xtUUpaOFMw?=
 =?utf-8?B?bE1LWVNGV0NhSFpSVmwwbVhWV3M2NFBYbkpCZWF1Vm9EL3NqTzdvVUNLaXN2?=
 =?utf-8?B?Y1lXMzg4KzhCT1hGdjhZT3FpRXdsSDQrQk5YTWFWVHFJOTlTaWhPajdyVFpP?=
 =?utf-8?B?WkVKdTJTZUtxL055V0lzZE50b1BsTjQ4Z2srRTVKMS9aQzl2WlNrcnZ5bS9q?=
 =?utf-8?B?OEk5MGRKelhkNkNNUnoycjdYRlZYeXkzazl0eEpOQXhZMUNMdkpRMjE3NTZK?=
 =?utf-8?B?YklkaktjZWVQanJYYzl0NlJUVHk4WHk2NUt1Ri9BYk5PL0NCKzNySzU0dldB?=
 =?utf-8?B?emFuWVlwTjBvdHdQWmpmdURjeTEvM2FxZlpoWkVwQTk5Ym1PR1gxUXVqaXND?=
 =?utf-8?B?NHBjL25lNWtRUjFDWGREMnFacUpjRlBLRmgrVkgyNUxxZ3Bqdm1YUUNka2pl?=
 =?utf-8?B?V0I4SjN6N1NTSE1ZYjFSZkpGTHhSclpiTjVBZUFHaHQrTmMwZzB6OGppbSt1?=
 =?utf-8?B?NmNuTXcybzFuNUtwRHpIYkQ4QUZSZks0bFB6dWw1b2dWaGJBYnJ4aS9WeXZS?=
 =?utf-8?B?RTFXOTBEdmphNlIrVHRwamxWQXBnRlBwaWpMQ2JZWDBGdzBKcWw4SkhPVFEw?=
 =?utf-8?B?NU9kRHZqSVZBdTBRUGFhTDduVkRqRTJtdkNKZlFjRWIrT0hvZ1ZSK0piZlJN?=
 =?utf-8?Q?2U46fb+UKIY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bWphZUNROStwTndzYTNjbllURTdzOGI0RXpPd04zZ3R2WVlCWnZzck9xanpn?=
 =?utf-8?B?RkxkSVJYVEFDVXkvaE1aS3JFVHpLV1ExRlVVeStpYUozVyt1V1N6dXlRRzZo?=
 =?utf-8?B?SWxrWnNPeEppZ0JhMEM5d1V0UXIvOEh5T2dvZVYxdVVPMXMvZm1tMkxxbEho?=
 =?utf-8?B?OVJWekFJQW9DUjFiUkJ2N2NLUFNEZ1o2Z1VTNGxmRGpDcnh3SVlNRjZzV1hn?=
 =?utf-8?B?TUxDSnQxNGZwcld6aG15ZXNFSjB2SGpaOEtBUnI5S3FXanE3b1JzM3lKTmtw?=
 =?utf-8?B?ZmtHT3B6NnNwRVlsb3JUWDJVck1kR1JuS3hRTHFJNmtyMFJzWmt2NEh3S2tj?=
 =?utf-8?B?RjNQKzgvWVFSUHh3QUtYZWZDUEJkbTdPcXQ1MXlsdnJjaHFITEFBRHozRW1m?=
 =?utf-8?B?L2tRV0g4Y3RaSzhRNzlHWEFzUkc1VW53TzZDSTlXeEtYVGtNc3l5RHhoTkNN?=
 =?utf-8?B?a2lDOHRqMEJoSkR5dUpiektraFg5SVdEZ3MwN1JLOGg3MXFyYmRLTEdjQS9o?=
 =?utf-8?B?dUdoRzBMbm1YMHVQZ3E2Um1GMlVEbGpBSHNvdDB6ZGE0V2VobHJTNVZwK3po?=
 =?utf-8?B?ZnBjNERKRTI2QXNGeGJ3dWZYRkpxbXRDczRRNXlJUTFSN3lreHI0S2VmVysx?=
 =?utf-8?B?ekllMkF5SHJnSENzWDFacXc2SHZNN2Q0UWdlQlVmczg5b1pST2VIU0pJaElT?=
 =?utf-8?B?VGtXQlhZZzhvR2tZT1UzbkhEL1F3OEVsRzhJOTJuaHR0RmJyUWtZZmxPd2Q0?=
 =?utf-8?B?OHNwWXRjYmprbjA5NVV5eVdzMUE5LzZWMHRQZGJXcGIwUklvTzJrazhtUkRS?=
 =?utf-8?B?UkxyYnVucFFwWnREWVhPamN3OWNNZmJVU3FOSWh5ZnJFaGtMOEdORzZZYWRz?=
 =?utf-8?B?N0xVU081WGRhckVtZCs3N1ovSHZnV0F4TkNGWkFpQ1czY0lHdHN6bXUvbW5D?=
 =?utf-8?B?UmNFcEtDNjJZQkRyNG85dy9FcHJkcmhBTFNkT1U1OXRGUC9IejdhTHVCQUps?=
 =?utf-8?B?Zy9nY2VHZUFtTlcyK0l0TTVTcFFSWSs3UkJrTFVXVmdYU1c3cXEzSUpRaGgw?=
 =?utf-8?B?K01maXQ1QnNSNDFiWHNnS2dIdmUwaHVZSDZWbFBlcC9lWWFLNk0xU2ZxZ3pk?=
 =?utf-8?B?QjMwKzAwTVlYek9BOWxHNGVPaXhvT1JUcjA4MWhJQ0gwTTZRSUt5MDFDUWdH?=
 =?utf-8?B?cnpHYVhUQ0hVNjd4WkNPQ1Myak5FTHFHS05qSTBBQ1VRcHdQT0wyR2REcVJ5?=
 =?utf-8?B?QWRDRGdYOFlZTGdJTExUa3pLKzhuOFB4dExvY1F0dytlNk9GYUo3SWlzczJv?=
 =?utf-8?B?RktTcjhjdzhFTFZ0OGphQ1VpTjZMVEhsdFJNR2FBeEtuZEowTjNlajJvUUlO?=
 =?utf-8?B?ckZXTVZhMEpZSnFEd1VqRXF4NHZUWWhUd1lhYWxTbXBCMGlRWXlYWXFSbnQ2?=
 =?utf-8?B?ZXVQNVZmbWx2eGhLZVFCcy84NnNnTHFTaG0wYXpVRDZ4M0VMeTZISjBQWDZT?=
 =?utf-8?B?QWtFTnZDckhTc211a2Y3MFJvajlQdEtlL1BPbTdEcmdnNk5YVFVqdDJlZmtG?=
 =?utf-8?B?ZXMvOGxxQlNSNW41SExNcjVmVW1maHFyeXIrU1VyWDdhMEJWUEJUakdyd2pa?=
 =?utf-8?B?Tm50M2VLUlVpTkZ5dUpTaERlc01OaFpJQ3FPVWtvbUU4bFZtR3NlbExheFI1?=
 =?utf-8?B?WlAxV08zdWhrdnhUbFpWQUY5YUcySng0MEszS1c0OTFMNVdISFJZQ2lHZmRD?=
 =?utf-8?B?R0ZyZWsyUlRKd3BGM2YxcjlCNzhIS2RFWWp3TU5pbzh6UUhXRjRBdG5ZV2Jx?=
 =?utf-8?B?cm1DdUNreW4ycTY2Z3E5M0RwSngreGwvQVdndDl5RWRXRjBiQmg3a1poSmZD?=
 =?utf-8?B?K1lxOUJnZnF4eGRWZHUzazZnRWwwRFBCSHZsRncwbkpxazR5a0p6bWgzZjlO?=
 =?utf-8?B?TXdQMHBkYWJHV2UvbEc2SUlQOE5TeDJId0x0aFRBSFArNkhDWTV1OEhPOTRO?=
 =?utf-8?B?VjZsOGU3OXAxblU5SUlubStyRHpvSXIyeTRFWmFuR0VOVkRPVTFBaTFXY2Qv?=
 =?utf-8?B?UEtpemwvbmM4Mm5qbVRiYWEwYjMxRVpISUQzUWpURDNXN3hwMWNiYnVBVU1P?=
 =?utf-8?B?bW52eEJpa0NEcGtnOFhseXFGMVJpa3g0K3NpeEs5bVcwQ3NKNmFDajRnZ082?=
 =?utf-8?B?WUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2108DF96F1153E4D97E8ADFD97077A9C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 602a5cf1-d7da-4278-b77d-08dd868d6ee7
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2025 19:46:56.5224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oMmyKfPZvX5v63vLvEiAbYfPxaA9LnUteVlgs6LUvmHJt8onk+/uDEwOJuYsqFCuz37tHX9coF8+Trs/XtP4TQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8045
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

T24gTW9uLCAyMDI1LTA0LTI4IGF0IDEwOjU5ICswMzAwLCBSYWFnIEphZGF2IHdyb3RlOg0KPiBP
biBNb24sIEFwciAyOCwgMjAyNSBhdCAxMDozMToyM0FNICswMzAwLCBKYW5pIE5pa3VsYSB3cm90
ZToNCj4gPiANCj4gPiBQQ0kgSUQgb2YgdGhlIHBsYXRmb3JtPyANCj4gDQo+IEFwb2xvZ2llcyBm
b3IgbWlzc2luZyBpbmZvcm1hdGlvbi4NCj4gDQo+IEJNRyBJRDogMHhlMjBiDQo+IA0KPiBTaWRl
IG5vdGU6IEkgY2FtZSBhY3Jvc3MgdGhpcyB3aGlsZSBkZWJ1Z2dpbmcgcG9zc2libGUgdnJhbQ0K
PiBjb3JydXB0aW9uLg0KPiBCdXQgcmVnYXJkbGVzcyBvZiBpdCwgd2Ugc2hvdWxkIGF0bGVhc3Qg
bm90IGJlIG9vcHNpbmcgSU1ITy4NCj4gDQoNClllYXAsIHRoZXJlIGFyZSAyIG1pc3RlcmlvdXMg
Qk1HIGJ1Z3MgcmVsYXRlZCB0byBvZmYtPm9uIHNjZW5hcmlvcw0KYW5kIGRlcGVuZGluZyBvbiB0
aGUgaG9zdCtCTUcgY29tYmluYXRpb246DQoNCjEuIEQzQ29sZCAtPiBEMCBibG93cyB1cCB3aXRo
IFBDSSB1cHBlciBicmlkZ2UgcG9ydCBsaW5rIHRyYWluaW5nDQpmYWlsaW5nIGFuZCBkZXZpY2Ug
bG9zdA0KMi4gRDNDb2xkIC0+IEQwIG9yIFMzIC0+IFMwOiBTb21lIHJhbmRvbSBtZW1vcnkgY29y
cnVwdGlvbnMuDQoNCkl0IGxvb2tzIGxpa2UgeW91IGhpdCB0aGUgc2Vjb25kIGNhc2UgaGVyZS4g
QW5kIHlvdSBoYXZlIHRoZSBSYXB0b3INCkxha2UgYm9hcmQgd2hhdCBpcyBhbm90aGVyIGluZGlj
YXRpb24uDQoNCkNjOiBYaW4gKFggV2FuZykgd2hvIGlzIHdvcmtpbmcgb24gdGhpcyBjYXNlIG51
bWJlciAyLiANCg0KaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwv
LS9pc3N1ZXMvNDAzNw0KamlyYSBHU0QtMTA3NzQNCg0KVGhlIG1pdGlnYXRpb24gZm9yIHRoZSBj
YXNlIG51bWJlciAyIGlzIHRvIGRpc2FibGUgUkM2IGluIHRoZSBCSU9TDQphZmFpay4NCg0KDQo+
ID4gT24gU3VuLCAyNyBBcHIgMjAyNSwgUmFhZyBKYWRhdiA8cmFhZy5qYWRhdkBpbnRlbC5jb20+
IHdyb3RlOg0KPiA+ID4gSSBjYW1lIGFjcm9zcyB0aGlzIHdoaWxlIHRlc3RpbmcgYW4gdW5yZWxh
dGVkIGZlYXR1cmUuIEl0J3Mgbm90DQo+ID4gPiBlYXNpbHkNCj4gPiA+IHJlcHJvZHVjaWJsZSBz
byB0aG91Z2h0IEknZCBzaGFyZSBoZXJlLg0KPiA+ID4gDQo+ID4gPiBbIDE4MDIuOTkyNzI2XSBQ
TTogc3VzcGVuZCBlbnRyeSAoczJpZGxlKQ0KPiA+ID4gWyAxODAyLjk5Mzk4Nl0gRmlsZXN5c3Rl
bXMgc3luYzogMC4wMDEgc2Vjb25kcw0KPiA+ID4gWyAxODI2LjIyMzA2MF0geGUgMDAwMDowMzow
MC4wOiBbZHJtXSAqRVJST1IqIFdyaXRpbmcgZGMgc3RhdGUgdG8NCj4gPiA+IDB4YmZmZmZmZjQg
ZmFpbGVkLCBub3cgMHhmZmZmZmZmZg0KPiA+ID4gWyAxODI2LjMxNTMwOF0geGUgMDAwMDowMzow
MC4wOiBbZHJtXSAqRVJST1IqIERDIHN0YXRlIG1pc21hdGNoDQo+ID4gPiAoMHgwIC0+IDB4NDAw
MDAwMGIpDQo+ID4gPiBbIDE4MzAuNTI4OTI5XSB4ZSAwMDAwOjAzOjAwLjA6IFtkcm1dICpFUlJP
UiogV3JpdGluZyBkYyBzdGF0ZSB0bw0KPiA+ID4gMHhiZmZmZmZmNCBmYWlsZWQsIG5vdyAweGZm
ZmZmZmZmDQo+ID4gPiBbIDE4MzEuMTMwMDI4XSB4ZSAwMDAwOjAzOjAwLjA6IFtkcm1dICpFUlJP
UiogdGltZW91dCB3YWl0aW5nIGZvcg0KPiA+ID4gQ0RDTEsgUExMIHVubG9jaw0KPiA+ID4gWyAx
ODMxLjE0MDQyMF0gT29wczogZGl2aWRlIGVycm9yOiAwMDAwIFsjMV0gUFJFRU1QVCBTTVAgTk9Q
VEkNCj4gPiA+IFsgMTgzMS4xNDU5NzZdIENQVTogMTQgVUlEOiAwIFBJRDogOTgzNCBDb21tOiBr
d29ya2VyL3UxMjg6MzINCj4gPiA+IEtkdW1wOiBsb2FkZWQgVGFpbnRlZDogR8KgwqDCoMKgIFXC
oCBXwqDCoMKgwqDCoMKgwqDCoMKgIDYuMTQuMC14ZSsgIzE0DQo+ID4gPiBbIDE4MzEuMTU2NDI2
XSBUYWludGVkOiBbVV09VVNFUiwgW1ddPVdBUk4NCj4gPiA+IFsgMTgzMS4xNjAyNDZdIEhhcmR3
YXJlIG5hbWU6IEludGVsIENvcnBvcmF0aW9uIFJhcHRvciBMYWtlDQo+ID4gPiBDbGllbnQgUGxh
dGZvcm0vUlBMLVMgQURQLVMgRERSNSBVRElNTSBDUkIsIEJJT1MNCj4gPiA+IFJQTFNGV0kxLlIw
MC41MDQ1LkEwMC4yNDAxMjYwNzMzIDAxLzI2LzIwMjQNCj4gPiA+IFsgMTgzMS4xNzM1MzZdIFdv
cmtxdWV1ZTogYXN5bmMgYXN5bmNfcnVuX2VudHJ5X2ZuDQo+ID4gPiBbIDE4MzEuMTc4MDUxXSBS
SVA6IDAwMTA6Ynh0X2NkY2xrX2N0bC5pc3JhLjArMHg2Yy8weDJhMCBbeGVdDQo+ID4gPiBbIDE4
MzEuMTgzNTk5XSBDb2RlOiBjMiBjMSBlMSAwNCAwZiBiNyBmOCBmMyAwZiBiOCBjNyA5MCAwZiBh
ZiBjMw0KPiA+ID4gODUgYzAgNDAgMGYgOWUgYzYgODUgYzkgMGYgOWYgYzIgNDAgMzggZDYgODkg
Y2EgMGYgODQgNzEgMDEgMDAgMDANCj4gPiA+IGQxIGZhIDAxIGQwIDk5IDxmNz4gZjkgODMgZjgg
MDQgMGYgODQgNzEgMDEgMDAgMDAgMGYgOGYgOTAgMDAgMDANCj4gPiA+IDAwIDQ1IDMxIGZmIDgz
IGY4DQo+ID4gPiBbIDE4MzEuMjAyMjE5XSBSU1A6IDAwMTg6ZmZmZmM5MDAwYjY5ZmExOCBFRkxB
R1M6IDAwMDEwMjQ2DQo+ID4gPiBbIDE4MzEuMjA3NDE5XSBSQVg6IDAwMDAwMDAwMDAwMDAwMDAg
UkJYOiAwMDAwMDAwMDAwMDAwMDAwIFJDWDoNCj4gPiA+IDAwMDAwMDAwMDAwMDAwMDANCj4gPiA+
IFsgMTgzMS4yMTQ1MTVdIFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAwMDAwMDAwMDAw
MDEgUkRJOg0KPiA+ID4gMDAwMDAwMDAwMDAwZmZmZg0KPiA+ID4gWyAxODMxLjIyMTYxMV0gUkJQ
OiBmZmZmYzkwMDBiNjlmYTU4IFIwODogMDAwMDAwMDAwMDAwMDAwMCBSMDk6DQo+ID4gPiBmZmZm
YzkwMDBiNjlmODU4DQo+ID4gPiBbIDE4MzEuMjI4NzA2XSBSMTA6IGZmZmZjOTAwMGI2OWY4NTAg
UjExOiBmZmZmODg4ODhjNWZmZmU4IFIxMjoNCj4gPiA+IDAwMDAwMDAwMDAwMDAwMDANCj4gPiA+
IFsgMTgzMS4yMzU3OTZdIFIxMzogZmZmZjg4ODE3M2FkYjNmMCBSMTQ6IGZmZmZmZmZmZmZmZmZm
ZmYgUjE1Og0KPiA+ID4gMDAwMDAwMDAwMDAwMDAwMA0KPiA+ID4gWyAxODMxLjI0Mjg5MV0gRlM6
wqAgMDAwMDAwMDAwMDAwMDAwMCgwMDAwKQ0KPiA+ID4gR1M6ZmZmZjg4ODg4ZDUwMDAwMCgwMDAw
KSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwDQo+ID4gPiBbIDE4MzEuMjUwOTMxXSBDUzrCoCAwMDEw
IERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMw0KPiA+ID4gWyAxODMxLjI1
NjY0N10gQ1IyOiAwMDAwNTYzMmRkZjU1MDAwIENSMzogMDAwMDAwMDAwMzI1ODAwMSBDUjQ6DQo+
ID4gPiAwMDAwMDAwMDAwZjcyZWYwDQo+ID4gPiBbIDE4MzEuMjYzNzQxXSBQS1JVOiA1NTU1NTU1
NA0KPiA+ID4gWyAxODMxLjI2NjQ1MF0gQ2FsbCBUcmFjZToNCj4gPiA+IFsgMTgzMS4yNjg5MDBd
wqAgPFRBU0s+DQo+ID4gPiBbIDE4MzEuMjcxMDA2XcKgID8gc2hvd19yZWdzKzB4NmQvMHg4MA0K
PiA+ID4gWyAxODMxLjI3NDQwMF3CoCA/IGRpZSsweDNjLzB4YTANCj4gPiA+IFsgMTgzMS4yNzcy
NzZdwqAgPyBkb190cmFwKzB4Y2YvMHhmMA0KPiA+ID4gWyAxODMxLjI4MDQ5N13CoCA/IGRvX2Vy
cm9yX3RyYXArMHg3YS8weDEwMA0KPiA+ID4gWyAxODMxLjI4NDMxOV3CoCA/IGJ4dF9jZGNsa19j
dGwuaXNyYS4wKzB4NmMvMHgyYTAgW3hlXQ0KPiA+ID4gWyAxODMxLjI4OTI2NF3CoCA/IGV4Y19k
aXZpZGVfZXJyb3IrMHgzZi8weDYwDQo+ID4gPiBbIDE4MzEuMjkzMjYwXcKgID8gYnh0X2NkY2xr
X2N0bC5pc3JhLjArMHg2Yy8weDJhMCBbeGVdDQo+ID4gPiBbIDE4MzEuMjk4MjAwXcKgID8gYXNt
X2V4Y19kaXZpZGVfZXJyb3IrMHgxZi8weDMwDQo+ID4gPiBbIDE4MzEuMzAyNTM5XcKgID8gYnh0
X2NkY2xrX2N0bC5pc3JhLjArMHg2Yy8weDJhMCBbeGVdDQo+ID4gPiBbIDE4MzEuMzA3NDc5XcKg
ID8gYnh0X2NkY2xrX2N0bC5pc3JhLjArMHgzNS8weDJhMCBbeGVdDQo+ID4gPiBbIDE4MzEuMzEy
NDIxXcKgID8gY2RjbGtfc3F1YXNoX3dhdmVmb3JtKzB4OWYvMHhjMCBbeGVdDQo+ID4gPiBbIDE4
MzEuMzE3MzYxXcKgIF9ieHRfc2V0X2NkY2xrKzB4Mjk1LzB4NjUwIFt4ZV0NCj4gPiA+IFsgMTgz
MS4zMjE2OTldwqAgYnh0X3NldF9jZGNsaysweDgwLzB4NTcwIFt4ZV0NCj4gPiA+IFsgMTgzMS4z
MjU4NjNdwqAgPyBieHRfY2FsY19jZGNsa19wbGxfdmNvKzB4YTIvMHhjMCBbeGVdDQo+ID4gPiBb
IDE4MzEuMzMwODkwXcKgIGludGVsX2NkY2xrX2luaXRfaHcrMHgyMzgvMHg0NzAgW3hlXQ0KPiA+
ID4gWyAxODMxLjMzNTY1NV3CoCBpY2xfZGlzcGxheV9jb3JlX2luaXQrMHhkZS8weDgwMCBbeGVd
DQo+ID4gPiBbIDE4MzEuMzQwNTEzXcKgIGludGVsX3Bvd2VyX2RvbWFpbnNfaW5pdF9odysweDFi
Yy8weDY2MCBbeGVdDQo+ID4gPiBbIDE4MzEuMzQ1OTcyXcKgIGludGVsX3Bvd2VyX2RvbWFpbnNf
cmVzdW1lKzB4YTQvMHgxMDAgW3hlXQ0KPiA+ID4gWyAxODMxLjM1MTI1Nl3CoCBpbnRlbF9kaXNw
bGF5X3Bvd2VyX3Jlc3VtZV9lYXJseSsweDVhLzB4ZjAgW3hlXQ0KPiA+ID4gWyAxODMxLjM1Njk3
MV3CoCB4ZV9kaXNwbGF5X3BtX3Jlc3VtZV9lYXJseSsweDI3LzB4MzAgW3hlXQ0KPiA+ID4gWyAx
ODMxLjM2MjE3Ml3CoCB4ZV9wbV9yZXN1bWUrMHgxMmMvMHgyODAgW3hlXQ0KPiA+ID4gWyAxODMx
LjM2NjMyNF3CoCA/IF9fcGZ4X3BjaV9wbV9yZXN1bWUrMHgxMC8weDEwDQo+ID4gPiBbIDE4MzEu
MzcwNTgwXcKgIHhlX3BjaV9yZXN1bWUrMHg2MC8weDcwIFt4ZV0NCj4gPiA+IFsgMTgzMS4zNzQ2
NDVdwqAgcGNpX3BtX3Jlc3VtZSsweDc4LzB4MTEwDQo+ID4gPiBbIDE4MzEuMzc4MzAwXcKgIGRw
bV9ydW5fY2FsbGJhY2srMHg1OC8weDEwMA0KPiA+ID4gWyAxODMxLjM4MjIxM13CoCBkZXZpY2Vf
cmVzdW1lKzB4MTNjLzB4MzUwDQo+ID4gPiBbIDE4MzEuMzg1OTUwXcKgID8gX19wZnhfZHBtX3dh
dGNoZG9nX2hhbmRsZXIrMHgxMC8weDEwDQo+ID4gPiBbIDE4MzEuMzkwODA4XcKgIGFzeW5jX3Jl
c3VtZSsweDIyLzB4NDANCj4gPiA+IFsgMTgzMS4zOTQyODddwqAgYXN5bmNfcnVuX2VudHJ5X2Zu
KzB4MzYvMHgxNDANCj4gPiA+IFsgMTgzMS4zOTgzNjhdwqAgcHJvY2Vzc19vbmVfd29yaysweDIx
Ny8weDY4MA0KPiA+ID4gWyAxODMxLjQwMjM2NV3CoCB3b3JrZXJfdGhyZWFkKzB4MWEyLzB4MzQw
DQo+ID4gPiBbIDE4MzEuNDA2MTAzXcKgID8gX19wZnhfd29ya2VyX3RocmVhZCsweDEwLzB4MTAN
Cj4gPiA+IFsgMTgzMS40MTAzNThdwqAga3RocmVhZCsweDEwYi8weDI3MA0KPiA+ID4gWyAxODMx
LjQxMzU4NV3CoCA/IF9fcGZ4X2t0aHJlYWQrMHgxMC8weDEwDQo+ID4gPiBbIDE4MzEuNDE3MzI0
XcKgIHJldF9mcm9tX2ZvcmsrMHgzZC8weDYwDQo+ID4gPiBbIDE4MzEuNDIwODk0XcKgID8gX19w
Znhfa3RocmVhZCsweDEwLzB4MTANCj4gPiA+IFsgMTgzMS40MjQ2MzJdwqAgcmV0X2Zyb21fZm9y
a19hc20rMHgxYS8weDMwDQo+ID4gPiBbIDE4MzEuNDI4NTQ2XcKgIDwvVEFTSz4NCj4gPiANCj4g
PiAtLSANCj4gPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
