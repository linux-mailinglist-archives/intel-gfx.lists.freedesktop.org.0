Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7B9A357F5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 08:35:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BC9910EBDE;
	Fri, 14 Feb 2025 07:35:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V1NA/kjK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF3F010EBDE;
 Fri, 14 Feb 2025 07:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739518507; x=1771054507;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wz2L3Ey08vuaXYvQAuhLGrW0tGS6vQ229jmb+FiX8ok=;
 b=V1NA/kjKv6xFKSlKbeh8TgCmYFCw0/w+ZciY/bzNNFJJksXlAwTeJ1BB
 geJjPvDDn0tA8qLbwhVsHUzjCAArTpkWr23yGd1TCEwmr10KnHjCh15Yy
 scbe0EvFBmz+E9ZuAatwkOvvdidBrRP82kDd2XazgpsdCvrHudJ2JRf1f
 QIPZmDhD806P7dEtCnQVd8oW8+X+DL7zPb1evHqs72JmkyjDA4W3jwmJc
 3H69ygz//PE0NRQSR7KXJ3hVmp/+VUNMyCgEgxO8Bdi9YhBwkQhc1BGng
 gPL0w/eAmZjTmULm5wv4+NI4doBtl4DE3FIxqsDx36mnxHLfVSSU1pHnE A==;
X-CSE-ConnectionGUID: KoWH7UduS3uBTcGOLiT5+Q==
X-CSE-MsgGUID: srXfWwxYRIaRwMcF9IQmfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40292938"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="40292938"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 23:35:06 -0800
X-CSE-ConnectionGUID: ATrYEx1XRzGkOcu9iTvXig==
X-CSE-MsgGUID: LDPuOeujT6q6O1D6UG0XMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113579978"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 23:35:06 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 23:35:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 23:35:05 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 23:35:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UF+iXlzGXS+D8vPnLYgKB7ICRpPBw8x6Ky1V9llooDu1QsRIY5SwRi2fWAg0ALTg98HqpFkQq0vkDhmOgAdVLgsHneJqsCX5anvCuEGbT+N76GbHvEv2GmZWJ1OFI3/OAhXswTHtm9EtROCxdoOwtTMVyNnFzN3WW3rP2pL59ztyi6Un9ei8TU+Uot2Nv+/z4pGZRPgb3iEPqJw2ts+7TcTmymgT5ihPaYBHUl/AI0DHJsZrj6py/cH2YTeuQ5QMJiR4yXP/xF0FZTSgy5h6n/JfpF9vgUbmjAb/kJLtI16R3ArnUGHhrAYEaHEkSbAwO9QaVJHBvKDM452dQIClRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wz2L3Ey08vuaXYvQAuhLGrW0tGS6vQ229jmb+FiX8ok=;
 b=p2fWM9UDyWaAipCu6b3/mP2n/xaJeioyoMcMhiGy6/NEFUdAJ4SY566boHz9FIw0OraU7fOk9JctGrHfIRYaW02+Et+o3E1dm2QUYETmOMTHYN9BFNZOHeNuqyn/XB32DwEo2S1X1mWHErkwodkqPzk/VXRWkQsdQJx3MOoSsLYixzx/KOFJf1Dpw5GAROh9P5cG/E4prPxlQBmhQr8++BxHxkUdPGhEaSYi2JjhSMjg7wRfcd5drl9uodA5ABAcWW79wXE7KpeucNwSZVf5GsAbRD/9EvahMG83rdPzJEAFFcfd3/tR1Epe8iQ5duRJmB01eIztF0bQuXaCUQ2CnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB6619.namprd11.prod.outlook.com (2603:10b6:303:1eb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.22; Fri, 14 Feb
 2025 07:34:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8445.013; Fri, 14 Feb 2025
 07:34:29 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH v8 00/13] PSR DSB support
