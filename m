Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA66A98765
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 12:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF4E610E680;
	Wed, 23 Apr 2025 10:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PTdLx9Aq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B36B10E1CC;
 Wed, 23 Apr 2025 10:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745404327; x=1776940327;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xLPC/IzhOBp24qKFEmRa5x8xQO1RNxR+20bAZa3tyTc=;
 b=PTdLx9Aq0RcxHouMpD/Mg3SijvbLfbD5WbjBVGQ5JavE7ufDN5Z6xMjI
 xI2uZsQwH83BG5DG9+EBXhHZ8JuHYVBrA0Em1q97chmq0wYodH+Gi9Szs
 4x0GQEKMeqcwPXLZmE+MCD5l4U4X+gZ7ijMycFDKhX76YKI5NJJ054Cf3
 TB3m9sQMqnUerquPnZCLeAhgA++gDiFA4PqHC4+sBTaeHSH6flEOyUZ7q
 KeXuN7k8GVmqcHhpMFenWN7i4nVitBtyHnZOBdpmHYqt0oAVZMGS2PhyV
 H8rtiZr7Awl+GIlkeWRiq+QK/Bkg7e1Of0DuGKEBCAjJiXA11l6ORvlqa Q==;
X-CSE-ConnectionGUID: wDSf83OFRJidT0ui3Dlf4w==
X-CSE-MsgGUID: b/56NI0FQOWbU0z8jufqSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46226196"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46226196"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:32:07 -0700
X-CSE-ConnectionGUID: LLVun2A5TuOQE7KoX3LFpg==
X-CSE-MsgGUID: SDaSxgy5RVK+imWGDqJd4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137065150"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:32:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 03:32:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 03:32:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 03:32:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mJqWofqRQES7zuAzvlHRxlv7Y/+4ia444MgbCKPdQh+X2M3TD5ZfefRxoOtP228S+TBtdBHB79VdWhB+M6ylxNjJLacxRCsn76bgM1nTXHZ7ndk7gFXBTOo7Tscr0Z9WQYMqKG1kQM+82tEGZBR6SfMQmu2sthCpX92n/BYkgyD2ud3/iaxfYZrG4oC6B/UXDcOhU2MsE4rUkniAyV09ARUWkgl0G0C67XGYYdxhhp8yvRmXUYiGBgXvOhskJ4J5g1PGL7RfDCHDCkKxAhmRnXsRxfpLTnTlXIlgxggeJxPVEzQCVNHKr8J2i1C7zXuWjyRsf+ghca3cJYeykvdkJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xLPC/IzhOBp24qKFEmRa5x8xQO1RNxR+20bAZa3tyTc=;
 b=YuwLmz+MQXYWQrBpJ6mQ5YAmOOht372hAvJwefMBI+Yq5MEFla3Dd4JO5Euh2oYnCdpIQfjpQkxRhZlAGb74dZEFCQ8dtYzpXfYNoEfOfkBZKyEj+pk3CnNV5RHBTIff8i+eem5ckgDXWMmggjsSM2GBspSjEEVybiiMb1lYowZtfvOzU5Wg4j/QrqeLS3tWr6ZMRQjMVtp68Et123la6xgEMiHZk0omb7ktqG3oYUuOJajTftwmM7HrES1dqPfhvGTN2Kz359MdHHS4i1KhiGScJA3HoaWDnNj5U9FDyfDAXVe85vIdsMmdJVaxKTSmPETwHyixdOZawo9ucwTlvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY5PR11MB6319.namprd11.prod.outlook.com (2603:10b6:930:3d::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.35; Wed, 23 Apr 2025 10:31:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8632.030; Wed, 23 Apr 2025
 10:31:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v10 06/11] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v10 06/11] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbtDSvs3i1TcmNs0yMU1jzPoksSrOxDVyA
Date: Wed, 23 Apr 2025 10:31:36 +0000
Message-ID: <fb283cd67412d5ca1ea547ef294e27fa8744804b.camel@intel.com>
References: <20250423092334.2294483-1-animesh.manna@intel.com>
 <20250423092334.2294483-7-animesh.manna@intel.com>
