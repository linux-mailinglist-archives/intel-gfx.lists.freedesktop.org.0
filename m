Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6703B9AE2F8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF49610E8F7;
	Thu, 24 Oct 2024 10:47:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KNtrKa1Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E9610E8F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 10:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729766845; x=1761302845;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ykTdoEvE1krAOGlipYh6oCtQ+ARWi3M/7eNYcl/gftg=;
 b=KNtrKa1Z7g67hpnApbQoGwQBqWkZPD3lT1Zl1YEuJGmrA0CQ/AohGaP/
 McEvoOQFiGDLXXUXsddbxshMATGLbxiAT2u+ejPWW+2Srp84neyHMsrZo
 9thG7N2kqZJ7mXzIsttT6L8Lw7HTiM2GbTs4Uk5i6eeYri9djPuZdUj/u
 E5n1WCuhqL/vvJDbDY3IAUR2I/RxPoqhlkR0kFOtSxCWG2rrWHxOJLKl7
 KiQLwVhvT1secZd+GwwIXuIrqRpb3rZm/jtbmuNf7/OiW0NDNz9txVImk
 npIbAuMsRyQllFhzNfBrGJgL/fjpQ5SvmXH7pwWlNpoO7rNjbjfXHRtfz w==;
X-CSE-ConnectionGUID: YFHljweaTOqKoodU7nrEuA==
X-CSE-MsgGUID: D8zib1a7RxCJvOpQqJ6p8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="46880095"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="46880095"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:47:25 -0700
X-CSE-ConnectionGUID: aYkbOARGTJ6I0PtAdc1TTQ==
X-CSE-MsgGUID: yHHCGm9yT8mbq5ZcmzA+5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="103871635"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 03:47:25 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 03:47:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 03:47:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 03:47:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n1k0Xox8ErGmWv0iuPMuDzOforJNfbjl8keLozBVlCqJpCwYKqWstO3/iUKU9Vr3oRkNfE9mChZ7Oms9C262h6+vpt/OJ/JHf5FerOOztJIAsHAVepyx5PlzCvSXrY5mlYRMb8vsGnbmrKj1OhM7KnuVJcq+K0NHx/ElRPRPqIok2izJu5o9yC62xvtXuI2erWsku9L/RvDrZzZohDSQMhIyYqC5EE+mXcEnqvbq1tO/SCG/9hZA8lI8i3jWYBe7aDMANrzuxBr7kXvIbPmRPLjXihR5fjGQuFWlqeOGHlgrXlKYYTGGMxyoeBPv4CLyLbnOYasDecYF2RyPy1aWfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ykTdoEvE1krAOGlipYh6oCtQ+ARWi3M/7eNYcl/gftg=;
 b=bqF/Qi8+rat+ozTZzf7TdmNo0GwsWg73J9222L54S4fSJNHEwXk9Aj077O8c8M+pHTjQzgQ6Cigcx+UdgVIuLdTiyN0mW2uMOYdMLbzjLm7Ba9CYYYMtntr2JmfGu4lHQ7ns09jczrA4goVFm6khkxp/oVQG4Qc+4EFHKrNZoCwmAOMwRDxmDC9W4JN4j0k4nHNJUtyGp7DJrL56NlAOGr/K18zAkZlOgVafNv1lb4BOHcYVglFN30BY3QSFzsEQosnMIKz4l7ZYCW/JobH7Bf+EMXoHxdvh4MsPmyYze/yNJkYrOhe6Mh4iFuZlKHOWbeiBWCeJOTpnDU7f1VeVJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6193.namprd11.prod.outlook.com (2603:10b6:208:3eb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Thu, 24 Oct
 2024 10:47:21 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 10:47:21 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 5/9] drm/i915: Reuse vlv_primary_min_alignment() for
 sprites as well
Thread-Topic: [PATCH 5/9] drm/i915: Reuse vlv_primary_min_alignment() for
 sprites as well