Thread-Topic: [PATCH v8 00/13] PSR DSB support
Thread-Index: AQHbfeNKloV1vZOMAEqPs5TA30vQVLNGafgA
Date: Fri, 14 Feb 2025 07:34:29 +0000
Message-ID: <752677b09d3cbed81af11ede9066edebf7024a1b.camel@intel.com>
References: <20250213064804.2077127-1-jouni.hogander@intel.com>
In-Reply-To: <20250213064804.2077127-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB6619:EE_
x-ms-office365-filtering-correlation-id: 219549bf-1c76-4b24-0be3-08dd4cca0455
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?RlFHUXRObllERzljaXUvQ2lHNlBmK2pIYXp3aVNtRnVvY29ROEFGMERTdlZv?=
 =?utf-8?B?SDY4VVp3SWwrUjBTQWFwUms2WnlJNjdab1lDV2xReU1VMkpGbkF4dHhwQzIw?=
 =?utf-8?B?QkhiSjIxd1lpbVh3NS9xbXpNWkgvZGxyLzVQUlkxRmFIakZUWGgxZ1RXRHlL?=
 =?utf-8?B?eGlCL3JQZmxEa1FTemFYdENGd1RkZG1hNk1Rekk3VFF3UDZBUVNOaDNYL1Ra?=
 =?utf-8?B?L05TTXI2dldNTUdyTythcS9mZzJJVG90ZmdjdXpxbUUzZjdQUFBXck10UVl6?=
 =?utf-8?B?TmpjTjJQQnBldzBWOFFQS3NOazBzQUZqcWdVQmZrdWlVK2hVN21RS2I2VWlx?=
 =?utf-8?B?bVVoVkxpZ3JpOHNORGVyWmZZY2FMYkVFNk1KblJZTUFrNjFvZmwzK2RKaWZv?=
 =?utf-8?B?S2VUUFZ1QlVibmlBSC9TOGJzUjFDQXRJd0MxVW1XamQzb2ZReWhSdWN1YTlw?=
 =?utf-8?B?bmZaMlN4NitNTHZxaEVJYm1taVBGdStrSHFoc01uYmZtYzkyNW9ZV2laMUVW?=
 =?utf-8?B?YnVWR0FTRjBmNjdRL2Y2aXU2S2x1VlozRC9Xd0NEQ0lqWEhST1h2WTVCMVNr?=
 =?utf-8?B?S3B2WEU2M011Vi92SFhLK1o3V2I2OGxFc2pjVHozeS9GYjU3bzVSbVNxQ3VY?=
 =?utf-8?B?OCtvNy83SU9QRTAvYktTNFpXaGtVOFdHdHIzTGJ5N05EWFZFaTF0LzJiM0xO?=
 =?utf-8?B?YzU1b05nTTBwazUwUjFJdlpFaTVoY1RNUnZJcUdmNC90RXhCR1JZL0ZCNVpV?=
 =?utf-8?B?SlpHODJBN0h6cDJ5YjRUUGFZbWxuZmFjU2pUaDErZXk0UHpPWjNDczEwRWNQ?=
 =?utf-8?B?Uy9UNHJxY0ZWMkcxRU5BVUpNeWtTK0w5M1NuY211YmRHdWNEc2NKcW9PTjZL?=
 =?utf-8?B?VGlpcVA4ZndrQlNCWElVaEJpWHZaREJJWkdDUUwwOVlVWjRjYWwxWTJncHQx?=
 =?utf-8?B?Z2NBckFWcXUwTDk5M3FJV3hQK2d4cHU2OG9XU2lLdEUxdU5jbElxK1J3NFFK?=
 =?utf-8?B?WXVjYWJnNVpMc3BoMGs3d21hOVFRLy9Xa2JFZER1SEtib2pEOFNnRHVoQmJh?=
 =?utf-8?B?TkVmNEg1T0hTeVdUUlRyY1JCQ1Vha3k0TkpmckF0QWlORkZSTEwvMUNqdmFN?=
 =?utf-8?B?YkxOSmhLTG9YZUJlbEVmNDZLQkQ0S21JOHNqWXNlY3BocExDeGR0MUVhWkxy?=
 =?utf-8?B?dndoR0tNVENPMjV5NC8rWi8zeEdnaG1pM3YzZ0JZLyt1dmpIY1B1V3RNeWZi?=
 =?utf-8?B?N1p3aThCZHlpVnZKNFlXZDVTeGgrVHB1UTFxcTJUVlUveDd5SU1HVlRWODlo?=
 =?utf-8?B?M2t3SHBzSllZdU1sYVhORHVKdGUveWV2ekF0TXRTTjVaNlJEOFBTUjRjY3Yy?=
 =?utf-8?B?ckFscmpjN3Joa0J4SlNMeGJwT1V1VEhOai83NnZxTWxDSFJGYVkwZzBOdU51?=
 =?utf-8?B?ZThIRXl5aWtYU00xeUZBaTVxWG4xME5IL0JXNFJEcWdsbUg1WXloRmFxVGE1?=
 =?utf-8?B?d09wWHNKNG8rUzgrOTNUdnN3VGdYcm5jVS9Da0IrODZYMGJjcjh2RVVXdXJ6?=
 =?utf-8?B?ZW0yVzI3U2d3RmtjWkpHZmJDSTM2bkk4a2x6dkg0clZTSjdJa3Jzc3VtVWx4?=
 =?utf-8?B?NXUwblN0QnpBWnJyMk9vc3NhaXY0dVNRSm9JejdLNnduYVVuQTRTV0NKWmtJ?=
 =?utf-8?B?UmxXT1FibWVWRERJSWYzdXJybXhmVHZ6YndrWXo3MlJqemxjZlBhT3hpY1hu?=
 =?utf-8?B?M3BBTkR0aEJoL2JINHQwOEx2a3l1TDdzeXJhRXZoL2tYUDExVlBUdHB5ajlF?=
 =?utf-8?B?N2UzVVRLVlRMaFh1UnhwN0d5RU9ZQ0tXOU9xc1pFcVRZR0RqdlhWSGw3ZWNG?=
 =?utf-8?B?WW1wWW1oK1E1T2JqSnA1bTFKZUtMVzczY0tDc2hQNFNPT08vcUY3VTVGdDdQ?=
 =?utf-8?Q?82v5uVurgf+IoVHqd2vQBw01pilkVBRv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eisrcWU3bW1JWWVRZi9PdU5iNzVNcVVpZlZrRlI0eVZqMEV1b3pWWHdaTzJs?=
 =?utf-8?B?VnlDRDhhT1hxMndJVkd2eFVFc1hxazk1WTVUcGZmbFh3MmhHMnhpZDViczVZ?=
 =?utf-8?B?UysxQ0pGWE1GbVB4YSs5Y2dPQjc5bjZhdzRWeGNBbHdVdUdkaGkraGpUeTl5?=
 =?utf-8?B?dEd5SFFrekliOVlhVDdCVkdKcUJqMlZVTE9UUm9RWldXcGpQaVRKald5S1d1?=
 =?utf-8?B?bWJmSGdaZGNnVXNpVjJKNnZXRC9QR1VqUUphS2M5TFR0RWlzRFZ4aW9FL3NE?=
 =?utf-8?B?SjR6K3N5NTNvRjZQNFVrMExQMWl1SlVvN3JGQ243VnlBK25XOWR6U1VrbWFS?=
 =?utf-8?B?RHBFN09uMWM5WldpL0kxdFEzek5pczk2ZUFxUXJGZzRhdk1mVTZha1FtWUlI?=
 =?utf-8?B?NzJHMkp2Y0l5VFdnVGp2WUdadXZMRThOR2kyLzJqK2JjSlBQQjVOcC9KYzJt?=
 =?utf-8?B?cUlUYno5YzN4N0RkKzAvcjY4Y3FwdTNNU1RzcnlGZUdUU0lTVmZsNkpVMnVB?=
 =?utf-8?B?OHp3OE5aNHNvZUVhV2ZrZTZlS3FuaXNKZmpOZU5makgxMXVyTVA0U1VUcFJk?=
 =?utf-8?B?dytiTXllTnFNUjh3U0VOdHhTQ010bXIzMnlOR0pHYzRneE9rQkl0RWhkTHpD?=
 =?utf-8?B?UVc4M2w0WjlPbUN6eEp0dllUTjJpVllDSjZ1YUVsWTFyeGpzWXVWZmEvOVpn?=
 =?utf-8?B?R3lpMXVUUG14UCtyUEwzOC9ZTEdYa2htY2RLZmdmbkRaMGRHMkJqSTFRa1hh?=
 =?utf-8?B?ajJ0aWhkQm5GNkdLUUx0cjVtaTNKU2RsM1kzUDlZV0FET21aSlFSdmFqNGxU?=
 =?utf-8?B?TWNVbjdrcUYySDdVK0Fvc2ZpV2FPSnNVL1FMSVlJS2tUdmh4ZUJZRzJvejRZ?=
 =?utf-8?B?dnlDRGJxV2s5ODdZT24rUndOYnI3WjJTbFc5V2VZQy90R0JGT2dBYTZ1cmpU?=
 =?utf-8?B?YkdEMkREMzhNbkVxS2V6TG11MVU4eXMybmY0M0ZWc3Rxc0VIWHIzNmJLSDhI?=
 =?utf-8?B?UWl2cEkyeTQ2eVJxRWRYWVFqUmk3MkFKOGl3eHUwWHdORkF6T004bFdyYkhS?=
 =?utf-8?B?dVJBMVlXWmJDdkdJYjZBK2k3WjY3MDN0SzdJVTJMN1pnNFdnWmR5WTlFWGds?=
 =?utf-8?B?MlFScFh2NGNVVkNmbGtoOXZUd0RzWHh2SkkxNTliV3pFQ3E5bncyRHZkbVow?=
 =?utf-8?B?WG84OG51UVFjTzROanAxSE1hbU82TDZicXVUSFdMMUZUeHVtQ1JxN2tjRERm?=
 =?utf-8?B?citDSE15aEtXamtPd21hbFIrWUhyeFgwNTJoOGdKZVlwUEhlMEd5Z0pkMjNt?=
 =?utf-8?B?TlR1OWdtUGdGdEt5Z3RBM1lLQnVMTlZwakxieVF5OWlhaS9vSElRYVA5MnhO?=
 =?utf-8?B?OTcvSXNKNDFud2cyTTNwNjdrWGtWa1gwQjFpTEdoM0xRUlpGaHdud1ovZG1O?=
 =?utf-8?B?Q2w5SzMyQ29TRnduTjJmanBERGNNRXhLK3p2Mkl4M2FLYzZFclN2TnFwQXVV?=
 =?utf-8?B?TGpyM3NmcGFiUTZPcUYxSGVPUmZmMUozWXRhbmVoK04rdjBOa0lqTDZQV0wx?=
 =?utf-8?B?SWY5K2NreXhuV0JYUnR3ckM2QjRxYkY1K24rNlhhQlNvbFdKRmtUdnVRK3g0?=
 =?utf-8?B?SnBvZTFhWmhHMEY1ZFFXVXJ6WXZ3Q2xwdHB0QVBPQ1RQZk5lUEQxY3BtRHo4?=
 =?utf-8?B?dkJHbFZHdEwrMjNzR2lIaTFNc3N4Q3Ezb2ZEUWxQSE9hdkFjMFhtVklSWkRw?=
 =?utf-8?B?eC9lSWtxV0xEK3dOSkdDVjBQM004ZExvcy9rd3VweTZGM255cnFpZkl5bldI?=
 =?utf-8?B?R2MwZC95b0piK1I2Y3Z3aVd5MlFwSlhycjJhWTl2ZTVqRmVvdWFpcmx3eklL?=
 =?utf-8?B?ZjZ4NkZWUjhXeFZHcjlYUFAzRnFvSWx0aENvK3dkUHg2bml4UkI1Umg1Nkp5?=
 =?utf-8?B?NUNLRkxVSGQxajBnMi9OK1RTWXpqOXBhUFpGQ1RBcS95MVBCejVSc2FHODJL?=
 =?utf-8?B?dVd2MlJld3V6b2dJZXNWZVFsdlJxT2RHUUNRNll1cGFTcUFhMUpGZGUyZzhk?=
 =?utf-8?B?TUpFb0ZobUFaTnRIUFBYUU9DTmpJTW5EUlBkZGpid2ZLTXozSWFUN3lvU1N3?=
 =?utf-8?B?U2kxYmZ6Z2dIUnlhR296M0NjejZGZjY1YVlGMjJIVVBiM2pldkVVK3RCa2Ro?=
 =?utf-8?B?L0RpaklpYkQyZklRRFJRNG5ZREhhWkpUV0pyQkdOWllEMEtGZk5aczNxNW1S?=
 =?utf-8?B?SFNJRGJERk40dnA0T1BhdFUxSGZnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FB639DFC81DF4F47BBDE606CE182344F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 219549bf-1c76-4b24-0be3-08dd4cca0455
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2025 07:34:29.6219 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pcLIKISom8SZ5uOd/Tsa6NMm64o5TYkOie7X45EUqCDNMZj4W0AuE0d+iLdYGVB1QmIAX1MtECw5gQYomsjzmU8xlVrhcvAvW8H6yC4iT6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6619
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