In-Reply-To: <20250423092334.2294483-7-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY5PR11MB6319:EE_
x-ms-office365-filtering-correlation-id: 2e9e17f3-9f51-48d1-394d-08dd82520684
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NEs0WVlhV01hRUY4UTdWM29FTHdYYUM1YlF3bjhJWjhYd3g1ZlNFTXBvdFh1?=
 =?utf-8?B?M1hHNEJFYzdTempNcEg2M3VpNUhsT3p4eHluSHN1bFRaejZjcTlQdHpxUk5u?=
 =?utf-8?B?NlB2alJIaTFFZzdWNnJjZVdJNXBPbXNtYTVPbGdqWG5NZkZGbXJYYXJQVEFm?=
 =?utf-8?B?R0hGdEozZFNJK2ZldlorT0hTaHBIWDFoNlQ3UlRweFNpdTJpWVNpaXN2OHMx?=
 =?utf-8?B?WmNpR3gwNzJ6b1VSSVNsdFdnSkJGSXVSTVpGUkthMjFyVWFjeXc1aTZFWHEw?=
 =?utf-8?B?NnQ0SVhoOEczZ09ieDljVU5aOURTK1Jyb3lOSHdnRURPM0MxbndyaWtNcjM0?=
 =?utf-8?B?OVNheXExdVZZeHc3QVpwZ0NTUC9yWWpPeHM5b1JhVkg4SFEzZFgvSTJDTEJU?=
 =?utf-8?B?TDV1R1l3NFBJclRLNUM0cjQ2VWVPUEJQVmQ2akZNREpNS3ZHSlAybkpxY3lK?=
 =?utf-8?B?TzJTU0pwNENwRGhMTHBtTkEzZWNNUVZMWUdEUEN1aDhpL0RXbkFocnB0V3Za?=
 =?utf-8?B?aUgrT3ZvbGZnMzFRcTJkekViVDZZbENRYkJ5YnNSNFAwNEV4aGxpS3RZNFlj?=
 =?utf-8?B?QVlXZUQrdW53THpsdlNUTGZSSmhNVE9HMzhuZ0ZFQnhYUkl2aEFHUDUxSG5H?=
 =?utf-8?B?ZVBJRHZCRHBkSVNhZm5jYzVXSGlJdnhYbzI3aHNqdThaTTU3Q0NDNHRFa1Zv?=
 =?utf-8?B?V0tnd2FWYTI3ZlFXNTJtZExYOCsydklyeHgvR1hMSmFrRTZvSDg2RXZjdG1i?=
 =?utf-8?B?M0kxN3FZK1ByZ1JNS2FlWmRmVDNueU9YbzlFUWk5eEpKUlVCYW1DWXNJbW5J?=
 =?utf-8?B?V3BFbE1yczNJWldyT2FWTC84LzU4b045NEh4OE1nVXRIb2VMd2hielZuY1dQ?=
 =?utf-8?B?N1d6alRVcTZXNEtodVBvTlQ1eW54Wmt3d0NmYnBFTjE0NmtuaWx4RWI4VnBC?=
 =?utf-8?B?RTFzTDlULzh1TzUxWkg1Ky9pSzBiWXlRYWlGalVGM2srWEo3SEVnT1N4TklI?=
 =?utf-8?B?aWhtTzdVdnRlQVBFRG41NlZtRVV6bE1QYVYyMTNvS2xmZGVtRWtjOHhndjVG?=
 =?utf-8?B?NWkyZ3kxaFB2dE1EWG1VMENYa3BJWk5GTnlXOERVU2V4WERPMW5EaDdjTnhq?=
 =?utf-8?B?RGR5cjRoSHFBR01uRFhaUEgvaWtFS3RFWUVQQ3lDb1RlVVJWWFp4bnhrdnk5?=
 =?utf-8?B?VCtwbDl4OFpZSzJxZkIxZXlXVlFkQndmSkhVS1BFMFdNOWxteUJmMVJMOTdy?=
 =?utf-8?B?SUp3a25oQ1RBbFhWWHE0bkJLekV6a0pwYnBvdkUzYlpqUkRjZndhejAzZGVT?=
 =?utf-8?B?NzgxSmhKNTl4TVZmMDVWa1VXNlBhcUx1akJ5alhwazN4YnI0alNkbXlOVVRT?=
 =?utf-8?B?N0xEeEc4enBhUzRRazIwa0haR1ZkRlVFMzM0T21xdXEva2FCcU94UER0aFlR?=
 =?utf-8?B?L1IwN3Q3M2dta0laUmtVZTNtNU5XZWxRT0R5em1HSFJLTEZtbVhuR0orbFFP?=
 =?utf-8?B?MndtNWg2cFpTN043L0Q5RUU3dGVMR0VaV3lpTUpKT2VScy95OEFPSS90TEdV?=
 =?utf-8?B?K1VGVVVOL1VCQmMvQjdjNEpNK0ZGby9VcVhlRlpaanJwc1NQOXFwS2dQMEZL?=
 =?utf-8?B?TC9wMnZFTGYxUlJJa21YVkk0bEhMNk4zcGgvMFFHUTdZNldFMXNiYUtmQWZw?=
 =?utf-8?B?ZWVVS2t4a0VncC9HVU40N1p2aWpWMjN5OGI1WWFxcDZjWXNYS0JER01XQ2Rk?=
 =?utf-8?B?YXBCOVhwMURyYzBZTVp5S21ZK1NHY0tSUnVpZDJyZEMwQVJCc0IyMHlNRWVQ?=
 =?utf-8?B?Q25iZUZkSEFRZkVGWGUrSkRnd3FOYjRvUTJqME1HZlh1NnhSc291TWVWVW9q?=
 =?utf-8?B?cTJFRXNicjhyTkdrSWVSdHR5ay9lcytSSVVXQmVsc0xwbng1c3Y5aTJpdlQ5?=
 =?utf-8?B?aU5kSVZsQ1pRUHVGL1BCSFM3WVZqVHRQaU9iQnNLaGdQVVpSZGVWNW1Xc3FW?=
 =?utf-8?Q?RO+apcd/hUPQmCdBEqIrNXpt9L4BMg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2FFa3FSNGd0K2NBMTdaN1JLemJ2QW9BR2hITWlHenprL3lDVVJSbE1BLzdI?=
 =?utf-8?B?NkliQk9uMEJIVllacE90MlM3TXFBVDlHbE1ZWlp5M1JzLzR0ZFBSVExMSFd4?=
 =?utf-8?B?NEFvVTFLeFJJNEFzd1JGSjQ4SWpMTTJqSlZzaEZNaDJreUdubXl6YWdFNHNt?=
 =?utf-8?B?MGJkWkNmbWJUbi8vUDlvZlJ6SmtOOExGNTFGU2plN3BBb0h1Q3o1bE9LSVgy?=
 =?utf-8?B?TDRTdFFHb2tnQjF3Ynk4RCt0WlJ6bDFyMGF5V2NNbkRyOGVrbG5VUFNocTN2?=
 =?utf-8?B?WU9wMWQxMk9IQzlzRnd3TDVyeFcyaUVTb2I5Y3RjZHE4bE5Ybkk2c09ydTQ1?=
 =?utf-8?B?dld6VkU2QmNXdXFqQVJ6OVNNcllyV1JzT2xVSHNEQkx5eFlnOUw2d0NOT0xB?=
 =?utf-8?B?MUlqOWhwTHpxd3NRQW0vK01FZlh5MzBTVkVhRmpPcHQ2N0IzMVRSNUljUThL?=
 =?utf-8?B?WXNUeWk5VExmb2N4aThQMmUzcU0wSHlDNUErOTBBRjBOK2FvN1U1Q3VxVUtC?=
 =?utf-8?B?RW5YSjBDcDBDcmE2QVB1TW5OTmp5T1lSU1F3ckhIUUV6UmhWWUhFbGlqYk1k?=
 =?utf-8?B?SU00TEk0cEJ5a2RhdEVkM0doYm5uVUxqeFFvdVZQbVl3YWtDNVJ4eVM0VUI0?=
 =?utf-8?B?ckdnS3JuZEEyeVhDSVZRbUJRRHRGdnYyQVhmUitsNUNVc2h5Y3BESCs3M1NC?=
 =?utf-8?B?MSt1N2U0Qkc1VXhYc2Zrc0pnMDB3empNOVRpMm8xb3pBK0pIZXZOMmxwV2l6?=
 =?utf-8?B?K3QvVFZ2d25KMVh2RlVXc3BvVE9CRXBnc214VGFYeTlZanVEbUwwb01tS29n?=
 =?utf-8?B?STRXMkd5VG01MHM1dnZ3Y1Y3T3VtMkIzNTVrOXkzYnQySUY0QWdPMVArU3VV?=
 =?utf-8?B?b2VKUVNjeVZ6Q0hjV2tQcGZuYmpOUDJDSmFSRnphU1llNTJJcStsM2I4YXdY?=
 =?utf-8?B?ZWZmNDRUdkZOMFBEa0NFQ2tDTWF5a3RBY1NSaTRCMGU3VFpHUUNkRXB1V00y?=
 =?utf-8?B?NnpQMjRzbmlPZENMV2VaTWtWV0x4bkRjTzZxcEpBSWRVdGkzbTVMdHVRYkRW?=
 =?utf-8?B?SDRqUmJmYlVOS1RNVmpoZG13RUhNS0w4OEhRYkNKNmNTeHliKzhydGs4UVJD?=
 =?utf-8?B?MHFITVJYR0Q4WnoyUE9XT2kvamdiUytFYnlnNUFUOEtPbUV1bXNKQlFMYWsy?=
 =?utf-8?B?ZXhndHZnSGRCMU81bWw4azRMOTlVRzhBK0g5c0lPUmpwWEE1alN2Z2c4VGRp?=
 =?utf-8?B?bEdIaUtubE5aQVd1eEk5Q0ROQUlQUzJpN2l4NlZiSjkvalgweWVtaXhKcWU3?=
 =?utf-8?B?ZDNxTExjcStIYTNmTDdnbkxwR2ZCeGQ4RHR0R3hiOGhSSFRlRUQzUHFwSnFQ?=
 =?utf-8?B?TzJXRCtHdHprMThzWXhRSnZXR0wyeDkxQ3VqalJ0Zzd4cXVCUEZaa1lYQ2dN?=
 =?utf-8?B?aHc5WHlRYlRlY0cwNmRLakZ0ak8zM3NWVXhaRkMwd0JMSEpmSUJRdU54M3RJ?=
 =?utf-8?B?ci9sRGxzbXdkMDVzU1RzNStlblJKSE9kNnFodDlnaGtKRGdsa3ArcXFTSkVr?=
 =?utf-8?B?RFM1K0V0MG5jNVdDOE55Mkt2Rnh0TnNsUnAwN2kzZ00yMGdqeVFnQWdZZkVW?=
 =?utf-8?B?OStHZEdUQWJ1NDcwZW9wSFhWaXpQMGIrTGtlRTdoeFg5Y2JvUTlabEljZ1VO?=
 =?utf-8?B?dmZxeXpDNkhSbVZYZ2YwQjB6SE1vUjVkcWFFaHZhVXI1UE41c3diV0VVait5?=
 =?utf-8?B?STl2MUZqbU1IZUdabVBzUlgwMmVyVEtoRGxPcHRLaTZpYmkzckJSdmN4TmFJ?=
 =?utf-8?B?UmlXNTd6R3lieTZYelpHbWF3Qy9zYjFkSXRqTmd2SkdEM0NBQWlHdGNxc1FX?=
 =?utf-8?B?T1EvSUpIeThSZVhTN1dUdGJpSHFpcFZKd3k5VE54aFhjUzBWdWNKbVRZanpO?=
 =?utf-8?B?NmxTS0RGRU5jMU1HeWRXTGRsM1N4QmhPMHZYUzJNTE1aNlFvM1FPQ1FxR3ln?=
 =?utf-8?B?Yk56aUJTRjBvakhValFSYytlVXJvcy82cEFteXlUNjdDbjI3YlJOK2ZxRVBL?=
 =?utf-8?B?S0V2RHBpUEpRd1pvTFREMkttK3FHdVJobkdjQ1g5R2E5cFJaNjNnNGkvY29h?=
 =?utf-8?B?QkF3SXd4NHpHRWtWc083b2ljaHIyR3FqWUpKMjVzWHoyd3FsMDR4Smx0SENi?=
 =?utf-8?B?My91YmlzL20vZnJ3QnZQNFkzQVIwR2xieG03UUxTK2FuR05BYzZRb2lwY2JW?=
 =?utf-8?B?dnJCZWhHdXg4VFM4cGE2NnNYR1BnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FAAC7873ADB1EC4AAE343E02B7C26EB2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e9e17f3-9f51-48d1-394d-08dd82520684
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2025 10:31:36.4396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hVFLOGS3GIWTAj06s3iDGi4YylImk+3nYg2EqpchZWv83RdEy0EPe1anW3TOVhI3U/6mKGzIeRJHZTyCt/KXWq3NBBEkgPHFd39Em/2HJpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6319
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