Thread-Index: AQHbGng+pIp312WajE2f4tTt2kdGDLKVz0IA
Date: Thu, 24 Oct 2024 10:47:21 +0000
Message-ID: <cb5ca374ec3683191c7ea047a6fb8164a8205b6b.camel@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20241009182207.22900-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6193:EE_
x-ms-office365-filtering-correlation-id: 9c082667-2a54-40ff-8e7d-08dcf4193ce8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NDRKVGtBVXZVcUtCWk1RM3lsUXd0d3NaRkhqZStNclZ2cUp1ZzBtbU1WRnNB?=
 =?utf-8?B?UmRVTjVad0p2NWpPRW5oUTFOSWl6UGZML2dmMzRnYitMRUc3L0RJUnlqdnlO?=
 =?utf-8?B?dlRxZi9tMlptRTFqc2c2aXVlSEFoZm1IVkphclVrWU9GUFRQMGliZUlhdFFl?=
 =?utf-8?B?UHRDMEpmWU8raXlSYVU4akE5cjEvaFEyc2hidEFrdnBJbjlyQmdnRS8rMThG?=
 =?utf-8?B?NmozNXVqWmV1a1V0NUI0R0YwMVpLaWxnalhyL29xeG5ROFFiWXZ3SkJtMW0w?=
 =?utf-8?B?TXM2VFQ3KzlqaG1aVmI5WWQ2U3RRbnIveG9lZi9PVXFWai8zTnJmbSttUFFZ?=
 =?utf-8?B?b0FGY3U1dVIrenVBenZkN3BHYnVXRzFTbFU0SVpEZXFQYm5xSEl6dTh2YW1Q?=
 =?utf-8?B?REhyOEFFS0JtZU5nZXhSOTYyMmhlUkk5KzNlMFI0ZElQVTJsM21OOWNKS0dD?=
 =?utf-8?B?aGxLWm5SNFEySVlnRkx3cVk3WlY0OUxQRDB6ZDYwRDRFZFR0WFFjMHdmRmNY?=
 =?utf-8?B?cXpKZUZRc2NmcmY1LzQzTEFyOTZMMVRtNnBSYk1FV29oOThjNEsvV0grK2xs?=
 =?utf-8?B?RXUxMHZiK09xQUQzOVJIMklzMTF0WTRrazQrNTlSZ0J0Vm9FTHV0ZjZTeXhI?=
 =?utf-8?B?WmVJVndpOU1pY3lCUURvQ0tLVjlZYWNwd2kwUEdsUk94bEtaZENHVktPMU9k?=
 =?utf-8?B?M016UnZjaHozVkN3TGlYUnIvMFlFY1JOSFczL0FmM2U0WTBod25ZRnJSbjVi?=
 =?utf-8?B?cnNQUnVFTzVhL3BVQ3hTWTNIOXQvbURQb1ljcmNvY3dQUFhBVjhlWEt3N2dU?=
 =?utf-8?B?enZHR2hFL0wybktuc0VSNm0xeVdoWVEvQmxIb2g0TTYvSXpCdXFvZ2NTV3Jh?=
 =?utf-8?B?MjhWVEN5amVrMFcvQWlvWlljZ0E2TVhnR0dhUENISFhaOHhLUlRIQnp5NjVa?=
 =?utf-8?B?dVIrTHJ5TFpLRFBrY29tUnltRHg3ZExUZGJIbkpWYXRwY3NWSWxaTDVSWGcw?=
 =?utf-8?B?S1hKQWRKQWI3Rnl2SHRFeXRubisxSjVZT2dXOWV3cUhCamtqV2FWaTA1MUhw?=
 =?utf-8?B?eldKOE15cFJuYm8rUnhIUTlZOXMvMGR4MWtDMVdCZ1ZqUzE2bi9hNHVsR0pH?=
 =?utf-8?B?NkpZYjM2d2ZLOFlsdEJJN3ZiZVdaT3VPYkVuNnNRMTNDRjRCNTNVbE43T25F?=
 =?utf-8?B?UFdRWldMSXJRUFJQR2psREFkdWtvYytoaFVJbk43SXFPUUhQbFFhU2VERTRh?=
 =?utf-8?B?cnZSQ0tCbjhGbG9tQzlVeFRrTHljSjNkNnVRWmxURk9WSVNRUEhtWi8wcG9C?=
 =?utf-8?B?YWZ5VUtJSHNGbUhraDNhT0xKNE1QLzhJZlhybWRvY1QvcWdyeU96N29mZWZZ?=
 =?utf-8?B?YVUvRDZ3ODZzUDlPSTQ5TTQ1c2JWdHArM3g3U2k2N1JXaFU2KzJUUkZicWt1?=
 =?utf-8?B?WE5MR0dOMEowMzFiQVlPWStoZVlaSEw2UzVsdzFEN1JUZDNTQ1gwVm9nZVd0?=
 =?utf-8?B?SWlSN25yNTZoQmRvT1dDZkNQOEk0UXMyUTV4Y2FxejdVRW9oV0MxaThKTEVU?=
 =?utf-8?B?OHg5QmNOVFNsODlVK09GY1kxSURrZlpVVXFOZFhKZENybGlSVy95U2ZpSU1k?=
 =?utf-8?B?N29kcDRzbE5sck1QdWNjY0ZUZ3hwUHo3ZGlSS2QxV25JbW0zc2FqVSsrck1x?=
 =?utf-8?B?dnV0R2NJY0xuVEx0ajZhZUtjQlZzV2NFZXpEWk45OGxrbkZEVDN6WDRzTFNK?=
 =?utf-8?B?Z3JIUUhiNFJ5aGhTVXdxOXVkR2dPbVRPaDdNSGp3dlM5ay9hMVBodXl4S084?=
 =?utf-8?Q?l1T0QgFDNWh8MRyV2+ChFxNePypYSTxDTjRAw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXNvK0xrQ1NUaWdHRk5QTytrTXh1RDJ1bWVRWWh4VjVWdmorUUdoZ1kwK0s2?=
 =?utf-8?B?U1NDOUkxWi8xZXNRdUZTdDNKelc0bFcyek9CeS9mblBneXAzWUNVRUxNSjdn?=
 =?utf-8?B?OGtGaGpHQ3FFMHZEWnJReFkwRFo2a3RTWkN0WW5ZSWdJQlFZRHhudUUzR2F6?=
 =?utf-8?B?M2QwR2lOTUJhL29sZ0ppYm5yZmZWcGZ4UjJQNmtES1J2NzhIVllTMFQ5Q3l1?=
 =?utf-8?B?aTBWMmtTMGJyTTRFVTJZd216aGttVFNlKzN2OVUxRHJSdllTRlBvMTFPc2w0?=
 =?utf-8?B?bHZvRUxVSFYyL2ZCYVE5S0J5WXg2em9xMWtnYW9DQkl0M0g5TzNRSjJpQmRp?=
 =?utf-8?B?WEhac2VMR2g0cXR5bW9oS1hlSXBQQmJSdWFBVGw2UXVpMlZTTENXbnFxejQx?=
 =?utf-8?B?ci9OOExMa3lFN21vSXhqRTFvd2pOeDRlMWw4UGVmaWt5emNKRUN3c3VVSEdW?=
 =?utf-8?B?Tm90UDBUd1RSQWJ0K1ZpVjRzTy9IYm12ZVFCRVFiM0ZMNFpBUDU0eW1GTjhj?=
 =?utf-8?B?ZkUyaGNRVnVLenViLzVZdWx2WGpueWFpMEtHYVJvRGpNLzhLSFd5czk3a2c2?=
 =?utf-8?B?Z3JaY2Z2WHFoMDA2K3RtNTgwTjIzT3d6U0xXNHZYQWwwQi92RzVHaG5mMFVh?=
 =?utf-8?B?MndUOFd4Mys2c1J5cnBnVFNJemEyMVFlTVBUZ1lyczdxN1QwSDNhd25BZGdY?=
 =?utf-8?B?RW1EanFmK1hZaGkweWtsZjY2ZlVZdlRiazVETzduQ2txQWI1NTBqV2o5NFk5?=
 =?utf-8?B?NFVqYmREcnZwK1ZScDF2NHZnZ3ZDakFwZHJYOUJaajBrY3diaGRkUUYwMFVv?=
 =?utf-8?B?SEZpdzZBa3FxU2R6OUkvWVBSTkcwdmw3cndJRkFndEdIYTBEUFNlOG9mMWh1?=
 =?utf-8?B?MEdtWFhMSkNPaksvY09mejlPVUxGeTdLajV3NUFjL2FYZU5UVm9mWXd4YU53?=
 =?utf-8?B?OUFpb2hDR2JTUWtZTXI3UXVkMllRaTlBT0ZWTklhT0J5OERKazFqbUFrSldI?=
 =?utf-8?B?MlR1RVVCSDBNRFNFQ21oUmFSK1JhV0NTdGFBeENEeFdnT3NsR2crNzhhZUpz?=
 =?utf-8?B?ejBYUnRLMm0rbmFxaExlSFhPZ1pqSk9icy9MVFBrV2NKY0hHVWRkdlo2ZTZ1?=
 =?utf-8?B?Sm40SnB0SWFwZjhxOFBTWUorcXluZFlKMCtrbHpRZDBteWFVMTAzWFlSMHRk?=
 =?utf-8?B?TWxLblpOd0ZEVTB3T3Z2QkJIL1FWNnRSbVdxODN0c3lLbC9kOGxCOVprZGw5?=
 =?utf-8?B?Z3ZhdE5MdjBQVjBGR0NETmRSWHk4MzZ5M1Z3UDQ2QXlkRExqa2s4d0pYTGR5?=
 =?utf-8?B?MVo1K29wUHBaYkZ0OWdZamNqeUxMMyttR3JOTDJ2WlNsMGkyQTVWN00remc5?=
 =?utf-8?B?bHA4R0IxZythYkVaYVpKMjdkejdmU1MzVmtlUEhBODYwYjlCNURyK2ZEM0JH?=
 =?utf-8?B?bU5kNWwyWEEzOGZDNEQxLzZZZk14anlwRW9sK3BYUzhLUTFEd2N3OXB2ekc1?=
 =?utf-8?B?VEZ6K282ODcwNVQyUXdzVnVBdkdvUGs0RFlaTm1jbU5iV0pEeWtBYUNsUTNQ?=
 =?utf-8?B?dGxScHBBVWlxK1R2RHdCZkxzT0tYRGFvUGJwMnV3VGZ6Q3JhREVHQlZnSWRW?=
 =?utf-8?B?eDJWTHZxMFFtdFpDWVdiRTNCUktjRjVXeko4RExoWFJlRGh4QnFNdHorMHNX?=
 =?utf-8?B?STIzN29nTzNuc3RXbHkrMFRueUR2aDdEM3VpcWozUUEwQUN3Y05WNTRaNUl2?=
 =?utf-8?B?VmFoQWRMdFpSWUFaRVd3eVhUTGJkdU5GdHk5bER6T05udk1rcWd0R3htL0g5?=
 =?utf-8?B?Ty85RUxvSnptcGhSVE9DaU13L0Q4a3JGUnNBNVJKRlFndFcxWTR3MTFFd2ZI?=
 =?utf-8?B?Z2dQRHZVbzFuS1c2MGlFUkdFdDRkZmJjWkJOb1RKTXNFcnd5VkZNVTYwVGU4?=
 =?utf-8?B?VTNqcU0vY3owTnVxUlBLYUdBOUpGbFV0ZmNsVno1TGpNNnFab0hqN3dZZjJ5?=
 =?utf-8?B?Yk5BNXF3SjBNR2pYdWIrMGhLT1Q3Nm1WNWNBZE9tV3hxVTV5UDZkbnpQQlNy?=
 =?utf-8?B?SUhraEV5MUE5RHB4UjB5QkpwMU91R2duNmJaVFVTOWN3Y0wyako4NzlIbXZv?=
 =?utf-8?B?UEZocUZYNFIrSWFFY04xZ0ZOZC9RSko0RHFrV2RYN2o4d3MzaVNOaEZtM1Fl?=
 =?utf-8?B?bWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <37E541B8D137CC44A3CCBB729A7AC5EF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c082667-2a54-40ff-8e7d-08dcf4193ce8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 10:47:21.2555 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DlXyWx/hBytH8C5RcLPPJhuN0Tl1lTD/D1d/5TkY3xTXcRdJ9+aflS9tw2hHMGQhPoNR6i76tDXLJiK9dvSoT/I7MlEHdWQjnqHVbawIM+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6193
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

