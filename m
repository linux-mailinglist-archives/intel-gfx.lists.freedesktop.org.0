Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7022D960964
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 13:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0F210E06C;
	Tue, 27 Aug 2024 11:58:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j7gdzxu9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EFED10E06C
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 11:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724759881; x=1756295881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=m6labPvY+/3OrC6i0pr5I4NQEiE5JfHlf4OA3btrkiE=;
 b=j7gdzxu9hw3vT+/hHdby6XOfA9h1mK1wk/Sh8aypg7M6QioQayeA+p8b
 2mRahm6z24WCs8J1LAkR3IgJhbBJXr8TlDh8kA/YOnynrQkhbttVAU5sY
 4rTQjBGhIB74eN7+hGviyzIDfQtBVPwXWxINFw3Y1RzPkuszP8U/fle0q
 Z1YJvc/V3XWfiWKbzpbc7t2Rdkrt5gLyWT/bPrAHQ490/6TtNuJ9EcwT0
 xJNnOELE0d0tSLVJxIBK/o0USYDMqk3oRHVaFvJSxeZH3yzJhbeMOozyI
 qyW+D8TpcbJuShX6+1ME8KijcRZLJpvnD7zgtOTS5MW1YPkiH4OuEJjag g==;
X-CSE-ConnectionGUID: AzLzKoeBTGabpLSFW2/D+w==
X-CSE-MsgGUID: vwXgwxwaR5OtAsiYWsrr7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="23358067"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="23358067"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 04:58:01 -0700
X-CSE-ConnectionGUID: qS1D+OOkQOWAdV1DsU0+DQ==
X-CSE-MsgGUID: xRx/d4S7Ql6VOYqARpdzaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="66984345"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 04:58:00 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 04:57:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 04:57:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 04:57:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dp/b8ZhUlB00Qm0u+XGjgXaxY1GQpkGrrHvSbF3IsAym128cPmOZVmLWq2QFwz7IE+oh12g+xjsuO65UXS7IAFTmewuDTXe5v/IuaWls59QBwyHjdFx5pou36EAwo5GaMGdALZxs2phH1jRCuT6ZbkYG3HNT8FUTF/GGc6lhf08TABogbi78q5SOFiXDukSu7dagsYiChDGs2KdznanEc9cuyx9/pqCV/qFqcNIJUJuqOiJec7DvfBLDNx37IDVGBiXoUaNvFQ9/QOE/oWnGhv6GsIfgZVW1UHqjNs/E2sHO6AMJuEp4FflQHp8XbDgdMGsJkcDlPLtnmeWYts5dDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m6labPvY+/3OrC6i0pr5I4NQEiE5JfHlf4OA3btrkiE=;
 b=IcPeYipIzYL8F4o61qjHyxFIe3TKQYMcTuWV3PFG1fi9+SWlmXU/lfkBHQ2c6rPhtg7mOv1wu3mORZXRGfccr5AbvTxLWAqHMUhpA2X9/c1m1ULQD6gutsXHKnsoNA3IhSJuDVyHUvHpYHRU+rWL9jdxFUswLIJVjXsOjmA70VwjSp69nFWe6cKeIv0Hht/JWv8aFXh4Gcz3evC1nfIBve0mZe+ycgATVbFlDh5HXCLxxx4o8hMXJpAu4120lKSNhm51VkHkEl5olmjRqlmMhhGFPSRhjdsc9F5+mOBz+ckxvGsVOGAdko8g+XLhLENoMQoWwOOhY/itvgZVqQ+Nrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by SN7PR11MB7438.namprd11.prod.outlook.com (2603:10b6:806:32b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Tue, 27 Aug
 2024 11:57:52 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f%6]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 11:57:52 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: use old bpp as a base when modeset is
 not allowed
Thread-Topic: [PATCH] drm/i915/display: use old bpp as a base when modeset is
 not allowed
