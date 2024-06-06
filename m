Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B928FEF88
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 970FF10E992;
	Thu,  6 Jun 2024 14:55:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JVS+L6vZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EEC710E992
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717685753; x=1749221753;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=30xtxoAgnUllnRROscg9YZ3XyGheUXyABEYsJn3Uaqg=;
 b=JVS+L6vZVRjUuV6rBH4fiiiEq/eu2mO3o/xth9V+oLv0ior/GmZnXrCr
 Nq7bOClu4iikD+mS4E+4aB+nBKOZ81Qyp4CFsvPzwm4hk58PB3dRFq1WK
 VZN5o9sAPR7ehUzQjYfDV5qxrvmiQbyjPcRnvsG0yRNy7SrSYGzxEL09t
 bUms6a1v965iqQnubUfpmlg1hFYRgLghhK690Pt4/ZsKo+FUF1YnRJkGe
 PH0zN+2UFQ4aUW1/3e+v6K8QdHW2yXmBSJHSpCz3J/APKxh99Zl56NkCu
 NFf9LWgB7DGhFWQNXiiT562210kqoRYXV3M/r5fCmr5X79qcmMWWynYmh A==;
X-CSE-ConnectionGUID: 9SmXMl9jQlObGmKUtsf1iw==
X-CSE-MsgGUID: eMsEa3mHRdSLXGNrKvkKfg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18205241"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18205241"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:55:53 -0700
X-CSE-ConnectionGUID: uQWkngi5TzSDpxQrMT9Ptg==
X-CSE-MsgGUID: RkSe2dAASQCjJIxclcZYdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37918575"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:55:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:55:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:55:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:55:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P2NkuPTHTkLMmIDv65Po5UkS3oDqP6AnIgBnWcU65AXgVNn3XeKW3KVZFFB0mHnwqubzjxUuh7ce9PMRTg3owIz2cwCe0g5dEvaOeWI4Ul6EW7I01XgblW/IJ4B623I+HsQpy7ujAsjhZo2mTlFiqDH4n61ALjth6N2UgQU2peZ+p5R29+UwXj5wx7h3WuT9tsGvQydLwbR8P1GIgr6PBYvhOLf3zdn7bpG4kdSV1doatsJGnR7AGF66NDHFr8Ju0xjkVVNkmvGFlVo4qIeGPmr9kA2JOPnxRax0Y8nw7ukPdRn3cD6c3C5A8pybh9ly0g9LaToSymN2B/syWC9O7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=30xtxoAgnUllnRROscg9YZ3XyGheUXyABEYsJn3Uaqg=;
 b=g7hvisaytWhNiMewJ1o4+pgKJAuuvZGGBbHVDgdpt+YOWSsxgsKiY5jv/rcELoWLpzQC7cNvpENjVHq0c09OMoF7PGJqYYKNkd/R8VccvjDWkToTXx9QDzgCE5T9aI2a67k+VelAl87Y47fYXYBh/RHYX31tL8wm1+N2BOxbtw6YfSSxN7kGuPY7GMF37r6Y7EzaIt9XdZrWNZKp4RXtf1TrYtZzQ99c70eR60fyrlp8Qysk0WFE7kUVVWELkJClQ2vokKmSzcIRL7XY1ZOI67XKB+dRy2i1+tW6RoQ252Q0INMT7efzoJJGG8X8w6Y0NuX6hoQvLjbX5ikAuEUD9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB7644.namprd11.prod.outlook.com (2603:10b6:510:26a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.22; Thu, 6 Jun
 2024 14:55:49 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 14:55:49 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 13/26] drm/i915/psr: Check vblank against IO buffer
 wake time on Lunarlake
Thread-Topic: [PATCH v6 13/26] drm/i915/psr: Check vblank against IO buffer
 wake time on Lunarlake