T24gV2VkLCAyMDI0LTEwLTA5IGF0IDIxOjIyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gUmVuYW1lIHZsdl9wcmltYXJ5X21pbl9hbGlnbm1lbnQoKSB0byB2bHZfcGxhbmVfbWluX2Fs
aWdubWVudCgpCj4gYW5kIHVzZSBpdCB0byByZXBsYWNlIHZsdl9zcHJpdGVfbWluX2FsaWdubWVu
dCgpIHNpbmNlIHRoZQo+IGJlaGF2aW91ciBpcyBub3cgaWRlbnRpY2FsIHdoZW4gdGhlIHBsYW5l
IGluaXQgZG9lc24ndCBzZXQgdXAKPiBhbnkgYXN5bmMgZmxpcHMgc3R1ZmYuCj4gCj4gVGVjaG5p
Y2FsbHkgVkxWL0NIViBzcHJpdGVzIGRvIHN1cHBvcnQgYXN5bmMgZmxpcHMsIHNvIHRoaXMKPiBh
bHNvIG1ha2VzIHVzIGEgYml0IG1vcmUgZnV0dXJlIHByb29mIGlmL3doZW4gd2UgZXh0ZW5kIGFz
eW5jCj4gZmxpcCBzdXBwb3J0IHRvIG1vcmUgdGhhbiBvbmUgcGxhbmUuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
dmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KCj4g
LS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuY8KgwqAgfMKg
IDggKysrKy0tLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFuZS5o
wqDCoCB8wqAgNCArKysrCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nw
cml0ZS5jIHwgMTcgKy0tLS0tLS0tLS0tLS0tLS0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgOSBpbnNl
cnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaTl4eF9wbGFuZS5jCj4gaW5kZXggOGQzMzQ2MTk5NjQ1Li45NDNkY2QzYjdhMGUgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYwo+IEBAIC03NzUs
OSArNzc1LDkgQEAgaTh4eF9wbGFuZV9tYXhfc3RyaWRlKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxh
bmUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gOCAqIDEwMjQ7Cj4g
wqB9Cj4gwqAKPiAtc3RhdGljIHVuc2lnbmVkIGludCB2bHZfcHJpbWFyeV9taW5fYWxpZ25tZW50
KHN0cnVjdCBpbnRlbF9wbGFuZQo+ICpwbGFuZSwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjb25zdCBzdHJ1Y3QKPiBkcm1fZnJhbWVidWZmZXIgKmZiLAo+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBjb2xvcl9wbGFuZSkKPiArdW5zaWduZWQgaW50IHZs
dl9wbGFuZV9taW5fYWxpZ25tZW50KHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlcgo+ICpmYiwKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpbnQgY29sb3JfcGxhbmUpCj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9w
bGFuZV9jYW5fYXN5bmNfZmxpcChwbGFuZSwgZmItPm1vZGlmaWVyKSkKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAyNTYgKiAxMDI0Owo+IEBAIC05MzgsNyArOTM4LDcg
QEAgaW50ZWxfcHJpbWFyeV9wbGFuZV9jcmVhdGUoc3RydWN0Cj4gZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKQo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVco
ZGV2X3ByaXYpKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwbGFuZS0+bWluX2Fs
aWdubWVudCA9IHZsdl9wcmltYXJ5X21pbl9hbGlnbm1lbnQ7Cj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHBsYW5lLT5taW5fYWxpZ25tZW50ID0gdmx2X3BsYW5lX21pbl9hbGlnbm1l
bnQ7Cj4gwqDCoMKgwqDCoMKgwqDCoGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA1
IHx8IElTX0c0WChkZXZfcHJpdikpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBw
bGFuZS0+bWluX2FsaWdubWVudCA9IGc0eF9wcmltYXJ5X21pbl9hbGlnbm1lbnQ7Cj4gwqDCoMKg
wqDCoMKgwqDCoGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSA0KQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuaAo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmgKPiBpbmRleCAwY2ExMmQxZTY4Mzku
LjQ1N2Y0YmNjZjEwNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2k5eHhfcGxhbmUuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9w
bGFuZS5oCj4gQEAgLTksNiArOSw3IEBACj4gwqAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPiDC
oAo+IMKgZW51bSBwaXBlOwo+ICtzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyOwo+IMKgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGU7Cj4gwqBzdHJ1Y3QgaW50ZWxfY3J0YzsKPiDCoHN0cnVjdCBpbnRlbF9p
bml0aWFsX3BsYW5lX2NvbmZpZzsKPiBAQCAtMTksNiArMjAsOSBAQCBzdHJ1Y3QgaW50ZWxfcGxh
bmVfc3RhdGU7Cj4gwqB1bnNpZ25lZCBpbnQgaTk2NV9wbGFuZV9tYXhfc3RyaWRlKHN0cnVjdCBp
bnRlbF9wbGFuZSAqcGxhbmUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTMyIHBpeGVsX2Zvcm1hdCwgdTY0IG1v
ZGlmaWVyLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCByb3RhdGlvbik7Cj4gK3Vuc2lnbmVk
IGludCB2bHZfcGxhbmVfbWluX2FsaWdubWVudChzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIKPiAqZmIsCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaW50IGNvbG90X3BsYW5lKTsKPiDCoGludCBpOXh4X2NoZWNrX3BsYW5lX3N1
cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7Cj4gwqAKPiDCoHN0
cnVjdCBpbnRlbF9wbGFuZSAqCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfc3ByaXRlLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmMKPiBpbmRleCBlNmZhZGNlZjU4ZTAuLjEzOTk2ZDcwNTlhZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+IEBAIC0yNTMsMjEg
KzI1Myw2IEBAIGludCB2bHZfcGxhbmVfbWluX2NkY2xrKGNvbnN0IHN0cnVjdAo+IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBESVZfUk9VTkRf
VVAocGl4ZWxfcmF0ZSAqIG51bSwgZGVuKTsKPiDCoH0KPiDCoAo+IC1zdGF0aWMgdW5zaWduZWQg
aW50IHZsdl9zcHJpdGVfbWluX2FsaWdubWVudChzdHJ1Y3QgaW50ZWxfcGxhbmUKPiAqcGxhbmUs
Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdAo+IGRybV9mcmFt
ZWJ1ZmZlciAqZmIsCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBjb2xvcl9w
bGFuZSkKPiAtewo+IC3CoMKgwqDCoMKgwqDCoHN3aXRjaCAoZmItPm1vZGlmaWVyKSB7Cj4gLcKg
wqDCoMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWF9USUxFRDoKPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDQgKiAxMDI0Owo+IC3CoMKgwqDCoMKgwqDCoGNhc2Ug
RFJNX0ZPUk1BVF9NT0RfTElORUFSOgo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gMTI4ICogMTAyNDsKPiAtwqDCoMKgwqDCoMKgwqBkZWZhdWx0Ogo+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBNSVNTSU5HX0NBU0UoZmItPm1vZGlmaWVyKTsKPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4gLcKgwqDCoMKgwqDCoMKgfQo+IC19
Cj4gLQo+IMKgc3RhdGljIHUzMiB2bHZfc3ByaXRlX2N0bF9jcnRjKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlCj4gKmNydGNfc3RhdGUpCj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDCoHUzMiBz
cHJjdGwgPSAwOwo+IEBAIC0xNjE2LDcgKzE2MDEsNyBAQCBpbnRlbF9zcHJpdGVfcGxhbmVfY3Jl
YXRlKHN0cnVjdAo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcGxhbmUtPmdldF9od19zdGF0ZSA9IHZsdl9zcHJpdGVfZ2V0X2h3
X3N0YXRlOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGxhbmUtPmNoZWNrX3Bs
YW5lID0gdmx2X3Nwcml0ZV9jaGVjazsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHBsYW5lLT5tYXhfc3RyaWRlID0gaTk2NV9wbGFuZV9tYXhfc3RyaWRlOwo+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBwbGFuZS0+bWluX2FsaWdubWVudCA9IHZsdl9zcHJpdGVfbWlu
X2FsaWdubWVudDsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGxhbmUtPm1pbl9h
bGlnbm1lbnQgPSB2bHZfcGxhbmVfbWluX2FsaWdubWVudDsKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHBsYW5lLT5taW5fY2RjbGsgPSB2bHZfcGxhbmVfbWluX2NkY2xrOwo+IMKg
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoSVNfQ0hFUlJZVklFVyhkZXZf
cHJpdikgJiYgcGlwZSA9PSBQSVBFX0IpIHsKCg==
