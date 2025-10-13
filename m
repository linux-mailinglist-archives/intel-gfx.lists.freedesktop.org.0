Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB37BD4FCC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 18:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E59F10E1F3;
	Mon, 13 Oct 2025 16:25:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KUshgroj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F0110E1F3;
 Mon, 13 Oct 2025 16:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760372717; x=1791908717;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iKG9qlBFg0vtf/r9E+BVKO0tQUBSpzbLuP0tJd4J7Qs=;
 b=KUshgrojUYORvW+7PVEslz2iI3Baz04KHvktwJHAYYq3I/fBvSiTRHLZ
 vQlb22EJ0/+/FEpRA1W9UMrN+v9SGqYDUdZulHVjgIfi2DeCfzJ1kfv3T
 AmbkV6+YnPVTv8J2AhqphbDIC3bcqrwy3Vl0ThUO8FEg4+4/z2TNC62mC
 6yvJKKpajsYKOwKXD/NDB4mXY9+4bRjHWMhmCgiqWZru0D10DrcTyrgxb
 vpeCjrTJ8tGrJcmQYDJzpnUbpnuTYK2CoOFjRnNeMfAUL8CJumba/OWtT
 TlTN9r+DB2n5/IT3QcfEeH86FnTi1gM/J5Vn8teHg/cipqVONuPijp3IW A==;
X-CSE-ConnectionGUID: 2vyTB4yDSkKpnQ5pma2z5g==
X-CSE-MsgGUID: WotpVBfJTc2d+Ht/dadBmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="73861483"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="73861483"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 09:25:17 -0700
X-CSE-ConnectionGUID: Ofl83Jg7S/qVoDcfCn+BWA==
X-CSE-MsgGUID: ahmnDeZbROGgPdrrTeP/qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="182404155"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 09:25:16 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 09:25:15 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 09:25:15 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 09:25:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mWxgD6Yf1gjn5vqBm7ZnRz8zh4Ad5RolSmp+YnQJlAbjF4o7xGMMZhp8G5P3OKHh5oGbWkW0UQXi6ZPO7WGpWlDhgW7pMFWdpZfimYaf3XYEygkFE8FPvQnvNBLq2L/cIKTbkb77WKVDbhqPh6sLEkii2vlUM7uXJoxYBx5XwMonxZK+huA5umOZqeFRBRJf3laGGD1Sj4DXYbyrlcTK2zGo3DPU104PaBWeXkLJB8+ido21xj3XKE2vH2v1c1KXpdwdJg2XmpbOrpEpPq+TTCBeox7I8CQYBmjaby5VFDDO44ujHyyYUkQNo4iq2Sp7d5BxI4VFnniCvIoBEZZVBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iKG9qlBFg0vtf/r9E+BVKO0tQUBSpzbLuP0tJd4J7Qs=;
 b=iVzkJCw9NubJ2gGxYum6TTok3EYZnZ4m12Z4q3IUZA7cFQQHQQcqSopMsQdHNx7QkQZSic3ZjWuErcBG88uAeRuOSJ3L45udS6pWFc92uBamHdx02NB+aeBzunY0Ps/dPIaoM9h7KsvXxa8mzDlp2R+oyJT+CLVyk8rug96z1wWXZUQ/Rx9ESAJo/LuZA3gOoA7n+xDjBVAsdfdeQwG84A6hhSl3WJXYLLSlCOt1QOxO5nT1ALY5IKu9AxeGlJKWQEa8IPXHF+EJpw+2V/Ad3O38TkAGpsRXMbGjydSlFZ16SiFKi8200URDLCJHR4v41+xRi1d4JJm3LUQshoXsEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW3PR11MB4732.namprd11.prod.outlook.com (2603:10b6:303:2c::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9203.13; Mon, 13 Oct 2025 16:25:13 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 16:25:12 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC][PATCH 03/11] drm/i915/cdclk: Add
 intel_cdclk_min_cdclk_for_prefill()
Thread-Topic: [RFC][PATCH 03/11] drm/i915/cdclk: Add
 intel_cdclk_min_cdclk_for_prefill()
Thread-Index: AQHcOIEUeF37hX6sNEa8dXjOf7uanbTASq/w
Date: Mon, 13 Oct 2025 16:25:12 +0000
Message-ID: <DM4PR11MB6360D20DED9FC87A13825916F4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
 <20251008182559.20615-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20251008182559.20615-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW3PR11MB4732:EE_