Thread-Index: AQHa96SSykHiHSjjgUymUaGe//7berI64zgAgAAFnICAABiQAA==
Date: Tue, 27 Aug 2024 11:57:52 +0000
Message-ID: <d22e9dd45d74b8ab8264cdc4f79303b4c4086fdd.camel@intel.com>
References: <20240826104132.966597-1-jouni.hogander@intel.com>
 <8e0e10a9-fd2e-4452-8a12-ba68e522a418@linux.intel.com>
 <87mskyz2ak.fsf@intel.com>
In-Reply-To: <87mskyz2ak.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|SN7PR11MB7438:EE_
x-ms-office365-filtering-correlation-id: fa5f8ccf-3198-4c49-f9b2-08dcc68f7aee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OHdsdGVwTUNxTXMvNldPVllDOStVTHJzUlJ5T3VsS1JtMnBoRUNxY21BZEI5?=
 =?utf-8?B?bXppbm8vWTRjTDFlUER2dmRQbll2V3hJanUxUldlTHNNLytIWXN0MkFOclRm?=
 =?utf-8?B?REcvZW1CQXRRUnBBOExrOTVDeEtqODE5dGlqYmlZaGd6QUplbEtIUGlJM1lE?=
 =?utf-8?B?RUZiWFR0aDRhOGNHTTR6U3B6aWE1SWVHK01ubDR2MHZtQ3J0UXBrTHZocmJx?=
 =?utf-8?B?bm1KeDZzakthSlZjd2djYzRnZ0tpWXA0dFVRSnlWRy9vUVd2WHpLVXd0RFJF?=
 =?utf-8?B?VDlxVHE3UGRobS9SSkZ1ZG50dW5hbUtXSjd0eGxLdHRueFl4YngvTmZxYkc2?=
 =?utf-8?B?U3hJbWwwWThkMmM4ZVN4bUk4V0pYa3FSSHh5ck1OeG0zOEJhNmw2ZkxsanlW?=
 =?utf-8?B?ZGZTL2hnR3pPOTBWcGI1UlVGVFM0UDRmTnBpS1NLN3BGdlZzRmp2c3gvcmVv?=
 =?utf-8?B?L0hrU1FEeFFrRzJ3YzBNN2JyY1ZSc04vVXE1ekFzbEtJUk9VTSswRGorYXdn?=
 =?utf-8?B?clRPUFdybFpRUU1vNmlLdmttcDZVOHh5UXBsOGp0bFZhVkdSTk1YbHRwcVVt?=
 =?utf-8?B?ZlZtQTZOSEFWdjlRajhQL2NubFZBMWZGaEtIMDdlaWJvL2k3dCtkNkc0QlBs?=
 =?utf-8?B?dXRNUjh3NXRrZWRhR2ZySlYyMmdsbWU2eHhPYTYyUXlPWUVYMlFCVlA4V25h?=
 =?utf-8?B?NXZtSHNTUHRicFVONTk0VUYzR3pKbDgweGJLVDlWUXJWUDJsYmVYTE4zR2tQ?=
 =?utf-8?B?SWM4alh0NUxQallyejhoTGFHaEVaSDFWMCtyTHU2T2lXWkhOS2RTRit3M21s?=
 =?utf-8?B?UzhYdXI2aVJUckpBNytVY2NYMHRMVFppcktzMmQ2WmZkbjE1OU1NV09NVUtX?=
 =?utf-8?B?bEI4NlYvS21PK0RySEgrOWxrd2ZEWW0xWk11SjlncUxZMVNsZFN5bzdlQ0sr?=
 =?utf-8?B?NkJseVdZOElpNnEyQ0lBYkt2UGU3MGIrL0VCWkpFUDZLRjAwZmsxaGlCS0li?=
 =?utf-8?B?eFl5cXlLZ2c4OTNsQ04yL1ozUFREc1IzUWtXVFM1WHl1NDQ1OWR3QURHQXdu?=
 =?utf-8?B?SXVLcnI4NUFyYWNMaW5HV3RyOUw2clVROWFocUZlK2E3L3JVd3piSWZSZjQx?=
 =?utf-8?B?WVhjWWZjK2NGOXdtWGdza09RWXFvRldZcDh3NGxydzJrOWVSeEU2WDUwZXJJ?=
 =?utf-8?B?cHduMFc4dlRIbFN3NmFoRnlqeEpZcldkUE5aRzNwN3IzY0VRdERRNEthUE9n?=
 =?utf-8?B?WXIzclpxcS9mWDAxSEw2UGFBOHVJRGJOcGlWR05yR3Q1TVBNRFJFM0g5QTN1?=
 =?utf-8?B?VnBxczZVQXhhYnVaOGpLNEpSamZ5WGxkVDNiR0gvUEl2Y2xSM2RtTmRCYjdl?=
 =?utf-8?B?VFNGekUrNzkwelU1L3lPWHNXdlc5K09CZ1VhanlkVDdGTUc4b0hqWVFoZnR5?=
 =?utf-8?B?YlpFeXArbzFvN3RCYjF6cll6bzF2YTU0emVqVWRScG13NmZpOGxuSklQNjRn?=
 =?utf-8?B?a0dDWDZOcEZQSnZyaXVwVWtBTzNaeHlORWZwdTNMK0VZaVMwRis3MytHVTlT?=
 =?utf-8?B?UWR6OXpnamVRc2xFMUNZRVh4bFl2Z3p2ZHV0dDJiRlZ2dDk4RDg1RHd5MWVa?=
 =?utf-8?B?SFkwNFNvemRsSGNkelQydmlCSG1IQktTcE1nUG15QW9WbEdZcEpFVW5pOXNZ?=
 =?utf-8?B?dXdmalRIbjYwRytydzBSRVVlSG9CQWsxcGRuWDVQb1hTcVBnNEtjYXNiTDlx?=
 =?utf-8?B?bGF4TTJMZVREZkw4a09Ed0tjT0NIdC9QYitsZHFQcUxIOG5IalJQb29GVzlt?=
 =?utf-8?B?SzhYaUxqYzVlQ0RrbkJhMjRxZnpzR1lEdkV2NWRRamNCMEhURkxGTEFkb0NQ?=
 =?utf-8?B?cHBJU1cxSzJzcWpxSUFibWYyMkZaZmY2N1FwRVpwNzhET3c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0JzcXFSeVVBZ25BeGk2T1Q5QXVKRSt1NGxQcmh6S0Y0bkhQb25LV1hmTVhi?=
 =?utf-8?B?dGRZZ2JISUxBU2xaQjBGemlxZ0NreEV4emYvQzBjRHBhZWFLcURlcU1vSkNF?=
 =?utf-8?B?aXNpUjBMcGZlVXFkdHF2Umg4YklNTkUvRHJVYXFINDdmK3N3MFhvMEI0Y29R?=
 =?utf-8?B?ejdCYm8vSnMxbGFrK2ViSkhDeGFteGpHTit5ME1zWTNxRUpNVFh0ZUpmQTVr?=
 =?utf-8?B?TEsxaXArV1ZUSDVIWnpZSGd0L1pXRkMvQ1RKbHdYN1o0bHNHL2RqOUFQWkMr?=
 =?utf-8?B?djFXWmtocVp6SCtUYkJwNWVwbWtNUzJ6ZlAxYUZNVlZhOTRNMUR2SC9BSGpp?=
 =?utf-8?B?Z1ljV0FwblE1OHdManNFTXpTK24wUmhlb2ZwWWducVBkREh6VEdaejBnSVNT?=
 =?utf-8?B?R3ZEQ0pIblpIVTRuNFY5dnd3M3BvMGxaNGJRd05yaTFTdE5YcVljU2FiR1dj?=
 =?utf-8?B?UUlacURpK3J6aGlYaFRkNEVMQkI4VnRtcmZJeVVwMElKa29VNFNvd1E4M2kw?=
 =?utf-8?B?ZEk2QjNpSnhRaXpxZ20ra1VDWnlyYkxqeUU4VUNuRWVNZ3RmNDdxY3BzaXBC?=
 =?utf-8?B?RHFXekZNbnJqUVlhS0ZDR3gvNVZJWVYrOXNEYkNnazNhdjhYS0tFK1d2YjNW?=
 =?utf-8?B?LytJdGZzN01YQXdoeWE0ZFRMTzFpbGk2RnQwa0dQNlgybk8xWk93K2pIbWJ0?=
 =?utf-8?B?WWtDaHVVZ2FpRDhoMC9rMDF4RDlscXBvNHV0ZzBUWE50YU1yUzZ1aFJ1MGxV?=
 =?utf-8?B?SytEZjZhTjBXRnpCUVR1aUhWeWFBanM4WEVvbXBqRG5IZUpxcE4ySXh1Rmtk?=
 =?utf-8?B?bzlEMStuMWtPRGk4enNDSDkzYjBlcXdsekF1UzBjdDZ5SFlrdS9rSWs1blRL?=
 =?utf-8?B?NTl0TUlNS1RYQ1hJVFQxNzVjKzlzS0tmZVpRT1hQREk4TmNWYTZldGRkdTcw?=
 =?utf-8?B?UjdrTlo5SXUvb2lyaTVDV3AvajMyTkY2QUszbDY2a0pCYTVBT3ZsejRMUHZh?=
 =?utf-8?B?cnhkWXpwZkJVb2tTTWhjTnhES29WQmt3VFZvQ3g3dUtCRUpMWUtZTkVyaFNJ?=
 =?utf-8?B?MS9tQmdwd3hrRHFrR21Oc203VXIrVS9zd1o1MXNSM2dxS05TSU1QeE9uR1Jj?=
 =?utf-8?B?NEJGMnBWOHB6dW1MSGdYL0V0U1QzdTEvWGZYWlJvM3VDQkpGaGl1aHo4WExq?=
 =?utf-8?B?N3Zqa1QrZmU3dnFuc0tudFlsa2hyVnlqMlhRdnQ4V0xKSGV5UzVlOWdYSng5?=
 =?utf-8?B?S1AvbUhPVXNMajhOam5vTlk0VkNVR1V5a0EzQUFSRi9wNk81cjNIc0RZeEYw?=
 =?utf-8?B?ajBEVTdSZlNnalV2UVhBbWl2cFBobFZZWUpiSy9DR1NZcUh6a3lJbStSb1VE?=
 =?utf-8?B?S3Q5bU0rQit3UUJvOXB0ejM3cDliVmltbnUvYTZiek9SbUg5OVBkaU1GeDRL?=
 =?utf-8?B?bnVDV0JSSkFqY0hkWFpkOHVpUURXUHFSdGcwdUlQYVpOWTI5Qkt2YzRCMGVa?=
 =?utf-8?B?WmtLQytYMWNRUHZSTG1KWWVNa2pzekpUTWFUSnYrR3VzMEdWbG4zQk9FRURM?=
 =?utf-8?B?Z0JGUmN6YmQvS0kyc2VscDN0TnhEZUx6TFJzQ3h1cGxGN1Y3T2ZOSENZWUdx?=
 =?utf-8?B?U25KMFdHOEJHOWJLMmllYlAzak5Xdmg0SkxLS1YwZkJ2YXRCV0tpQVZWTUhB?=
 =?utf-8?B?UFd1bUVONDQ2ZTR4OWZvVktTc00vOUlYcThqOTVoWEFwYXJKSE5iWklaOE1o?=
 =?utf-8?B?bndTUWZGb1A4NCtqUUhyR1FYU082ZWtLWENMUlpnWGpVaG0yZXozNlVtS01r?=
 =?utf-8?B?WG11K00vK0xSUlNMSG0yT1ZUU1MvSFZKRlFMaE5wWEszZUR0ZGlqbXBmaUtt?=
 =?utf-8?B?aWFqWjd2YkZGa2Nvc3VZNnRTbGN2QzUrK3N4enBrN1pUSktQYnBpQ1NzTlhG?=
 =?utf-8?B?My9jS3RVN2EzN0V3TUdNcVRqTXBVQWRneWpya29ITWp2OXBxcDVDZjFlelVF?=
 =?utf-8?B?L2JuTDF0bEgrYldPRnZ5eFppdEJaRzI2MGxQVk5GWmdRSVllQVN5WkVxU2dm?=
 =?utf-8?B?ZG9lbGI0bkNOQktMOHZlb0liRlh2QVpscnFXODdUaUJrZUE1VHNNN2U1OXhG?=
 =?utf-8?B?RTBhTXJMM1ZNTklreWwwaC9VNzVoL2VXd2tXNXZCTDhxUzBGSi9NdzYza3dH?=
 =?utf-8?B?Z3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <29C840981340F74B8A7957E658592AAE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa5f8ccf-3198-4c49-f9b2-08dcc68f7aee
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 11:57:52.4380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wRFPQtjubhVuA2VevVXS9/H7qDHxltMBVHJvYITBL/ZlinVaeLayw9hXIYnEdbOrvWQL8M7Xwmq3Uvp4JExH8oiPR0fmuVK/20kxDHVbR5M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7438
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