Thread-Index: AQHatzLmmI22gjF5ZUSSG1vgj2cPtrG6xSMQ
Date: Thu, 6 Jun 2024 14:55:49 +0000
Message-ID: <PH7PR11MB598102C14799D9449C345DF3F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-14-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-14-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB7644:EE_
x-ms-office365-filtering-correlation-id: cdcf0fb6-c8c8-40c6-1bf9-08dc8638c114
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?dUZ1M3phdDlEWEpBVSs5aWxGZENWRGY5eTRvQm5FeGNlQ1B1WmlPNTNvYlJF?=
 =?utf-8?B?SHFrV2dPQ283Mm80UEFsN2xmZ3JsTElyYnAwanVkT3JnWUdSTE1EeVEreWQ5?=
 =?utf-8?B?RTVTQStjbTZIR2JvdzVKYXg4SHQxTy9VdHZTRG1PbDVtMmlpZHVYRC85VFNP?=
 =?utf-8?B?SG03UnFCdFltUk8vYlptcVNPZk54TUpySU9YTWdQSHRBY2xiRlh0a0k0a3lN?=
 =?utf-8?B?ejNJbnd4Ty9Sa0Eycmw5aENNOEFRMkRqTmhJWHp2aDFMR0EyWSswcWUzeStv?=
 =?utf-8?B?Sit5M0VPYmlQRjQwSVB5L1JHNjlzc0lsOExqN1FYQlNTWmxZeE9VaUluTUVu?=
 =?utf-8?B?WDdzS2NQNWpPa3QyWlJtSnh5eElxbGhZMVNLMVZ2UWdDb2JrTFUwZnVXSjVT?=
 =?utf-8?B?UWRLVTVHLzBHcForMGRHZFErM09jUnpmckRiN25RbUpEYnpwZ05WM0M2aFNH?=
 =?utf-8?B?Wm9UeCt0cFpuRmcyRHl0eGp3amRjQVoyWTUwZnlJSUtpY3N2RWJ0TGMvd3Ri?=
 =?utf-8?B?UDN1d1dNeVNGcEVoRzRja1lsemRVSDVxNkdPMVhxTzlpUXhSWDkvcS9Vd2V3?=
 =?utf-8?B?UmpsbDg1MFpXWkJzeHBncWxFbUh6eGNUeWRBeSs2aUo2SVhlTnN1RHB2Sk84?=
 =?utf-8?B?cDgzdktOVVFKeUdiZVVQeEFLNFdRajNyL0VoQnd2ZlRoVjZ3QXVWcTNnY2Rw?=
 =?utf-8?B?YnZDT0x4eDZCWk9oaGdkcmlWYmU1NFFaelVabEtzQUhhQ1hqZktTNC9UN0Zp?=
 =?utf-8?B?L01XZ3R2UFQwMUt4MmV3dldjVTFlR2RSa1YyUXZXbVFmTGpoMVpJT0Vmd2JY?=
 =?utf-8?B?N2c0OHhnQ2t6SEprUWloNVhOQUorUkx3a2pKV2ZodXA5c0lNdlIwYjBjVElC?=
 =?utf-8?B?cnJuK3ZtOFJjbzZmME1lZ0VwQ1J5YzQ1cGl6aWtlYlZOVEIxTE82TkVER0Jm?=
 =?utf-8?B?YzFNS2NHNmVmVWlGbERBSFBIME05dGVFWjhucklxcTR4S3RuOTE4QVdMeU9C?=
 =?utf-8?B?UlFDa3RHazM2ZjZSWm5KdmJoN29nSkQyb3dPODVOdGRJY1VkY0FZbENyZlgx?=
 =?utf-8?B?a21Ja1RqYVFCcDFpQmhNRVBZZ3RTNTRlSG5icU5SU0ZSNytSRGtTWEt4SC9R?=
 =?utf-8?B?cThSYTZKL1dNNFgxQktaMFNEQi8wU0pIS1NaaUYwWlhQTHVEUEttazFUT21L?=
 =?utf-8?B?M3ZZOWZ0eGRneHVrN05rcHRDMGV3UUVibTZ6Rld1Nm5tTUJRZ1BBZGZ6b0Ry?=
 =?utf-8?B?bTFKVzYxY0ZXYVVPcklkYlZXWU1wTmlrTU4xOTNHWC9VQllpNnd2UXFVL3M5?=
 =?utf-8?B?aCtGSmRqUjRRNkhkK3pKbWpWTHFTVU12ZTNtb2xrMFlLWWJmVkJ4b1FsK0Fn?=
 =?utf-8?B?UzJlc2pKYUt3alB3Y293ZlBmZk9DREhtNys2S3hiUTF3cTN3ejJNWHhINkYr?=
 =?utf-8?B?bHhkUUdMOERzYko0WjU2NzR6QVZITXdkci9ia3NtNW1xbmhKWnJlRU9QOFdE?=
 =?utf-8?B?KysxVERwcFZqdDRqLy8xQzRUZW1aYmI3YXNPSEJhQ0V4cW5NV29wSjRKQU1Q?=
 =?utf-8?B?Unh0MzZma21LN2JxaGlGaXRHSjExMDlFVDJEelo2SUxnWnlJUzBmNno4TFFI?=
 =?utf-8?B?WlU1dXZNdEFLL1pUeE43YU82Z2M2WklnRk51Z2pxM0RINkFUNjZKS2w0WmFm?=
 =?utf-8?B?UTB3RVVCOWNFVEE2N1dONU5UUkI4TFNkSGlia0prRlViaXZtYVE2Z3JqakZy?=
 =?utf-8?B?OUV5TmtaTGRPSTRCWmlrTnBNYmh3QW9LTHNTbFFqRFlmbzI0MzJtRlgrRElw?=
 =?utf-8?Q?JeHmDu3DsmnJShA86wtpaRdd/semKb77lV6R4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bXFaNWl1UFpKT1lMZnVrOEt0emFVY0JVU1pna3BpY3lLdGU4ZlEzZUFqVklG?=
 =?utf-8?B?VVZERnp0R1lSUzN1LzIzejRhTWZKQ0dTa0F0K2FhVEtmK3Rwdm03TjRGcE12?=
 =?utf-8?B?a0FNakpyUk5UakNTVUtzN21USHZvN1BYdXAyZWhkUzI0czhFS0Q0b3dvTXlm?=
 =?utf-8?B?bEM1SGxZL0pUSW5tZ0Z5VTN4cXZYR3g4RW5kbWJLTTEvYWcxdllkTHlBbFM3?=
 =?utf-8?B?dGNmeEI5b0NWekdRbnJxa1VrTUc0ZUpJT2FMMW1JN0hGcVFqclpBV0NZSkF4?=
 =?utf-8?B?OUZSYjBUaUZmM3J4eU1pbW5yaGdsMDFBZVFJL2dOMFA3RkJQVXJ2bmI1RGxY?=
 =?utf-8?B?dnhtOUY3Tkd5cUtIRkoydXRlRXJVZEVLT3ZrYm43RGY0WXVlV2h4dkNqUWd2?=
 =?utf-8?B?UllEalNkbGJpNTdLcGtpakxEeloyWENOUmh2alVkWFJidGdMWHNMaU1Yd0Jw?=
 =?utf-8?B?YmpTTGJraUVDdHNFeGl6K2JQcTZ4cmZTejdsdjIrR0NwSXNpQXFaR242Y2Y0?=
 =?utf-8?B?cFVxNkhNVThsMEpuaCtpek9uNEh6bm5QQXhteVVhM3BULzVyd2lpcXZKVUZR?=
 =?utf-8?B?WVpFYUkwMWE3bGozYjFuMCtsNmZoaWs4MUZZSkVaWURqWXRMV0hGcUpSd29m?=
 =?utf-8?B?dzFqUVVnbFdiaXczbmFsZVZReTFjdDYyVFJpY1lMRUg5UmFBUnF5eVlMZ29E?=
 =?utf-8?B?d21jZEgyT2JJUDY5bmhzQmJVR1pXVCtUQW1VNVRnMVZQZTVDaWZYd1NiMXoz?=
 =?utf-8?B?cDV5MWYxb2w5NldBQU81TFZtc05wTFVyVThOWEtBcTBES21jWlRQdjA0MG10?=
 =?utf-8?B?TDN1Uy9RdlgrSTlSeHJsam53T3lCVHUvekFwSVhNR2dkV29YaldYSE9wTzM4?=
 =?utf-8?B?Z2RveUhMd2JuUlpEK1g2UDJvMjF3dHk3ejhSelZBb3dkWEJ6cldTb2pYdThj?=
 =?utf-8?B?aEhTR2VtTmJGTm56MkdBMmNrNitSRHo5WGt5R2ZFNU9heVdaVi9ldjcxWGlY?=
 =?utf-8?B?aHFEWC80NmlWbzBOZlpqNEg0MVY4bTFZdUJiR2FSNndMYUNiVWVhbjNVdTZl?=
 =?utf-8?B?Y0p4b0RjdUJWUUl3WmxjWjFsbmZQZnNOS2NNMXdpaUZScW5KcDRWSVRpSWZ2?=
 =?utf-8?B?VVJrM25KMHdiWHpXZ00zbEFZR3lMUnU4eGtsYnpDV0N0a3FOY3VweWZrTWUx?=
 =?utf-8?B?cmtOTWJUcHdEMURtVkNkKzhMYjYwQnBXcHgvVFFuYlZOQ0lBMkVod1NDTS81?=
 =?utf-8?B?NnIzU1FpT2o5U05nb1kzTGlxOFFwa2VvYXdlTUFBN0ZxODlSci9qelZmR0lZ?=
 =?utf-8?B?SUIxMEU0OGNwWGw0SVZJWWo5aC9VcWFJYUtXTTF0NTdkRnBDQ0RKYjVXdUhB?=
 =?utf-8?B?ZXE4UG13M0cwVXp1cHVhMWFlQXZUdTh3U2pscTc1UFRtSHBJOGEzWjNpWTdX?=
 =?utf-8?B?RUFRSlBlUzJhcncvbEZCOFpsY1Y4RkVHdGZKSUNSanl0MEJnWS81ZEFKY0o0?=
 =?utf-8?B?REE1em9NT0pITXlwL1ZLMzZYU1VTRmhKOGIzc3dBRVplbXBjSlFzbXQweS9C?=
 =?utf-8?B?T0FwTlQ1WmpnY3orOU1tcmwyT1R5YnFQSlh1MldnSkZjR3NRY2ppekNPQmd2?=
 =?utf-8?B?bkVTUEVuK2hkUkd5R2Z4bzVPSXd2Y1RGN0VsS2JLWWJ6ZERLZkJZOTFteWNG?=
 =?utf-8?B?MHpsTlRlM0ZMT1ltbVVsU1BnanpaSzF3dkI5MUhGUGg5L2NUendvVzZWTnFB?=
 =?utf-8?B?ZWpMTFRmb3IxTEtlOUVFNVdkTVV2ZS9EbU5zdzZudVBObEtmV0k4cXF0K1RT?=
 =?utf-8?B?eWhYaVFkeUs0RThGQ3RyeklqNjV6Y3RseE5BL1FydGhIRG8vV1FTRDZqYUxD?=
 =?utf-8?B?RWNjV09FVFlEd0YwS09SakFNZGlqL0x5SUFHUGYwcUNCVWZoZzU2VC85WjdT?=
 =?utf-8?B?WXZXMVAyaXRiSC8rMHRtanRESVQ5K2wxMzFsK2NIYllJekF2UFc2V015UVA0?=
 =?utf-8?B?UmRRbFFXc21KVUd0VC9Kb3EzYjVRTERmUTJONjVkUlhoa0F4b3RXckV1SHF4?=
 =?utf-8?B?eGpIN2FFUDdHNU1EODlvcGRjYXBHSzFaNktwMUlML1BMbW5vL1UyVVhodSs2?=
 =?utf-8?Q?03i9NhcBjJHjDs8gU3gVjPqOI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdcf0fb6-c8c8-40c6-1bf9-08dc8638c114
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 14:55:49.4791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /T5jcyRitGgMNXZ+YfNnntVzNtpbhNYXzZHGWAWLXxhm4gpRb43EuItJJolTYyyWzUYEHtRBy+WFQD1y9coV2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7644
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAxMy8yNl0gZHJtL2k5MTUvcHNyOiBD
aGVjayB2YmxhbmsgYWdhaW5zdCBJTyBidWZmZXIgd2FrZQ0KPiB0aW1lIG9uIEx1bmFybGFrZQ0K
PiANCj4gQXMgTHVuYXJsYWtlIGRvZXNuJ3QgaGF2ZSBibG9jayBjb3VudCBjb25maWd1cmF0aW9u
IHZibGFuayBzaG91bGQgYmUNCj4gY2hlY2tlZCBhZ2FpbnN0IElPIGJ1ZmZlciB3YWtlIHRpbWUu
DQo+IA0KPiBCc3BlYzogNjg5MjANCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5u
YSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNiArKysrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA0NzFiNjAwMzIzMDQuLmM5ZmNiMjUxODRl
ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBA
IC0xMjQ2LDkgKzEyNDYsMTMgQEAgc3RhdGljIGludCBpbnRlbF9wc3JfZW50cnlfc2V0dXBfZnJh
bWVzKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsICBzdGF0aWMgYm9vbCB2YmxhbmtfbGVu
Z3RoX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJCQkJY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpICB7DQo+ICsJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gIAlpbnQgdmJsYW5rID0gY3J0
Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZibGFua19lbmQgLQ0KPiAgCQljcnRjX3N0
YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmJsYW5rX3N0YXJ0Ow0KPiAtCWludCB3YWtlX2xp
bmVzID0gcHNyMl9ibG9ja19jb3VudF9saW5lcyhpbnRlbF9kcCk7DQo+ICsJaW50IHdha2VfbGlu
ZXM7DQo+ICsNCj4gKwl3YWtlX2xpbmVzID0gRElTUExBWV9WRVIoaTkxNSkgPCAyMCA/DQo+IHBz
cjJfYmxvY2tfY291bnRfbGluZXMoaW50ZWxfZHApIDoNCj4gKwkJaW50ZWxfZHAtPmFscG1fcGFy
YW1ldGVycy5pb193YWtlX2xpbmVzOw0KPiANCj4gIAlpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJf
c2RwX3ByaW9yX3NjYW5saW5lKQ0KPiAgCQl2YmxhbmsgLT0gMTsNCj4gLS0NCj4gMi4zNC4xDQoN
Cg==