x-ms-office365-filtering-correlation-id: 83862b83-ca73-400c-2772-08de0a7515f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?UTVjU3V4WkNKa3N3TkVkekNIQTR1ajNlcVo0eXliTHhoeXdra1lQbGlEQWJs?=
 =?utf-8?B?ZSt6K05XOGdSazdOanJmNFVNQXFkWjIrVTFMNmRkQzRLcC96WU5sd0NBS2dV?=
 =?utf-8?B?U0lySzI4TCtCMzdDeFE3dnVoM1JIZ0NJQXJPYjdEYTQ0Y1hPdTlRNkc5M1Zw?=
 =?utf-8?B?WHpQdmJLbVJRTXFKVHRXelJuc3hUN282NFVZV2NHcUhmV2UwVzJZamp1c01V?=
 =?utf-8?B?MS9NcGRjWW5zSVIxaDdYSDFNTlNVZHFHN25QQXdUUHpLdElaSzZSa25mZW42?=
 =?utf-8?B?M3hKUFNNWGJ2b0pDdW0zSWVGNGhJOXdtcFNoNHN0dDFTQVdkYlZlWkdXalN6?=
 =?utf-8?B?MDVuMXB5dHRDR2V3ODNOODNRS3h5bng0bnpGaXE1a09QcWJxK3crVEN6MDBS?=
 =?utf-8?B?VWd2K0FYaC96bHRGeVl6cStKZEM3c29kRktxUktQUWdoRlh1UTQrQ0E2aGwv?=
 =?utf-8?B?eEdiWEZaRDQ1d085NVJSako0R1hqRmdnbHpGZTZZV1ZSaG1ab3RZU2JncVB3?=
 =?utf-8?B?aVFrTi9hczdyY2JmQk14TmptbjVDNWg2LzRBa3dQdjUvTmR2M1RVb2R4Y0Z3?=
 =?utf-8?B?NzhaRVlES3lQMlJiWmVrZENhRnJYTTBnK0RyQm01TnRXSlBFQlhCempwS1Rs?=
 =?utf-8?B?SjBhL3g2NWVnNDY3cGxiSFRYUjhlbWRDSVJORGVaYVZ0Vko2cWJLY1VuTFZm?=
 =?utf-8?B?SDFCSEw5VWxjbXJVMHB5OFR4VUJmU2V6L0xRZThzRFYyRHZlTTY5K1ZtY1JR?=
 =?utf-8?B?T3hCU2NsL1diZkIzTGt2d0x5Wi80RmRXdnI5dFVtMTZsTno5VnZrWXFXbjQ4?=
 =?utf-8?B?K2d4SEFXb0t1aXpkR2oyc0NZUzMxUFVFQmFJYW1DUHlvcmcrT01NVHdXVEFh?=
 =?utf-8?B?QkV2a1IwRlR0Q3Y1bCtIUDVJcWdNZ2RPNDV2cWtoeGcrNkcySnlPT2pCK0ZP?=
 =?utf-8?B?dUxoOE10YkVLVGY3RkJUUUI0V3ZqWDJGdWhsVVpKaVkwR0pqaE9hN1FnWVdm?=
 =?utf-8?B?MlR3eGkwTDJIVitmUnZYbTVKclZMcERYRHpZTDhsdlNHVklzbGZkZElVZXhi?=
 =?utf-8?B?OWw2R0ovVVRQVWhmclIyZzhETzZ5UU9heWxRUXhhUlU1SUNMYitBMDhFTWdw?=
 =?utf-8?B?VXhtTUIwSHVhZVk1eERraXRCZys4T1JNRVlwUzEyKzhqUzByNWZHOU9OYk1x?=
 =?utf-8?B?d0ZCZm1UUUQ0cGcwK2Jqa2xRQmEyR0xuYVVzTmY4S2JZeVd2NEdOSDJGMDhl?=
 =?utf-8?B?MVRjUTZQU1VPc3A2T3VFOVRnTFFLZ1RwN1hBZTFHSzRITTlDYUwxTlJIbDQw?=
 =?utf-8?B?c051N2xTUVQzbFlXSGpROGU4S1g0cXhjbmJqditkbzZQbGs1eFR6RGI5MFE4?=
 =?utf-8?B?YitTalIvUFJtWDJMYTEwSWRBNXpMK0ErWjRtbjRwQ3RIOTduaGQvRGpEYzJJ?=
 =?utf-8?B?M09rSHhGMVRmVldYWm9QRmFFSXhtS1RPWW01dlZRcVllZGlJOHBTQTFjUEZU?=
 =?utf-8?B?RUtjbjlrZFVYVzg3TmlaRGtFMlNhakRCU2p0MFhkTUxnM29FbUhyc0cxYVZs?=
 =?utf-8?B?RitMR0cxdU8vTEp0bXVzTmpmSU84cFRyL0RTcEFOYkRnQTlXaEcyZWZJWjY4?=
 =?utf-8?B?ajRTU1o5cmJ6YWVmTHkvby93bjdMMytRYTBoVy9NUVJaVGZ5RTdTTytDdGlX?=
 =?utf-8?B?MkhtenlDdG1qeldtclNhVU9kL0hVM0EvNXJobjU3T2F3S0xJZ1NKc09xalVq?=
 =?utf-8?B?RmNaOHJqejZkU1hTK1BiMGJrb1N6QUpJcVBrN0JkU2I3VXJLbHVwNWxRZmt4?=
 =?utf-8?B?SVYxMDBYS1FRNE1BQmRHL1c5dWVJaGpSTDcxbEU2MHdFL0JTK2lFMlpIMFhS?=
 =?utf-8?B?aVl0T2k1T1MySmZ0enhTNk9mcTlpOEt4eXZocHhKR0RJdHVsbEUvUDV3Nzdu?=
 =?utf-8?B?M0VuV1FTN2lTUmZZbWJteEJsVVljWm9lOVd4TWgxb2I5SElLYW4rYmlkQksv?=
 =?utf-8?B?a1NDdTg2M3c4cTVuRW9CVHYwVlBLdUhDOXAyRWlaMUd5RUsxN0pFUGhpd1dG?=
 =?utf-8?Q?SgMWDY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bUJPV2U0dmx6eHNEYWlzTWFBNzFpR1QrVDY2eGVKdEl6bkN0NytpN0NpTTdj?=
 =?utf-8?B?VHRxR1JOWXlYVTlXWEJ3ckxFZGVrd2tldXRsdzl4RkJjNGpERytocjRJUnFn?=
 =?utf-8?B?eGtjQ2QyeVRmWkNWYXVlSnNYR2Fhb0pDdU9yT1RSalAwVHlXTDlOeHRYb1Rh?=
 =?utf-8?B?SlNzRWdkTldWd0Y3OVh4QUtleTlGRDBtSVJWUmIwU0xKZ2Exd01xSlV3WWhR?=
 =?utf-8?B?R2l6R01nRlFvYjVIZ0NTalgzS29YbDFDU0VSdmJFN3ZvRit0UGZoMG5VajV6?=
 =?utf-8?B?TGEycnJZTlI1MzFmd0g5YVZYRGZJc3h2RnluQzJZYWVzTjF2UE9FVHdIekk0?=
 =?utf-8?B?SHhnZTRNQ3lrdGJDZytMZEN1ekordUZ6cTArSXF1RHg3Z0tIUEswZUFLblZ3?=
 =?utf-8?B?TmFmYUthU3YyUnpWQUk4dGZ5dnFqRWZhQ09EenpJbWt3QTVkT1d5T0xtTDJH?=
 =?utf-8?B?MmYwdStFaUdvQWtKbXFubjhvNmZxL1YxUUZadjJnZGV2NmszYlVmNy96aUF0?=
 =?utf-8?B?QXlUNWQxRm5TZVZwc2ZpeGVLS1RISXNiYmw2M1pWWUdoekFLSXMxUjV4MXFh?=
 =?utf-8?B?bFlscFdpR0RvT3ZFMU9hVE1EcmNnOVB3eUswdjNNeVlYSFZsZWQ1NXA5QnFk?=
 =?utf-8?B?QUxjWCtFY0RtMjh5VlJvM0hTTjN3bXdDaGc1aUtMLzhaUDdDb21rOVNFbWc0?=
 =?utf-8?B?ZUttUE1WOXdNdWZjMVJIN1hUYTBQTW95aWpkMTlYb2xZUXZXMHQ1R1VEOUlG?=
 =?utf-8?B?M2VPNk10VVQyd2VNcnVIMWJRczlzSFRjT0p1b1diR1lXejR3dmZ5N3JUYmM3?=
 =?utf-8?B?WHQxN2N1ZXdjaVZyS1ZjNnEzVUYrSm4zVGtpWjdkNEdpem8vbjQ5K2lxUTNO?=
 =?utf-8?B?alVRZkdFbzVvRGJSZVA2TmpXQ3FORXFKR2VNZ0J0OEtLeG5VS0Q5R1E5VkdK?=
 =?utf-8?B?ZDVNcUhKbVFxTnkwb1pwV2FVOWxsSHdkT0NKck9hMUt0bUJDVkNIN1JOOWIr?=
 =?utf-8?B?Vm9kRk5FZ05zMDJraTF2TUZpQlg2ays0ZTFQUVNORHNzbWpDS2xzSnZZa09r?=
 =?utf-8?B?ZUF1cWQ3OHVNeW1OcmtDS1pXMnpUYk81aDJjeTd1dGhXZEJEcFZNY0JVRUtw?=
 =?utf-8?B?aXBWMmVXd2d0R0JuZGRGTHloVG5Vak90Zk4xVHh3dnNvb0RzMmg0SGUrYWts?=
 =?utf-8?B?bXliVm1FREJMRGRZVVhzc2F5WEl6SHhHdWpvbVlIM1RPZWdRUEFEOVBkSVBZ?=
 =?utf-8?B?bWJGeXdsMytvbk95Tkc2Mk42ZEVlaWdmNzJ0c1JITjhZVEgxaG9XcUNTUGNR?=
 =?utf-8?B?U096MHVHNnQ2UDQvb2JQY3ZRVmVtUWRkQnlra1Z2azBNV3RXZ1BuZktyMCtt?=
 =?utf-8?B?WFVmWmhqR1lIUTdOMzJqM2F4dmhERGxHMVppK0I1Wkp5LzJlUU5DNlJHYWYw?=
 =?utf-8?B?V1I3YlFMZjdscTFpa0J6ekd5TVV0UjFiYkRQOGF6Y09SL2xiSytQTDU5dXJR?=
 =?utf-8?B?M2FzY2hOUk1xbVlJS0pMVGFYUXFmQTYzeHpCR2o1aFg0OTNEd3NwYUxndkc5?=
 =?utf-8?B?WG15cUF0VWhxbXN0K2NwRUZjNWdVTU96eU1TeHZ0aUMvRCszU05wL2VSTzlD?=
 =?utf-8?B?UXR3c0dpck9EaDJoQ1NUMnU3MGdBbVBTS0RrTGNlT1poVG9hMy9NWGthbGdW?=
 =?utf-8?B?QVBQbW42OWcvdk1hTks5d2VJaHZGcXJYVlFmN29FcVhLODJPM2p3K3VidU5J?=
 =?utf-8?B?cHkvOFRYdlhvTW5lU2dFMUtQeGVKRTJ0d0FXaDZHT294R3pnaUNSc2xMd3Bk?=
 =?utf-8?B?V0tnODl0ZGN3blFNbW5BNnN6cldiRGduOGlrSzMxQUFveDBhVi8rV3krd3dY?=
 =?utf-8?B?ZTYxOEZBVDUwYmpoMDZKdVhFdE9LZU9DQU8xaTBiS04vNGVrMVY0aTZUN0w1?=
 =?utf-8?B?b3hjWVhsWVZnRFkzNlJjYm5wdC90d0UrSW52eXNzdXlqWjcvc3d0YTdRaTA5?=
 =?utf-8?B?MFkvanhKR0FWZFo2eDE0WGltbVh1TjlHbmFsUkdYeWYzMGh5dVdXVTNOSXJl?=
 =?utf-8?B?S0FVWS93ZlRkK2h4R3BPYzdxbklHcjY1WEVIZEFSRzVqRXlFbHY1QUpSQVBR?=
 =?utf-8?Q?1EyljNXqNRPZccwO/YqXHT/Hx?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83862b83-ca73-400c-2772-08de0a7515f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 16:25:12.8871 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LYqrVosVPzQNwFUZFmk48mxjzO5d+ezqYOnCbzz3x8Wcu/s+gNsWoCHV+DanXezlMZDp0/HgA+8VQRQxIBtn6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4732
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciA4LCAyMDI1IDExOjU2IFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1JGQ11bUEFUQ0ggMDMvMTFdIGRybS9pOTE1
L2NkY2xrOiBBZGQNCj4gaW50ZWxfY2RjbGtfbWluX2NkY2xrX2Zvcl9wcmVmaWxsKCkNCj4gDQo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IA0KPiBJbnRyb2R1Y2UgYSBoZWxwZXIgdG8gY29tcHV0ZSB0aGUgbWluIHJlcXVpcmVkIGNkY2xr
IGZyZXF1ZW5jeSBmb3IgYSBnaXZlbg0KPiBndWFyZGJhbmQgc2l6ZS4gVGhpcyBjb3VsZCBiZSB1
c2VkIHRvIGJ1bXAgdXAgdGhlIGNkY2xrIGluIGNhc2UgdGhlIHZibGFuayBpcyBzbw0KPiBzbWFs
bCB0aGF0IHRoZSBub3JtYWxseSBjb21wdXRlZCBtaW5pbXVtIGNkY2xrIHJlc3VsdHMgaW4gdG9v
IHNsb3cgYSBwcmVmaWxsLg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBT
aGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAxMiArKysrKysrKysrKysN
Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oIHwgIDMgKysrDQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggNTk4NTkzZWFmZGY1Li4z
NzUxNWRhMDU2ZmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY2RjbGsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmMNCj4gQEAgLTQwMDAsMyArNDAwMCwxNSBAQCB1bnNpZ25lZCBpbnQNCj4gaW50ZWxf
Y2RjbGtfcHJlZmlsbF9hZGp1c3RtZW50X3dvcnN0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlDQo+IA0KPiAgCXJldHVybiBfaW50ZWxfY2RjbGtfcHJlZmlsbF9hZGooY3J0Y19zdGF0ZSwg
Y2xvY2ssIG1pbl9jZGNsayk7ICB9DQo+ICsNCj4gK2ludCBpbnRlbF9jZGNsa19taW5fY2RjbGtf
Zm9yX3ByZWZpbGwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+
ICsJCQkJICAgICAgdW5zaWduZWQgaW50IHByZWZpbGxfbGluZXNfdW5hZGp1c3RlZCwNCj4gKwkJ
CQkgICAgICB1bnNpZ25lZCBpbnQgcHJlZmlsbF9saW5lc19hdmFpbGFibGUpIHsNCj4gKwlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7
DQo+ICsJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKnBpcGVfbW9kZSA9ICZjcnRjX3N0
YXRlLQ0KPiA+aHcucGlwZV9tb2RlOw0KPiArCWludCBwcGMgPSBpbnRlbF9jZGNsa19wcGMoZGlz
cGxheSwgY3J0Y19zdGF0ZS0+ZG91YmxlX3dpZGUpOw0KPiArDQo+ICsJcmV0dXJuIERJVl9ST1VO
RF9VUF9VTEwobXVsX3UzMl91MzIocGlwZV9tb2RlLT5jcnRjX2Nsb2NrLA0KPiBwcmVmaWxsX2xp
bmVzX3VuYWRqdXN0ZWQpLA0KPiArCQkJCXBwYyAqIHByZWZpbGxfbGluZXNfYXZhaWxhYmxlKTsN
Cj4gK30NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaA0K
PiBpbmRleCBkOTdmNzI1YTAxNjAuLmI5MDhjZTJkOWViNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaA0KPiBAQCAtNzIsNSArNzIsOCBAQCB2b2lk
IGludGVsX2NkY2xrX3JlYWRfaHcoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiB1
bnNpZ25lZCBpbnQgaW50ZWxfY2RjbGtfcHJlZmlsbF9hZGp1c3RtZW50KGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiAgCQkJCQkgICAgY29uc3Qgc3RydWN0
IGludGVsX2NkY2xrX3N0YXRlDQo+ICpjZGNsa19zdGF0ZSk7ICB1bnNpZ25lZCBpbnQgaW50ZWxf
Y2RjbGtfcHJlZmlsbF9hZGp1c3RtZW50X3dvcnN0KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gK2ludCBpbnRlbF9jZGNsa19taW5fY2RjbGtfZm9yX3By
ZWZpbGwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICsJCQkJ
ICAgICAgdW5zaWduZWQgaW50IHByZWZpbGxfbGluZXNfdW5hZGp1c3RlZCwNCj4gKwkJCQkgICAg
ICB1bnNpZ25lZCBpbnQgcHJlZmlsbF9saW5lc19hdmFpbGFibGUpOw0KPiANCj4gICNlbmRpZiAv
KiBfX0lOVEVMX0NEQ0xLX0hfXyAqLw0KPiAtLQ0KPiAyLjQ5LjENCg0K