T24gVHVlLCAyMDI0LTA4LTI3IGF0IDEzOjI5ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBP
biBUdWUsIDI3IEF1ZyAyMDI0LCBNYWFydGVuIExhbmtob3JzdAo+IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+ID4gSGV5LAo+ID4gCj4gPiBXZSBzaG91bGRuJ3Qg
aGF2ZSBjb2RlIGFjdGluZyBkaWZmZXJlbnRseSB3aGV0aGVyIG1vZGVzZXRzIGFyZQo+ID4gYWxs
b3dlZCwKPiA+IEkgdGhpbmsgSSdtIG1pc3Npbmcgc29tZSBjb250ZXh0IGhlcmU/Cj4gCj4gWWVh
aC4gU2luY2UgR09QIGlzIG1lbnRpb25lZCwgaXMgdGhpcyByZWFsbHkgYWJvdXQgc3RhdGUgcmVh
ZG91dAo+IGluc3RlYWQ/CgpXZSBhbHJlYWR5IGhhdmUgYnBwIGNvbmZpZ3VyZWQgYnkgR09QIGNv
cnJlY3RseSByZWFkLiBJIGRvbid0IHRoaW5rIHdlCndhbnQgdG8gc3RpY2sgaW50byB0aGF0IGFs
d2F5cz8KClRoZSBwYXRjaCBpcyB0YXJnZXRlZCBmb3IgY2FzZSB3aGVyZSB1c2Vyc3BhY2UgdGhp
bmtzIGNoYW5naW5nIHJlZnJlc2gKcmF0ZSB3aXRob3V0IG1vZGVzZXQgaXMgcG9zc2libGUgYXMg
cGFuZWwgc3VwcG9ydHMgVlJSLiBPdXIKY29tcHV0ZV9jb25maWcgZW5kcyB1cCB0byBmdWxsIG1v
ZGVzZXQgZHVlIHRvIGRpZmZlcmluZyBicHAgYW5kCnByZXZlbnRpbmcgY2hhbmdpbmcgcmVmcmVz
aCByYXRlIHVubGVzcyBmdWxsIG1vZGUgc2V0IGlzIGFsbG93ZWQuCgpCUiwKCkpvdW5pIEjDtmdh
bmRlcgoKPiAKPiBCUiwKPiBKYW5pLgo+IAo+IAo+ID4gCj4gPiBDaGVlcnMsCj4gPiB+TWFydGVu
Cj4gPiAKPiA+IERlbiAyMDI0LTA4LTI2IGtsLiAxMjo0MSwgc2tyZXYgSm91bmkgSMO2Z2FuZGVy
Ogo+ID4gPiBXZSBhcmUgY3VycmVudGx5IG9ic2VydmluZyBmYWlsdXJlIG9uIHJlZnJlc2ggcmF0
ZSBjaGFuZ2Ugb24gVlJSCj4gPiA+IHNldHVwIGlmCj4gPiA+IGZ1bGwgbW9kZXNldCBpcyBub3Qg
YWxsb3dlZC4gVGhpcyBpcyBjYXVzZWQgYnkgdGhlIG1pc21hdGNoIGluCj4gPiA+IGJwcAo+ID4g
PiBjb25maWd1cmVkIGJ5IEdPUCBhbmQgYnBwIHZhbHVlIGNhbGN1bGF0ZWQgYnkgb3VyIGRyaXZl
ci4KPiA+ID4gQ2hhbmdpbmcgYnBwIHRvCj4gPiA+IHZhbHVlIGNhbGN1bGF0ZWQgYnkgb3VyIGRy
aXZlciB3b3VsZCByZXF1aXJlIGZ1bGwgbW9kZSBzZXQuCj4gPiA+IAo+ID4gPiBXZSBkb24ndCBo
YXZlIG1lY2hhbmlzbSB0byBjb21tdW5pY2F0ZSBjdXJyZW50IGJwcCB0byB1c2Vyc3BhY2UgLQo+
ID4gPiA+Cj4gPiA+IFVzZXJzcGFjZSBjYW4ndCByZXF1ZXN0IHRvIHVzZSBjdXJyZW50IGJwcC4g
Q2hhbmdpbmcgYnBwIG1lYW5zCj4gPiA+IGZ1bGwKPiA+ID4gbW9kZXNldC4gVGhpcyBiZWNvbWVz
IGEgcHJvYmxlbSB3aGVuIHVzZXJzcGFjZSBoYXZlbid0IGFsbG93ZWQKPiA+ID4gZnVsbCBtb2Rl
Cj4gPiA+IHNldC4KPiA+ID4gCj4gPiA+IENvbXBsZXRlIHNvbHV0aW9uIGhlcmUgd291bGQgbWVh
biBhZGRpbmcgbWVjaGFuaXNtIHRvIGNvbW11bmljYXRlCj4gPiA+IGN1cnJlbnQKPiA+ID4gYnBw
IHRvIHVzZXJzcGFjZS4gVXNlciBzcGFjZSBzaG91bGQgdXNlIHRoaXMgYnBwIHRvIGF2b2lkCj4g
PiA+IGNoYW5naW5nIGJwcCBpZgo+ID4gPiBpdCB3YW50cyB0byBhdm9pZCBmdWxsIG1vZGUgc2V0
Lgo+ID4gPiAKPiA+ID4gVGFja2xlIHRoaXMgZm9yIG5vdyBpbiBvdXIgZHJpdmVyIGJ5IHVzaW5n
IGV4aXN0aW5nIGJwcCBpZiBmdWxsCj4gPiA+IG1vZGVzZXQgaXMKPiA+ID4gbm90IGFsbG93ZWQu
Cj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCAzMwo+ID4gPiArKysrKysrKysrKysrKy0tLS0tLQo+ID4g
PiDCoDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPiA+
ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCj4gPiA+IGluZGV4IDkwNDliOWExMjA5ZDguLjdiODA1OTk4YjI4MGEgMTAwNjQ0Cj4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4g
PiA+IEBAIC00Mzg1LDIxICs0Mzg1LDM0IEBAIGNvbXB1dGVfYmFzZWxpbmVfcGlwZV9icHAoc3Ry
dWN0Cj4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKQo+ID4gPiDCoHsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0KPiA+ID4gPmJhc2UuZGV2KTsKPiA+ID4gLcKg
wqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQo+ID4gPiAr
wqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2F0b21pY19nZXRfbmV3
X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwo+ID4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7
Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5lY3Rv
cl9zdGF0ZTsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGludCBicHAsIGk7Cj4gPiA+IMKgCj4gPiA+
IC3CoMKgwqDCoMKgwqDCoGlmICgoSVNfRzRYKGRldl9wcml2KSB8fCBJU19WQUxMRVlWSUVXKGRl
dl9wcml2KSB8fAo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgSVNfQ0hFUlJZVklFVyhkZXZf
cHJpdikpKQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnBwID0gMTAqMzsK
PiA+ID4gLcKgwqDCoMKgwqDCoMKgZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDUp
Cj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicHAgPSAxMiozOwo+ID4gPiAt
wqDCoMKgwqDCoMKgwqBlbHNlCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBi
cHAgPSA4KjM7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoC8qCj4gPiA+ICvCoMKgwqDCoMKgwqDCoCAq
IFRPRE86IFdlIGRvbid0IGhhdmUgbWVjaGFuaXNtIHRvIGNvbW11bmljYXRlIGN1cnJlbnQKPiA+
ID4gYnBwIHRvCj4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqIHVzZXJzcGFjZSAtPiBVc2Vyc3BhY2Ug
Y2FuJ3QgcmVxdWVzdCB0byB1c2UgY3VycmVudAo+ID4gPiBicHAuIENoYW5naW5nIGJwcAo+ID4g
PiArwqDCoMKgwqDCoMKgwqAgKiBtZWFucyBmdWxsIG1vZGVzZXQuIFRoaXMgYmVjb21lcyBhIHBy
b2JsZW0gd2hlbgo+ID4gPiB1c2Vyc3BhY2Ugd2FudHMgdG8KPiA+ID4gK8KgwqDCoMKgwqDCoMKg
ICogYXZvaWQgZnVsbCBtb2Rlc2V0LiBUYWNrbGUgdGhpcyBvbiBvdXIgZHJpdmVyIGJ5IHVzaW5n
Cj4gPiA+IGV4aXN0aW5nIGJwcAo+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiBpZiBmdWxsIG1vZGVz
ZXQgaXMgbm90IGFsbG93ZWQuCj4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqLwo+ID4gPiArwqDCoMKg
wqDCoMKgwqBpZiAoIXN0YXRlLT5iYXNlLmFsbG93X21vZGVzZXQpIHsKPiA+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJwcCA9IG9sZF9jcnRjX3N0YXRlLT5waXBlX2JwcDsKPiA+
ID4gK8KgwqDCoMKgwqDCoMKgfSBlbHNlIHsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGlmICgoSVNfRzRYKGRldl9wcml2KSB8fCBJU19WQUxMRVlWSUVXKGRldl9wcml2KQo+
ID4gPiB8fAo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSVNf
Q0hFUlJZVklFVyhkZXZfcHJpdikpKQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGJwcCA9IDEwICogMzsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA1KQo+ID4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJwcCA9IDEyICog
MzsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVsc2UKPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicHAgPSA4ICogMzsKPiA+
ID4gK8KgwqDCoMKgwqDCoMKgfQo+ID4gPiDCoAo+ID4gPiAtwqDCoMKgwqDCoMKgwqBjcnRjX3N0
YXRlLT5waXBlX2JwcCA9IGJwcDsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgbmV3X2NydGNfc3RhdGUt
PnBpcGVfYnBwID0gYnBwOwo+ID4gPiDCoAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgLyogQ2xhbXAg
ZGlzcGxheSBicHAgdG8gY29ubmVjdG9yIG1heCBicHAgKi8KPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oGZvcl9lYWNoX25ld19jb25uZWN0b3JfaW5fc3RhdGUoJnN0YXRlLT5iYXNlLCBjb25uZWN0b3Is
Cj4gPiA+IGNvbm5lY3Rvcl9zdGF0ZSwgaSkgewo+ID4gPiBAQCAtNDQwOCw3ICs0NDIxLDcgQEAg
Y29tcHV0ZV9iYXNlbGluZV9waXBlX2JwcChzdHJ1Y3QKPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoY29ubmVj
dG9yX3N0YXRlLT5jcnRjICE9ICZjcnRjLT5iYXNlKQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb250aW51ZTsKPiA+ID4gwqAKPiA+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IGNvbXB1dGVfc2lua19waXBlX2JwcChj
b25uZWN0b3Jfc3RhdGUsCj4gPiA+IGNydGNfc3RhdGUpOwo+ID4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0ID0gY29tcHV0ZV9zaW5rX3BpcGVfYnBwKGNvbm5lY3Rvcl9zdGF0
ZSwKPiA+ID4gbmV3X2NydGNfc3RhdGUpOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGlmIChyZXQpCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiByZXQ7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiAKPiAK
Cg==