T24gVGh1LCAyMDI1LTAyLTEzIGF0IDA4OjQ3ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IFRoaXMgcGF0Y2ggc2V0IGlzIGRvaW5nIG5lY2Vzc2FyeSBtb2RpZmljYXRpb25zIHRvIHN1
cHBvcnQgUFNSIHVwZGF0ZQ0KPiB1c2luZyBEU0Igb24gTHVuYXJMYWtlIG9ud2FyZHMNCj4gDQo+
IEl0IGlzIG5vdCBuZWNlc3NhcnkgdG8gd2FpdCBmb3IgUFNSMSB0byBpZGxlIG9yIFBTUjIgdG8g
ZXhpdCBERUVQDQo+IHNsZWVwIGF0IHRoZSBiZWdpbiBvZiBjb21taXQgVGhpcyBpcyBsZWZ0IG91
dCBmcm9tIERTQiBjb21taXQuIFRoZXJlDQo+IG1pZ2h0IGJlIHJvb20gZm9yIG9wdGltaXphdGlv
biBmb3Igbm9uLURTQiBhcyB3ZWxsIGJlY2F1c2Ugc3VjaCB3YWl0DQo+IGlzIG5vdCBzdXBwb3Nl
ZCB0byBiZSBuZWNlc3NhcnkgYXQgdGhlIGJlZ2luIG9mIHVwZGF0ZS4NCj4gDQo+IFBTUiBtdXRl
eCBpcyBub3QgbG9ja2VkIHdoZW4gcGVyZm9ybWluZyBEU0IgY29tbWl0LiBJdCBpcyBub3QNCj4g
bmVjZXNzYXJ5IGFzIHdlIGFyZSBjdXJyZW50bHkgdXNpbmcgRFNCIG9ubHkgd2hlbiBzZW5kaW5n
IHVwZGF0ZXMNCj4gdG93YXJkcyBwYW5lbC4gSS5lLiBub3QgdXNpbmcgaXQgd2hlbiBjaGFuZ2lu
ZyBQU1IgbW9kZS4gQWxzbw0KPiBuZWNlc3NhcnkgY2hhbmdlcyBhcmUgbWFkZSB0byB1c2UgUFNS
Ml9NQU5fVFJLX0NUTCBvbmx5IGluDQo+IERTQi4gRnJvbnRidWZmZXIgdXBkYXRlcyBhbmQgbGVn
YWN5IGN1cnNvciB1cGRhdGVzIGFyZSB1c2luZyBTRkZfQ1RMDQo+IHJlZ2lzdGVyIHRvIHBlcmZv
cm0gZnVsbCBmcmFtZSB1cGRhdGVzLg0KPiANCj4gRFNCX1NLSVBfV0FJVFNfRU4gaXMgcmVtb3Zl
ZCB0byBlbnN1cmUgYWxsIHdhaXRzIGFyZSBwZXJmb3JtZWQgd2hlbg0KPiBQU1IgaXMgYWN0aXZl
LiBQU1IgIkZyYW1lIENoYW5nZSIgZXZlbnQgaXMgbWFudWFsbHkgdHJpZ2dlcmVkIGF0IHRoZQ0K
PiBiZWdpbiBvZiBlYWNoIERTQiBjb21taXQgYnkgYWRkaW5nIENVUlNVUkZMSVZFIHJlZ2lzdGVy
IHdyaXRlLg0KPiANCj4gUG9zc2liZSBwcm9ibGVtIHdpdGggRFNCIGNvbW1pdCB3aGVuIFBTUiBp
cyBhbHJlYWR5IHdha2luZyB1cCBpcw0KPiBhdm9pZGVkIGJ5IGV2YWRpbmcgc2NhbmxpbmUgMC4N
Cg0KVGhlc2UgYXJlIG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQuIFRoYW5rIHlvdSBWaWxs
ZSBhbmQgQW5pbWVzaCBmb3INCnlvdXIgcmV2aWV3cy4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRl
cg0KDQo+IA0KPiB2ODoNCj4gwqAgLSByZWJhc2UNCj4gdjc6DQo+IMKgIC0gUmVuYW1lICJkcm0v
aTkxNS9wc3I6IENoYW5nZXMgZm9yIFBTUjJfTUFOX1RSS19DVEwgaGFuZGxpbmcgd2hlbg0KPiDC
oMKgwqAgRFNCIGlzIGluIHVzZSIgYXMgImRybS9pOTE1L3BzcjogV3JpdGUgUFNSMl9NQU5fVFJL
X0NUTCBvbiBEU0INCj4gwqDCoMKgIGNvbW1pdCIgZHVlIHRvIHNjb3BlIGNoYW5nZXMuDQo+IMKg
IC0gV2FybiBvbiB1c2VfZHNiIGluIG5vbi1kc2IgcGlwZSB1cGRhdGUgZnVuY3Rpb25zDQo+IMKg
IC0gZHNiIGFzIGEgZmlyc3QgcGFyYW1ldGVyIGluIGludGVsX3Bzcl90cmlnZ2VyX2ZyYW1lX2No
YW5nZV9ldmVudA0KPiB2NjoNCj4gwqAgLSBhZGQgY29tbWVudCBleHBsYWluaW5nIHdoeSB3ZSBh
cmUgbm90IHNldHRpbmcgRFNCX1NLSVBfV0FJVFNfRU4NCj4gwqAgLSBhZGQgc2VwYXJhdGUgZnVu
Y3Rpb24gdG8gZ2VuZXJhdGUgdGhlICJGcmFtZSBjaGFuZ2UiZXZhbnQuDQo+IMKgIC0gdXNlIGlu
dGVsX2RzYl9lbWl0X3dhaXRfZHNsDQo+IMKgIC0gYWRkIGV2YXNpb24gb2Ygc2NhbmxpbmUgMCBh
bHNvIGZvciBQYW5lbCBSZXBsYXkNCj4gdjU6DQo+IMKgIC0gcmViYXNlDQo+IHY0Og0KPiDCoCAt
IHJlbW92ZSBEU0JfU0tJUF9XQUlUU19FTg0KPiDCoCAtIEFkZCBDVVJTVVJGTElWRSByZWdpc3Rl
ciB3cml0ZSBhdCB0aGUgYmVnaW4gb2YgRFNCIGNvbW1pdA0KPiDCoCAtIGV2YWRlIHNjYW5saW5l
IDANCj4gdjM6DQo+IMKgIC0gZG8gbm90IHVzZSBEU0Igd2hlbiBQU1IgbW9kZSBpcyBjaGFuZ2lu
Zw0KPiB2MjoNCj4gwqAgLSB1c2UgX01NSU9fVFJBTlMgaW5zdGVhZCBvZiBfTU1JT19UUkFOUzIN
Cj4gwqAgLSBkcm9wIGV2YXNpb24gZnJvbSBpbnRlbF9wc3JfY29uZmlndXJlX2Z1bGxfZnJhbWVf
dXBkYXRlDQo+IA0KPiBKb3VuaSBIw7ZnYW5kZXIgKDEzKToNCj4gwqAgZHJtL2k5MTUvcHNyOiBV
c2UgUFNSMl9NQU5fVFJLX0NUTCBDRkYgYml0IG9ubHkgdG8gc2VuZCBmdWxsIHVwZGF0ZQ0KPiDC
oCBkcm0vaTkxNS9wc3I6IFJlbmFtZSBwc3JfZm9yY2VfaHdfdHJhY2tpbmdfZXhpdCBhcw0KPiDC
oMKgwqAgaW50ZWxfcHNyX2ZvcmNlX3VwZGF0ZQ0KPiDCoCBkcm0vaTkxNS9wc3I6IFNwbGl0IHNl
dHRpbmcgc2ZmIGFuZCBjZmYgYml0cyBhd2F5IGZyb20NCj4gwqDCoMKgIGludGVsX3Bzcl9mb3Jj
ZV91cGRhdGUNCj4gwqAgZHJtL2k5MTUvcHNyOiBBZGQgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgZm9y
IFNGRl9DVEwgYW5kIENGRl9DVEwNCj4gwqDCoMKgIHJlZ2lzdGVycw0KPiDCoCBkcm0vaTkxNS9w
c3I6IFVzZSBTRkZfQ1RMIG9uIGludmFsaWRhdGUvZmx1c2ggZm9yIEx1bmFyTGFrZSBvbndhcmRz
DQo+IMKgIGRybS9pOTE1L3BzcjogQWxsb3cgd3JpdGluZyBQU1IyX01BTl9UUktfQ1RMIHVzaW5n
IERTQg0KPiDCoCBkcm0vaTkxNS9wc3I6IFdyaXRlIFBTUjJfTUFOX1RSS19DVEwgb24gRFNCIGNv
bW1pdCBhcyB3ZWxsDQo+IMKgIGRybS9pOTE1L2Rpc3BsYXk6IFdhcm4gb24gdXNlX2RzYiBpbiBu
b24tZHNiIHBpcGUgdXBkYXRlIGZ1bmN0aW9ucw0KPiDCoCBkcm0vaTkxNS9wc3I6IFJlbW92ZSBE
U0JfU0tJUF9XQUlUU19FTiBjaGlja2VuIGJpdA0KPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBFdmFk
ZSBzY2FubGluZSAwIGFzIHdlbGwgaWYgUFNSMSBvciBQU1IyIGlzDQo+IGVuYWJsZWQNCj4gwqAg
ZHJtL2k5MTUvcHNyOiBBZGQgZnVuY3Rpb24gZm9yIHRyaWdnZXJpbmcgIkZyYW1lIENoYW5nZSIg
ZXZlbnQNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogRW5zdXJlIHdlIGhhdmUgIkZyYW1lIENoYW5n
ZSIgZXZlbnQgaW4gRFNCIGNvbW1pdA0KPiDCoCBkcm0vaTkxNS9wc3I6IEFsbG93IERTQiB1c2Fn
ZSB3aGVuIFBTUiBpcyBlbmFibGVkDQo+IA0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3J0Yy5jwqDCoMKgwqAgfMKgwqAgNCArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmPCoCB8wqAgMjEgKystDQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuY8KgwqDCoMKgwqAgfMKgIDI3ICsrKy0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDE0MSAr
KysrKysrKystLS0tLS0tDQo+IC0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuaMKgwqDCoMKgwqAgfMKgwqAgNyArLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyX3JlZ3MuaCB8wqAgMTAgKysNCj4gwqA2IGZpbGVzIGNoYW5nZWQs
IDEzNiBpbnNlcnRpb25zKCspLCA3NCBkZWxldGlvbnMoLSkNCj4gDQoNCg==
