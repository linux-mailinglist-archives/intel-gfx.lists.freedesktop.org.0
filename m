Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6417A72E51
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 12:01:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 652D610E8C1;
	Thu, 27 Mar 2025 11:01:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c6bTE+tB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 230D610E31E;
 Thu, 27 Mar 2025 11:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743073265; x=1774609265;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6OQLGivBjE/ri9e/WWyeFYxlIE1Y6RoLY3by9AOSBqE=;
 b=c6bTE+tB3QceM2UN4XPUkPtkUgMBir9nYtYpMTiVcLpiIBBQb8A/BLGw
 Em7pIPKEcB0w1pSHwjs3b1WPgq2aTd0/FBVGaVzJPmTkxVhbmCEGhKpRC
 OMIyYYH1+DwdPi2aJFpfZEaOQqBr6rE2dGKoEPvU4uSWfVsK8eqOWBbk5
 8Oi1GOR8D6EykNamwlyUNrYjkSGooLbf8LAJxyNXalWoPoT500iz4TiJK
 s8HQDHYzZcVbVeHyCUANxcL6H757Vb2IBEkhsPTNO0m5A193yezknEY6Z
 NOS11dv5nPCPIIoN3ZDX/Relma4FmUSfNZNY01pCLCkdrQxMgEMYJNryU w==;