T24gV2VkLCAyMDI1LTA0LTIzIGF0IDE0OjUzICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBGb3IgZXZlcnkgY29tbWl0IHRoZSBkZXBlbmRlbnQgY29uZGl0aW9uIGZvciBMT0JGIGlzIGNo
ZWNrZWQNCj4gYW5kIGFjY29yZGluZ2x5IHVwZGF0ZSBoYXNfbG9iZiBmbGFnIHdoaWNoIHdpbGwg
YmUgdXNlZA0KPiB0byB1cGRhdGUgdGhlIEFMUE1fQ1RMIHJlZ2lzdGVyIGR1cmluZyBjb21taXQu
DQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjogQXZvaWQgcmVhZGluZyBoL3cgcmVn
aXN0ZXIgd2l0aG91dCBoYXNfbG9iZiBjaGVjay4gW0phbmldDQo+IHYzOiBVcGRhdGUgTE9CRiBp
biBwb3N0IHBsYW5lIHVwZGF0ZSBpbnN0ZWFkIG9mIHNlcGFyYXRlIGZ1bmN0aW9uLg0KPiBbSm91
bmldDQo+IHY0Og0KPiAtIEFkZCBsb2JmIGRpc2FibGUgcHJpbnQuIFtKb3VuaV0NCj4gLSBTaW1w
bGlmeSBjb25kaXRpb24gY2hlY2sgZm9yIGVuYWJsaW5nL2Rpc2FibGluZyBsb2JmLiBbSm91bmld
DQo+IHY1OiBEaXNhYmxlIExPQkYgaW4gcHJlX3BsYW5lX3VwZGF0ZSgpLiBbSm91bmldDQo+IHY2
OiB1c2UgbG9iZiBmbGFnIG9mIG9sZF9jcnRjX3N0YXRlIGFuZCB3cml0ZSAwIGludG8gQUxQTV9D
VEwuDQo+IFtKb3VuaV0NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5jwqDCoMKgIHwgNDENCj4gKysrKysrKysrKysrKysrKysrKy0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaMKgwqDCoCB8wqAgMiAr
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfMKgIDEg
Kw0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gaW5k
ZXggMDE5NDliOTBjMGMzLi5kMzhlNzI5NjgyY2UgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC0zNzYsMTUgKzM3Niw1NCBAQCB2b2lkIGlu
dGVsX2FscG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgCWlu
dGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMudHJhbnNjb2RlciA9IGNydGNfc3RhdGUtDQo+ID5jcHVf
dHJhbnNjb2RlcjsNCj4gwqB9DQo+IMKgDQo+ICt2b2lkIGludGVsX2FscG1fcHJlX3BsYW5lX3Vw
ZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCQkgc3RydWN0IGlu
dGVsX2NydGMgKmNydGMpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PSB0b19pbnRlbF9kaXNwbGF5KHN0YXRlKTsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ICsJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUo
c3RhdGUsIGNydGMpOw0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0
Y19zdGF0ZSA9DQo+ICsJCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIGNy
dGMpOw0KPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNw
dV90cmFuc2NvZGVyOw0KPiArCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiArDQo+
ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMjApDQo+ICsJCXJldHVybjsNCj4gKw0KPiAr
CWlmIChjcnRjX3N0YXRlLT5oYXNfbG9iZiB8fCBjcnRjX3N0YXRlLT5oYXNfbG9iZiA9PQ0KPiBv
bGRfY3J0Y19zdGF0ZS0+aGFzX2xvYmYpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWZvcl9lYWNo
X2ludGVsX2VuY29kZXJfbWFzayhkaXNwbGF5LT5kcm0sIGVuY29kZXIsDQo+ICsJCQkJwqDCoMKg
IGNydGNfc3RhdGUtPnVhcGkuZW5jb2Rlcl9tYXNrKSB7DQo+ICsJCXN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHA7DQo+ICsNCj4gKwkJaWYgKCFpbnRlbF9lbmNvZGVyX2lzX2RwKGVuY29kZXIpKQ0K
PiArCQkJY29udGludWU7DQo+ICsNCj4gKwkJaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5j
b2Rlcik7DQo+ICsNCj4gKwkJaWYgKCFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiArCQkJ
Y29udGludWU7DQo+ICsNCj4gKwkJaWYgKG9sZF9jcnRjX3N0YXRlLT5oYXNfbG9iZikgew0KPiAr
CQkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgQUxQTV9DVEwoZGlzcGxheSwNCj4gY3B1X3RyYW5z
Y29kZXIpLCAwKTsNCj4gKwkJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIkxpbmsgb2ZmIGJl
dHdlZW4NCj4gZnJhbWVzIChMT0JGKSBkaXNhYmxlZFxuIik7DQo+ICsJCX0NCj4gKwl9DQo+ICt9
DQo+ICsNCj4gwqB2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCQkJCcKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQ0KPiDCoHsNCj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9k
aXNwbGF5KHN0YXRlKTsNCj4gwqAJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUgPQ0KPiDCoAkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0
Yyk7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlID0N
Cj4gKwkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+IMKg
CXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiDCoA0KPiAtCWlmICghY3J0Y19zdGF0
ZS0+aGFzX2xvYmYgJiYgIWNydGNfc3RhdGUtPmhhc19wc3IpDQo+ICsJaWYgKCghY3J0Y19zdGF0
ZS0+aGFzX2xvYmYgfHwNCj4gKwnCoMKgwqDCoCBjcnRjX3N0YXRlLT5oYXNfbG9iZiA9PSBvbGRf
Y3J0Y19zdGF0ZS0+aGFzX2xvYmYpICYmDQo+ICFjcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiDCoAkJ
cmV0dXJuOw0KPiDCoA0KPiDCoAlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2soZGlzcGxheS0+
ZHJtLCBlbmNvZGVyLA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uaA0KPiBpbmRleCA5MWY1MWZiMjRmOTguLjc3YmFlMDIyYTBlYSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gQEAgLTIzLDYgKzIzLDggQEAg
dm9pZCBpbnRlbF9hbHBtX2xvYmZfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICpp
bnRlbF9kcCwNCj4gwqAJCQkJwqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ICpj
b25uX3N0YXRlKTsNCj4gwqB2b2lkIGludGVsX2FscG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+IMKgCQkJwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
KmNydGNfc3RhdGUpOw0KPiArdm9pZCBpbnRlbF9hbHBtX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICsJCQkJIHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKTsNCj4gwqB2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCQkJCcKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KTsNCj4gwqB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBhN2JmZjgyYzk4OWQuLjM1YjFhYWNhMjk1OSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
QEAgLTExNzYsNiArMTE3Niw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3ByZV9wbGFuZV91cGRhdGUo
c3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCQlpbnRlbF9hdG9taWNf
Z2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gwqAJZW51bSBwaXBlIHBpcGUgPSBj
cnRjLT5waXBlOw0KPiDCoA0KPiArCWludGVsX2FscG1fcHJlX3BsYW5lX3VwZGF0ZShzdGF0ZSwg
Y3J0Yyk7DQo+IMKgCWludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0YXRlLCBjcnRjKTsNCj4g
wqANCj4gwqAJaWYgKGludGVsX2NydGNfdnJyX2Rpc2FibGluZyhzdGF0ZSwgY3J0YykpIHsNCg0K