X-CSE-ConnectionGUID: xXol+cPsQyuFheZHk43FLw==
X-CSE-MsgGUID: 2heYNOkfQBy0BvCqkGyl1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44555665"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="44555665"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 04:00:58 -0700
X-CSE-ConnectionGUID: vymlW8nkS2qjXjsHTfXX3w==
X-CSE-MsgGUID: 5s6dOHpcQq6VrFUKG8Aqlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="148296083"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 04:00:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Mar 2025 04:00:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 04:00:57 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 04:00:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fRqU1rGiCuSb69veZHWdsPU/AkstUVwJ5fUy7X3Znf2RiFRKaR9TnSeOQzx1tNWWSSJKHcu6EE1VrCyOToDy+mSnx3gJI7bOGWn7Y4EJLD53rHVRrobOpJTC9g6j7KmfDw9JpVkXzlgcMc151DS+y37+hdaxK8h/xmZ7tq8LQKC0dPYnpJOgX20T1S/p/S+lS0P6rdMtIvhLYVx+nuApb90i7ig8yFhZ2vH2nDzgAY+TMF674rwoBVWr10MWJq144pzAvZ6Nc/mJndI09VDnBiFbFSJZkyIs5+saFsGxo31o7Huen6I/UQTJDDw6fS/903aYBSh8/dl8lMtW5yQQEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6OQLGivBjE/ri9e/WWyeFYxlIE1Y6RoLY3by9AOSBqE=;
 b=uA+N177Jpp+nkf58MXIkq6Fg3AU02nBwJDt+y3xrg0HHyYhIkAWnmlQQQmVDpknR1gbmW2eM43mA3y1XoWapI/LEZAUr762d7iVfN6+06AYYnk6r1tASLBbiKMGbZ7IZIka8Wc/fDQkPDm3aFNatvQljGbK7dvW4iyTvgI2XQQ7CbN6GD/rZh3Rm7V2VIcVizyXDlnWYK82lJfpDb0SPi2C/rSk9nZH1fdDxyglUZbJKUdcB/fOuA1FQ5q35iEgSB3Lt7JUv71VH1NSRlKuvUP3vo+Mt9UEPmijTgXomBjkyJX4EfeyKQvAEXB+d3Fv/X2wiDnYHDeNCXdPcYPONnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7924.namprd11.prod.outlook.com (2603:10b6:930:7a::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.44; Thu, 27 Mar 2025 11:00:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 11:00:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v6 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v6 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbmQZnNs76utJ0xEyc4mL6OI3lt7OB9QgAgATjNACAAASqgA==
Date: Thu, 27 Mar 2025 11:00:41 +0000
Message-ID: <d6259af76c4c20f54a72908f7d0c5bd406e070eb.camel@intel.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-5-animesh.manna@intel.com>
 <f5092028624c49bb3aa710b86b95ed890b944091.camel@intel.com>
 <MW4SPRMB005674D7F917AB6187A44156F9A12@MW4SPRMB0056.namprd11.prod.outlook.com>
In-Reply-To: <MW4SPRMB005674D7F917AB6187A44156F9A12@MW4SPRMB0056.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7924:EE_
x-ms-office365-filtering-correlation-id: 0c7e6424-f6ac-4ba4-0fdb-08dd6d1e9d39
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?Z2Q5RmRIVDVZSEdBSXZ0ZEFUOUF0djg4RXlQU3NBTU9tWTNhZ3J5S1lwWmJD?=
 =?utf-8?B?L215bVRUcXZRV0I4OHVyRTIyRHloLzlJS000U2JHVjduUFlDZEtsUTFKRVU3?=
 =?utf-8?B?L1dtWGtta3krd3h0QkswTWE4eGdZa0FKQk1saHNIZ1FYaFZ5b0xsdVhuOGZk?=
 =?utf-8?B?cnJSRlZvcGI3Rll2YVR6VHh0WlNlWG1tMDZLSWpPVWt1Y0ZjQWNUb01rVHlS?=
 =?utf-8?B?NFMvWEFjbS9hSktDZEVuVllna3Z4REFSbTBCeHNZWUtPa3Z6TVZSYU9CenBJ?=
 =?utf-8?B?dnZQMFl2RC8rKzFYaDVZdUhET3FSTi8vdVpKc0gwOVVDdDQ2clRtUWtLRitS?=
 =?utf-8?B?YVBvOG5ubmdLRU1Qc3hFb01iODhxQnRrOTdEUEttaHhCcTRPaUVveVoza3oy?=
 =?utf-8?B?N1QyMVZDWGx3L0RqaCtRMGZOODJtejE4bzd1a3ljRjdiVjFEc0dWcG9vRk56?=
 =?utf-8?B?UVlKQ01LbndISlllV2RiQWxPRE54K2xIeUtzN1N3Uk9lZnRwdTRzWUphQkFV?=
 =?utf-8?B?OStPTFByNE5NdUQ4OE9HUUdGN2Q2Z1hTbVlFRTBZNlpkbmpuN08zQ2NjKzdp?=
 =?utf-8?B?UE1EeUNyMEZGOXE3cWxPVlJPY0FHaXp1U2tNMEJGVHp2bHJudU5VTFhBR2Np?=
 =?utf-8?B?cy9FQXhSQ0JONWV3ZWdPbGlOeXpwNFo4aCtBeTQ5N2FtMHdJOEpKVm9BZVcr?=
 =?utf-8?B?YXJHOEp0VVFQcEVFSmN1Wk5LcjdPL3VMKzl0S3N1Qnp5Qjk3WDZlZU9VZkxS?=
 =?utf-8?B?T0lhZlZDK2NuejZ4S2M5RWpCTml0bVNXTE9yZmtsRWpSdjEwbk9TZGp4Tnhi?=
 =?utf-8?B?cStoelF2SFhXR3Z2eCtGdkJWWWNaeFNRTmg1VU0zZmx2ZFc1eElFMjJKdDBp?=
 =?utf-8?B?MlNtMHNrQk0vSEdybGQ2bTN1dHdXcDdQZTZOcUNPWERCanp1S2RxRk1jUkgy?=
 =?utf-8?B?cTVEMXdBQXRPelJaS2cxMUIvYzNTOUZNSldqSGhCSFNINVBtT1k4akRKS1Fj?=
 =?utf-8?B?UFZuV05uVS8xaXBFZkNnd3RBdDNTcDVxTlZmS2RqZkJqMFFMVExSeDJPVnha?=
 =?utf-8?B?RHpsUFFndDczT3plTnJ5eUJSM3A4SDQwejB5L1JWbEZJMnpRMnlySlcrejcz?=
 =?utf-8?B?dk5VbkRNQWNaeE1lMytrUGU1VTlrMFlEQjl3aEhIRy81NkhzczFVcDBVbkRm?=
 =?utf-8?B?N1ZCSXk1aVlFN2tMRDRrYlJNcUphK1hMbXNqNkNVUFNSVC9JUU10SFJYUHNr?=
 =?utf-8?B?STk5dEJZZHlYZWc0QjJYdjlaVElvQ1ljWEpjSnZMK09rc3pScVNzUHdXeWFi?=
 =?utf-8?B?S25XRE9sc2FLNGxoellOOTZETStFMmE5SW5vdDRveXIwOHMzQjdtSFdyZmNt?=
 =?utf-8?B?MnBJbXdQOE02d0pCWWx3N0VEN2V2WTBQYVFzVDRSNW1NR2l0Z1NHTGw0TzRl?=
 =?utf-8?B?TXN6RUFnNDhpTGMySUJ3NTYvM1VCQ1hyK1ZOcFo3YnFtNGJ3amhacDQ4dW9Y?=
 =?utf-8?B?Yk9mVEZyRnlnS2FhTHJhcjhBTzlNNTJlWE1oZFlSNmliNHVjOE0vTEZ0RzM2?=
 =?utf-8?B?M1ZYRGVFbFIrKzQ0R3doOW00YzMyVTBhQVFveXluM0Y5TEVabDM0SnUxdlFn?=
 =?utf-8?B?Rmw5YmtmUXJ4UjJ2ci9CRHBCZTRZWThYZWxrUXV6aXl0SEd4bUNlemYvdnIy?=
 =?utf-8?B?ZXBwMEh0Z0lyWUZyempVRjM4VEozQmdKT3ZMS1RkSmJlU0RaNnRhUjk2NFRw?=
 =?utf-8?B?M2JvU3p4dlhEQjZjbHFFQ2ZYdTQ0REg4azR4Y2VnK0FYdXZiSkhTclFEM2FI?=
 =?utf-8?B?VXlSNm9Rc2lxRFdYQS9JUytJbjdjWWtFWHp2VlBPMjUxUTgzWUJUNTN2VW1H?=
 =?utf-8?B?SG1seWthMm4zWFVhL252VWMzRlZoQXk0Vjc4ZWJLeDlSVFRtTjgwS3U3aHBD?=
 =?utf-8?Q?pkaS0FW+KJuseWscjmFHt3hl6T7XBUfU?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T09XbVFXWGVTN1puN0VjTzgzdWowOFZBaGwwK3JoVk9EM3NOV3ErRUo5cldl?=
 =?utf-8?B?ZXQycUgvSkorZUZKSkM3SlVoSjdSNlN1Z3VPcVEvaVlDUm9xTjNHL1ZtM0ll?=
 =?utf-8?B?QTVLS25FZkhCV0VqcEN2TTkvdFdwbG1uR0NBazNYL1RjTTFSbzRoTUZOL1Bv?=
 =?utf-8?B?S0loUlNudXhNRHlMVEI2dVdXRWk4V3pMUmQzTFdFY0hoMG5VU3RsZkMvdnND?=
 =?utf-8?B?SUgwdjArWjhzUGpkV1lTYTgwVnBhZDRhcHorRVFMT3JObTRibjVWSm1wUzB4?=
 =?utf-8?B?aVJtMmVxeEdBU1Q5R1QxOG1kRjVaTGlWb2tTM1NlQzlsMFhuQ3dyTHpvL2dk?=
 =?utf-8?B?VXVDVGswN1p2eHVna0JMN3hRdXY4V2xzWnB3QURFamh0aUJnSjZPZTFrRUNh?=
 =?utf-8?B?aGV0czJVb3VtN3doU1ZkVVlQQXVxTjhnOThUT201aEFsTXpaMXVKMEtlWW1u?=
 =?utf-8?B?elR0YkRhSXJYRTN4bkE5M2M2WE9BWDZDcGxtMFBnaDAyck9BdzFNNmc2UTJy?=
 =?utf-8?B?ckpoNnJmRFhoK2ViZGpqVGYyRmVCdVR3bnRUaGFxbXppOTNJZnNJSEw4ZGs5?=
 =?utf-8?B?c3BVUG1tSG95SmpJYTh2eU05aDdQTi8vbHpZOE1tbERqWHdoeldwdVZSNWth?=
 =?utf-8?B?OGRZUTRGdVNSdTJuKzRHUHZkK1dBeEd5ZG0zeFJJZHRhT0kwdTdRTTRjTWdo?=
 =?utf-8?B?Rnd1VE5Wc0tMdUlqVXRTeWNSOWFTSWJwUnl3ZUpaV2tGMXptY3J6Q3hnMjJx?=
 =?utf-8?B?V1gyL2dkMklJcFhSRjZhRzhyNHdSZGxuWllTdWQwcERmYXQrYU9JM2JHRGN5?=
 =?utf-8?B?d0c3WUZNOU91TzhuYnpJcUpEam1ubGdVcXRPdFp6VDlvNXJLWWRDWmJsZEk1?=
 =?utf-8?B?VHBFaXczY3pucnk3YlE5YzZnajBSQXRTZjZsSlozYWRzazBsZlZOTC92SGJN?=
 =?utf-8?B?UDhQM2tsYkRpdW45SmY2cC94SGtXemg0QkZONFdhWXZ5Q0JXWnQyTHg0UWk0?=
 =?utf-8?B?d3hkQTVicVlnME1HYlZ6ODBCc2JxdWVVWFlnNmtDRzBQaGFVOHdtdEhKUzMw?=
 =?utf-8?B?a2JjWWxtZEp5blJMSXR1Y05WZEhYdGlLaGtjcjJ5TFBlanpPcUVEV29rUStX?=
 =?utf-8?B?MDJMYVhBQmpuK2hBWVA2c05LTy9mSVlGNWRWajdYZ1J6NXUvK2Jyc0FTS09Y?=
 =?utf-8?B?MGZNbUhOT2d6UlQ3cnZUVTluNGF6c1Q4TC9EMjNjcHlwL1pOelJuZVZSSUVJ?=
 =?utf-8?B?dVBxanJmdllNRnAzNEpXSHc0QWVSaEZNTnhqRk51bzdSSzZkeDN3aGJwYWZN?=
 =?utf-8?B?SEhLaUNFMmpuRTNRNHAvcGNFbVJjTnRlSVdIazM1UHA2Tm1KVDl3azU0enNK?=
 =?utf-8?B?ZnQyUk1vNlIweW5teE5sSm0vcnFReGJiU3pHMWczQVBjV3hmWWdOcWJTZEY2?=
 =?utf-8?B?aUtPbStaNmJkOGZFd3pVMVorWDIweGFnaUYxblpQSFRlRXdsYlgvL2E4N0x3?=
 =?utf-8?B?UlFHRzJLOHo5NDNUSk1hZVZzMFROOU1GQ3c4M2NHVW5GdGdBZ0s4a2ZBZDR5?=
 =?utf-8?B?MWhoWnUxNkNMTERCZFB3YzFKSSt2empKSEVaY0J4bGJWMUhid213NGJBbVFK?=
 =?utf-8?B?Rm84NThCM2RCTjQ5SWFSN2FmWHlFVGFzVXBMV3c2NjFveEFKWGNJU1hta2J5?=
 =?utf-8?B?MTBJS3lITXdFOFdUYnUyS2VyRU9LTlNRV0dDbGRyN3Y2S3FTVERZTm1FNzEx?=
 =?utf-8?B?Z2M5RlgzV0R1cFFTenFNL2FkNWIvVXVJYmtvNkhxUU1wQVIwNkFkUDZDeFVx?=
 =?utf-8?B?TjUyQy9ROXE2Qml5QzVibzZKbGJTUXVGejFLM0lEZ3ZjZjc1R0hNYWY2SFpC?=
 =?utf-8?B?UkdMWlZQVUQ0RGt5L3pzaVl1VkpUZGUrN2V3UDQvVElCYkQrWGlWYlRaMlMr?=
 =?utf-8?B?WjJ1M0NUMlhaS3ZnWVRrZTdkbC9TMGtndHJHYWdTVHRteWZtY1BWcVpEcS9i?=
 =?utf-8?B?S3U3emRjZUNoZXJ5d2gwOWNYVGhXQ1NOcENhZTNkNTlGVDR5WGVCWjRFOXpU?=
 =?utf-8?B?RTdVQWRzVGNLMXViR1RJUXRTanowMmtKdHEvNnhZZ0krTGFKUk1rNUtSSCtu?=
 =?utf-8?B?NzBGbFMvdnNNOE5iMDFROGwxczYzRW5iTmdmTHUrdnp0Z0Z5cy9WTmh1RDB1?=
 =?utf-8?B?OXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <143BB8300A643346981CCBA1B4EF8520@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c7e6424-f6ac-4ba4-0fdb-08dd6d1e9d39
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 11:00:41.0204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cA3mrdfwf/MbpzNV1l7vIwX6kZ3EP45MM77knVpruT/R6jR4zWlMBHdbcXfkvNNONbnNVHU6nkeXGo3La2sLJM2Oxjdqpk8DxRnx9aHwMM4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7924
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

T24gVGh1LCAyMDI1LTAzLTI3IGF0IDEwOjQzICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogTW9uZGF5LCBN
YXJjaCAyNCwgMjAyNSAxOjM2IFBNDQo+ID4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgTWFubmEsIEFuaW1lc2gNCj4gPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPjsgQiwgSmVldmFuDQo+ID4gPGplZXZhbi5iQGludGVsLmNvbT4NCj4g
PiBTdWJqZWN0OiBSZTogW1BBVENIIHY2IDQvOF0gZHJtL2k5MTUvbG9iZjogVXBkYXRlIGxvYmYg
aWYgYW55DQo+ID4gY2hhbmdlIGluDQo+ID4gZGVwZW5kZW50IHBhcmFtZXRlcnMNCj4gPiANCj4g
PiBPbiBUaHUsIDIwMjUtMDMtMjAgYXQgMDA6NDUgKzA1MzAsIEFuaW1lc2ggTWFubmEgd3JvdGU6
DQo+ID4gPiBGb3IgZXZlcnkgY29tbWl0IHRoZSBkZXBlbmRlbnQgY29uZGl0aW9uIGZvciBMT0JG
IGlzIGNoZWNrZWQgYW5kDQo+ID4gPiBhY2NvcmRpbmdseSB1cGRhdGUgaGFzX2xvYmYgZmxhZyB3
aGljaCB3aWxsIGJlIHVzZWQgdG8gdXBkYXRlIHRoZQ0KPiA+ID4gQUxQTV9DVEwgcmVnaXN0ZXIg
ZHVyaW5nIGNvbW1pdC4NCj4gPiA+IA0KPiA+ID4gdjE6IEluaXRpYWwgdmVyc2lvbi4NCj4gPiA+
IHYyOiBBdm9pZCByZWFkaW5nIGgvdyByZWdpc3RlciB3aXRob3V0IGhhc19sb2JmIGNoZWNrLiBb
SmFuaV0NCj4gPiA+IHYzOiBVcGRhdGUgTE9CRiBpbiBwb3N0IHBsYW5lIHVwZGF0ZSBpbnN0ZWFk
IG9mIHNlcGFyYXRlDQo+ID4gPiBmdW5jdGlvbi4NCj4gPiA+IFtKb3VuaV0NCj4gPiA+IA0KPiA+
ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
bHBtLmMgfCA1ICsrKystDQo+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gPiBpbmRleCBjMjg2Mjg4ODQ2NmYuLjVkZjEyNTNh
NmI2YyAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uYw0KPiA+ID4gQEAgLTM3OCw5ICszNzgsMTIgQEAgdm9pZCBpbnRlbF9hbHBtX3Bvc3Rf
cGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
PiA+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShz
dGF0ZSk7DQo+ID4gPiDCoAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSA9DQo+ID4gPiDCoAkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0
Yyk7DQo+ID4gPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0
ZSA9DQo+ID4gPiArCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRj
KTsNCj4gPiA+IMKgCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiA+ID4gDQo+ID4g
PiAtCWlmICghY3J0Y19zdGF0ZS0+aGFzX2xvYmYgJiYgIWNydGNfc3RhdGUtPmhhc19wc3IpDQo+
ID4gPiArCWlmICghY3J0Y19zdGF0ZS0+aGFzX2xvYmYgJiYgIWNydGNfc3RhdGUtPmhhc19wc3Ig
JiYNCj4gPiA+ICsJwqDCoMKgICFvbGRfY3J0Y19zdGF0ZS0+aGFzX2xvYmYpDQo+ID4gDQo+ID4g
SSBkb24ndCByZWFsbHkgdW5kZXJzdGFuZCB0aGlzIGNoYW5nZT8gV2hlcmUgbG9iZiBpcyBkaXNh
YmxlZCB3aGVuDQo+ID4gaGFzX2xvYmYNCj4gPiBpcyBmYWxzZT8NCj4gDQo+IFdoZW4gY3J0Y19z
dGF0ZS0+aGFzX2xvYmYgPSBmYWxzZSBhbmQgb2xkX2NydGNfc3RhdGUtPmhhc19sb2JmID0NCj4g
dHJ1ZSwNCj4gdGhlbiAoIWNydGNfc3RhdGUtPmhhc19sb2JmICYmICFjcnRjX3N0YXRlLT5oYXNf
cHNyICYmDQo+ICFvbGRfY3J0Y19zdGF0ZS0+aGFzX2xvYmYpID0gZmFsc2UsIHNvIHJldHVybiB3
aWxsIG5vdCBoYXBwZW4uDQoNCk9rLCBJIHNlZS4gSG93IGFib3V0IGNydGNfc3RhdGUtPmhhc19s
b2JmID0gdHJ1ZSBhbmQgb2xkX2NydGNfc3RhdGUtDQo+aGFzX2xvYmYgPSB0cnVlLiBEbyB5b3Ug
c3RpbGwgd2FudCB0byBjb25maWd1cmUgaXQ/IEhvdyBhYm91dA0KY3J0Y19zdGF0ZS0+aGFzX2xv
YmYgIT0gb2xkX2NydGNfc3RhdGUtPmhhc19sb2JmPw0KDQo+IE5leHQgbG5sX2FscG1fY29uZmln
dXJlKCkgd2lsbCBwcm9ncmFtIG90aGVyIGF1eC13YWtlL2F1eC1sZXNzIGFscG0NCj4gcmVsYXRl
ZCBiaXRzIGV4Y2VwdCBsb2JmLWVuYWJsZS4gRG8geW91IHNlZSBhbnkgaXNzdWUgaGVyZT8NCg0K
SSB0aGluayBpdCBzaG91bGQgYmUuIFRoYW5rIHlvdSBmb3IgdGhlIGNsYXJpZmljYXRpb24uDQoN
CkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gUmVnYXJkcywNCj4gQW5pbWVzaA0KPiA+
IA0KPiA+IEJSLA0KPiA+IA0KPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+ID4gwqAJCXJldHVybjsN
Cj4gPiA+IA0KPiA+ID4gwqAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrKGRpc3BsYXktPmRy
bSwgZW5jb2RlciwNCj4gDQoNCg==
