Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EF69DB343
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 08:44:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4176A10EC35;
	Thu, 28 Nov 2024 07:44:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UoO0KQdr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B74610EC34
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 07:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732779854; x=1764315854;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oWeYSV7c9mCp+nGvyFqbp+Ybnh6BBzrj3/p8ofiR5NI=;
 b=UoO0KQdrfYbKWWN3mLwcy8GAi1v13Ghi06NibNxaIU3hvHrPk4ZN8Jt1
 qQm9FfAWYq+nAoNGqSdElaHjSe981oMDKH4gY4QOmu2iuKvsGaDqVKFQf
 NlCy1ZirTKQLKv7pYFKa9APOcE57NzmoC289LK0rsSTOjZ/wpJIVfzdc9
 u9i6tF3MFi+G3cMW3f4ngQf9JxeetIPEAvTPG4PcG/ZHvB6I2U7+39rpz
 U42DgjZQtBbetzcF1icCvxb7jeic1izn4oIQ/W/PcLd48zQPvGkbEh0KN
 YsraUUCTWP4LQ40DJqQT7FSyGkqz+Al+NsDx7+BK4orH5UFzBAJKftgvA Q==;
X-CSE-ConnectionGUID: axHXfP/6Ql2tHvXFaWPc8A==
X-CSE-MsgGUID: DermQ0koR5O/RJDG4eA/GQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="36927742"
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="36927742"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 23:44:14 -0800
X-CSE-ConnectionGUID: Ufnlc0xBSBO9q4MQKdm4Ow==
X-CSE-MsgGUID: mPMfFH6gRsGQ09GmcGrJCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="123125571"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 23:44:14 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 23:44:13 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 23:44:13 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 23:44:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oOS9iBcrLFI87/f3+YsiYhDYOKMld3m4X+eijoBt0JF9c6FBVhgEzv8T5kWEvKNrnY2g7FksexiWq9+Vle6Bt4az77SyqfhBT+MItkuv8oOPjnnoiwOefO+fY8d+AdDfxMBfwbPn03b+2v3X8J7gQvHpnaag8W3/nLUav+FGrasVAms4n5MaggPLyTMUmIpiKbu+keuEhV4zAxmWqSfW4nfwXlLhHFq2SNa1qyV5KMQ0uc5v7310RXxvLqlbarS1xGVzko0bJJFhhgQqcgobwR9fnot0R4pZ55V7to45+i8I6fAVzdcQCL4UwORGMTkcf4YHGrr7nH4EELND/ZmIsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oWeYSV7c9mCp+nGvyFqbp+Ybnh6BBzrj3/p8ofiR5NI=;
 b=N2x2SmZ8zvi/AMlgAVT0lSorgd9m2qtpsT7scWOCspY2tP28E/ajl7A0NYVoVc6tOj0/Svv48iB63/fm/gGYocEhPOCz912/qLF4AVkogTJNi+sCPig6vgcg9/3lDkdNa9wswhJyZl2irVIIzsEO/L14jru+j2MVIp051v/Rygu6R/d85E2xL8s1nUw5w89Hb8Vf1B0p3FZNn3cS//9V1WF+3FeqUIMAxCIIvIJUotwxRucP9Ceamc1+1IrzCzeAS+tpnh0O/zjoyNcg+OHK7+jL1j0aeicaWoVTO782j2DVBjgECbyEOgAWjEmxjcbGDmg/yydjgrGQhMRP/jSC4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DM4PR11MB7759.namprd11.prod.outlook.com (2603:10b6:8:10e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.12; Thu, 28 Nov
 2024 07:44:05 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 07:44:04 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Brian Geffon <bgeffon@google.com>
Subject: RE: [PATCH 3/4] drm/i915/dpt: Evict all DPT VMAs on suspend
Thread-Topic: [PATCH 3/4] drm/i915/dpt: Evict all DPT VMAs on suspend
Thread-Index: AQHbQJM6Vn9+z4QGBkOWICJkJvQFgbLMUW1w
Date: Thu, 28 Nov 2024 07:44:04 +0000
Message-ID: <PH7PR11MB82524914FC30F5A48983706389292@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
 <20241127061117.25622-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20241127061117.25622-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|DM4PR11MB7759:EE_
x-ms-office365-filtering-correlation-id: 28fd891d-8476-4fba-06f2-08dd0f806f09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YWlLVUZLMmJUWndCekxpeTBlY3NNRmtDZTN4UDZmbHo5eEQyY2RHN3VaV3ZE?=
 =?utf-8?B?aWVQQkdQeU9sOURZMWhXQVdtWDdFNkVrLzN6eUV0S2czVDhDM3RXRnRlUThi?=
 =?utf-8?B?TkMrc0NsUFFCaUZsRjkzdU00M1Y5VkR1L1ViWGRVQ0tPNW13NDNjMUIyN0Yz?=
 =?utf-8?B?MjQxQXNkbmIybTZlaVhjbTd6Vm5xRWU5QnViSGdvVWFkWlgyakgrNmpvRUhi?=
 =?utf-8?B?TjhVUDBjTGFlYnl5VU9rcTlVWWRLTStVMWRMY1F6MHRCTGtYVkM2ckxpYlM5?=
 =?utf-8?B?c1JJUmRKSzZNSWh2R1pyNUM2UVVUYm5zWk1INWlRTjB2cWE3MVlla1l6NFI4?=
 =?utf-8?B?L1hZSnpxay8ycjlNNkVLL1VySFZ6aEZiaHQ4SFd0U3Fnb3g2SW5mZm1vNlh5?=
 =?utf-8?B?d2lMTnlRU3BoSmhBdUkxUk9oY0sxelZmcTNXK3BxaVNMU1ltdmd1d1pDOTVS?=
 =?utf-8?B?aDh3QWkrTXR3LzdPd09pclFCMk53UmFpdjltS091K2hGblZjdDN0NHdJaklq?=
 =?utf-8?B?eVVYRzhiODNWUjlJSVVaWnFFN2lwWlVxa1pZdVhaSEZFSnkvLzdLTEdzV1VQ?=
 =?utf-8?B?bHk0OW5VYUxnRmlISDJxNFBlaHQ2M2pRVkU2N01yUWx5NTNzZ2JNUHBCNEVl?=
 =?utf-8?B?M2tSRUVWSWpLa3laQWlna1RCaE9tandMRTdoOFpjalVaZFdySG94M01CYStk?=
 =?utf-8?B?NXBzdUxwRlBSeWM1dlYycndrQnlyU3hZWllON2dsYW0xVDVFL24rbGJySGhm?=
 =?utf-8?B?ZmFIVXFVcC9iZ09uK3h4d0VjTHc5eGtXaDhxU0dJRnQ4a2dWVEJzZlR3NEF4?=
 =?utf-8?B?R0wxbVF6eVdmNHdadGdST2ltaEgrdS9pczdrTEI1TzVsRW9xaUVyOWR1OVc3?=
 =?utf-8?B?RU9CNVdid2lsS3NKVFA3RGIzbEl2SEVKNUJBQUlNdkJGNkNENXp2cTVJOTlT?=
 =?utf-8?B?VkRGd0RyZjlwcnk3WE52cUdhWVJvVjE4SXFBcVhqbkNpT1Z0OW1NM2hmTjJx?=
 =?utf-8?B?WFgxQ1BrK3dxd2hYVXFrNUdNVzcrY3RwMnowRFAzNjc2VXVTQTE2ZWlyODFw?=
 =?utf-8?B?ODVub0Q1WFZBb0Rmb201NWUweG5QNUtPN0FPV1VFdW51alI5R3pQNks2cTND?=
 =?utf-8?B?NlRMNFJvUEwvU254YzVwM2xqd3JSc01ZR0Fta3FKd3ZwRGF4cWVUMjlTd2M2?=
 =?utf-8?B?L2w4Y2JYaFNHZVBDdlhQMVl4Q08zNUt6TzcxazJQeU4vOTdDd3ZpR0RsMFow?=
 =?utf-8?B?eG56TnZDSkkyeUxNb0Y0aDU2aXczT0dYRHFldHBHWU5RQnA4cXJVQ3ZVSFMv?=
 =?utf-8?B?NDdNeEZxaWlmUXNHamR2M25UQkJQNUllTGhZcUNObHN2NEdZMzkvc2o0SWo2?=
 =?utf-8?B?emJoUmRJVzRpRHJBVGJHTG1iVmJTaUJTOC9KK243c3RtN3BWUHh1Wkt0OFJh?=
 =?utf-8?B?ZFdZeDhEUDVQK3JyMVBXQ3VOTk9zb1pHVGZIODhtdWZ6Zyt1THVzRi90c1No?=
 =?utf-8?B?aUMvZitPeUpCTmp2c3B3RkdIU2Fad1FlTnFDdnpSQTNOV1dJVVZHS3hMYVRN?=
 =?utf-8?B?ejhTRyt0UWpKMXFQSTFMMGl1NFdZaXI3bzVVZ0tyS2FxdFRrcFp4WEpwTHRP?=
 =?utf-8?B?OFJUOXp6SVFQSmJQZTFNcjJvb1RvK0JmWUpxUkRTV0RSeEp2eHZ6VnhLeHBQ?=
 =?utf-8?B?enRLbXduL3VFNDc2ZWI2S2xvSWJCZlg1czFUV3dEa0NQeFZUQkpKdm04RU94?=
 =?utf-8?B?MThHa1E1clYwaXFCTHlONEhkdXhzTGFlV0VnTHlFaTRkakRzM0xCQVYyQkpa?=
 =?utf-8?B?S0diTUo4bGRLUEhKdWVQakRNV2lnZmtMcGRBMlpZUG9zL0gxT084Nm9yc0gv?=
 =?utf-8?B?TmxBZkdlQ2E0WmhxblJSUk0velNVcDErZnV3QWF0cklYN2c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SUJ1Q3Y5UndxWHRrUGNWR1hBYTVjSHpHdWdTTWw1T1kyU3pXdmVkR1RhYURx?=
 =?utf-8?B?MVk2aWl1ZTZmVE9wNHNCdnRKR3JRNXkzditQd2M5TUFCL0RxamJwTmh1S0Uv?=
 =?utf-8?B?UDliNlpwSm5HQTJxMU5LcFZrdkJISmt2S1NZazk1Z3R6RjNBUGx5ajV2K3cz?=
 =?utf-8?B?TDUyaGZQQlBVVEU4OStOdUNjUXVtV1ZyZ3pmSmxSaWhQZFFVNTg3Y0FnellK?=
 =?utf-8?B?SldkbWFYQU5qME11NG5BbzBpNXhvRHEzRTRDcVNRRTBqNTZLNzZhVStwRmFB?=
 =?utf-8?B?TFpwak1lelVaSkw4Tzl1MlgvOE1rL1FKTitiMWw0WStXLy9KTnVKeE52dkJk?=
 =?utf-8?B?VUxFS3ZycHVZMlZ3enZkcW9JUTQ1NXRKTXpPSVEzaitsZzhYZGZ3NXdrOXIy?=
 =?utf-8?B?bGJpQUlnRU15VFNDSUY1ZDY1d3ZhVTAza2dsazF6TkRvRHM1c28wTlhsakh6?=
 =?utf-8?B?b3NOV2JrQWp6YVcvanVIc1h2VWZIV2hHTlJWTmxDbEdvRDNNWEZZMWFPdnlt?=
 =?utf-8?B?S3NBWW1za1dtWTZqOU15WU1RYVRBc1I3eG1vQldXb2hyM3o0UUNNVnoyNGZP?=
 =?utf-8?B?Zm9SWTYrTDRHTisvVlcrKzhVaEpZelRjeGd4N3V6VzhBUnVGZDJNaEkvb1R3?=
 =?utf-8?B?SGxwR2J1SEg2MDB1dXRIcmRGdzlkY3N4OXF6aVRLOWJ5OVdERG9vM0srYkFO?=
 =?utf-8?B?cXZvRzlhUVhFejZoWU1USUNOWDdVemhLTnMzbFVScmg4bk9JVXhnSHF1OHVR?=
 =?utf-8?B?N3BrZ2ZsdHVVMkViK2tLbjc0bHpreVJ0Q2JvdmdRcSttMU96Q1NtdGJRUmZP?=
 =?utf-8?B?dlF6WVp2UU5ENWQ0cW9UaGJ1dUQydDRXQ0laa2VtMVVaU2ZtWjRzTXJoaHUv?=
 =?utf-8?B?WGxGU0NkTmcxWXA0bE1wN2VRaGJUemJUeGRDOGhOMG9SdGhCSEErVmhmQmgx?=
 =?utf-8?B?QUlIUGZqRW1vN3VTTzNCdHhsUUdsWndWdkhFRUJBd2tTRDBueWYyVVBCRUd0?=
 =?utf-8?B?RVV0bmt1QWJyVDY0KzUxc2FoV2pqbERMMDl6SWQ2NFNicjlEaDhkSlRqS0Qr?=
 =?utf-8?B?K01PdWZIMEJCamI2R3R0ajVsaDNpRDRoQjJyYnZ5S05vSkFidkpTNkpxUzRR?=
 =?utf-8?B?Nm9BdEpRYUE4dHQyd0dDZGIrRE96VlRKSUFuTzUvQkhxZlcvSEoyNkpHaURW?=
 =?utf-8?B?ZXh4Tm5CVkRQTUtLaUxmSFF5Nm5CZDRoL05kWmpveGVReE5hTGs5ZFdqcVNn?=
 =?utf-8?B?ZWNBMUdiYWFSMWczQ1AwL1QzUFpiMlRzMG5kOHRVN1laaGVnZlM2MG1DRUlV?=
 =?utf-8?B?Qitwc1VJV2NtYkV0NHg3eE05VWYzQjlUTlpYMmZTU2ViWC9scmxFbDl0WHhS?=
 =?utf-8?B?M2MycENtT1phTlpWUlQ5NXdVMVljQmkxSVBHMkgrMlIyVW0wYkRGQVQzbTEv?=
 =?utf-8?B?LysrNDVSbzh6UXdabys3S09ONEJrZkp0MTdtRXNrTFJHY2VncXZzaThEbm1J?=
 =?utf-8?B?dVNKQkJ2aVhGMjU4TGtqemRKcytISVcvNWE5ZkNqRUppR3RyVytkc3dKVTBa?=
 =?utf-8?B?R0xzblduSTZwNmVDQ0RHS0lWcFp5ZXRqSTZ1eU5jT2tkOG1OMVVIQnpWQ0RI?=
 =?utf-8?B?RklvZ1hGcENhcEkwR0Z2MDBpRzBNR25tUEVXZzFzOHlsdFl3L3Mydi8yaGtV?=
 =?utf-8?B?QWIrdjlUamNURlh4ckV2VVcvZnNSVW41ZkNWWDVQQ2tiOG9nTkxwd2RJRm54?=
 =?utf-8?B?ZHRFWVAxN2pYT2k2WnpPU2lMSzFic0NENVgyMG5PY2VJbTd0dmEwQmNSVDBv?=
 =?utf-8?B?OUNDbmtWb0hZTjZLR0s2TFYzT25LSUtZVE5xQWVvWUtnS290OXdhNFo4ZXdB?=
 =?utf-8?B?eUsxR1JINW9RZU5uOUx2V3F6ZkIwMXhDcFN0N3lrU1ZodzcwaC9BZUpVTjZB?=
 =?utf-8?B?K2RINkswcDAyYzNONW9sUnNTWHBMYitNOUVsZTRMcTZWL2U3YjVEZm5PTVk4?=
 =?utf-8?B?aE1vdW04YnNCbVVRV3dYVk14UVpCUW5ldE5yeTlGUXVNWktnaTdYRDBxYXMr?=
 =?utf-8?B?YkRhM0pJcHVGU1VkRzQ1QTJIdCtXSUEvemxKODNsM0NBTWFDSjhoUWxOeDNN?=
 =?utf-8?Q?8lvuGcnOiNN143s5WfZI53Evb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28fd891d-8476-4fba-06f2-08dd0f806f09
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2024 07:44:04.9317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ywpaVFVic4spL6ejXa27OxRiQujlnyIVjGopBeO/IUIr54SIW1qLO8woiyGgguC5+uqEFvyv3OehBowi93sb6uyZI1Q3u2RDGc4yrDmF27E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7759
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

SGVsbG8gVmlsbGUsIA0KVGhhbmsgeW91IHNvIG11Y2guIENoYW5nZXMgTG9vayBHb29kIHRvIG1l
Lg0KUmV2aWV3ZWQtYnk6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+
DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IDI3IE5vdmVtYmVyIDIwMjQg
MTE6NDENCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEJyaWFu
IEdlZmZvbiA8YmdlZmZvbkBnb29nbGUuY29tPjsgU3Jpbml2YXMsIFZpZHlhDQo+IDx2aWR5YS5z
cmluaXZhc0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAzLzRdIGRybS9pOTE1L2RwdDog
RXZpY3QgYWxsIERQVCBWTUFzIG9uIHN1c3BlbmQNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBDdXJyZW50bHkgaW50ZWxf
ZHB0X3Jlc3VtZSgpIHRyaWVzIHRvIGJsaW5kbHkgcmV3cml0ZSBhbGwgdGhlIFBURXMgZm9yIGN1
cnJlbnRseQ0KPiBib3VuZCBEUFQgVk1Bcy4gVGhhdCBpcyBwcm9ibGVtYXRpYyBiZWNhdXNlIHRo
ZSBDUFUgbWFwcGluZyBmb3IgdGhlIERQVCBpcw0KPiBvbmx5IHJlYWxseSBndWFyYW50ZWVkIHRv
IGV4aXN0IHdoaWxlIHRoZSBEUFQgb2JqZWN0IGhhcyBiZWVuIHBpbm5lZC4gSW4gdGhlDQo+IHBh
c3Qgd2Ugd29ya2VkIGFyb3VuZCB0aGlzIGlzc3VlIGJ5IG1ha2luZyBEUFQgb2JqZWN0cyB1bnNo
cmlua2FibGUsIGJ1dCB0aGF0DQo+IGlzIHVuZGVzaXJhYmxlIGFzIGl0J2xsIHdhc3RlIHBoeXNp
Y2FsIFJBTS4NCj4gDQo+IExldCdzIGluc3RlYWQgZm9yY2VmdWxseSBldmljdCBhbGwgdGhlIERQ
VCBWTUFzIG9uIHN1c3BlbmQsIHRodXMgZ3VhcmFudGVlaW5nDQo+IHRoYXQgaW50ZWxfZHB0X3Jl
c3VtZSgpIGhhcyBub3RoaW5nIHRvIGRvLg0KPiBUbyBndWFyYW50ZWUgdGhhdCBhbGwgdGhlIERQ
VCBWTUFzIGFyZSBldmljdGFibGUgYnkNCj4gaW50ZWxfZHB0X3N1c3BlbmQoKSB3ZSBuZWVkIHRv
IGZsdXNoIHRoZSBjbGVhbnVwIHdvcmtxdWV1ZSBhZnRlciB0aGUgZGlzcGxheQ0KPiBvdXRwdXQg
aGFzIGJlZW4gc2h1dCBkb3duLg0KPiANCj4gQW5kIGZvciBnb29kIG1lYXN1cmUgdGhyb3cgaW4g
YSBmZXcgZXh0cmEgV0FSTnMgdG8gY2F0Y2ggYW55IG1pc3Rha2VzLg0KPiANCj4gQ2M6IEJyaWFu
IEdlZmZvbiA8YmdlZmZvbkBnb29nbGUuY29tPg0KPiBDYzogVmlkeWEgU3Jpbml2YXMgPHZpZHlh
LnNyaW5pdmFzQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2RyaXZlci5jICAgfCAgMyArKysNCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0LmMgICAgICB8ICA0ICsrLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYyAgICAgICAgICB8IDE5ICsrKysrKysrKysrKysrLS0t
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oICAgICAgICAgICB8ICA0
ICsrLS0NCj4gIDQgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZHJpdmVyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZHJpdmVyLmMNCj4gaW5kZXggMjg2ZDZmODkzYWZhLi45NzNiZWU0M2I1NTQgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9k
cml2ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfZHJpdmVyLmMNCj4gQEAgLTY4MCw2ICs2ODAsOSBAQCBpbnQgaW50ZWxfZGlzcGxheV9kcml2
ZXJfc3VzcGVuZChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIAllbHNlDQo+
ICAJCWk5MTUtPmRpc3BsYXkucmVzdG9yZS5tb2Rlc2V0X3N0YXRlID0gc3RhdGU7DQo+IA0KPiAr
CS8qIGVuc3VyZSBhbGwgRFBUIFZNQXMgaGF2ZSBiZWVuIHVucGlubmVkIGZvciBpbnRlbF9kcHRf
c3VzcGVuZCgpDQo+ICovDQo+ICsJZmx1c2hfd29ya3F1ZXVlKGk5MTUtPmRpc3BsYXkud3EuY2xl
YW51cCk7DQo+ICsNCj4gIAlpbnRlbF9kcF9tc3Rfc3VzcGVuZChpOTE1KTsNCj4gDQo+ICAJcmV0
dXJuIHJldDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHB0LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5jDQo+
IGluZGV4IGNlOGM3NmU0NGU2YS4uOGIxZjBlOTJhMTFjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0LmMNCj4gQEAgLTIwNSw3ICsyMDUsNyBAQCB2b2lkIGlu
dGVsX2RwdF9yZXN1bWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ICAJCXN0cnVj
dCBpbnRlbF9mcmFtZWJ1ZmZlciAqZmIgPSB0b19pbnRlbF9mcmFtZWJ1ZmZlcihkcm1fZmIpOw0K
PiANCj4gIAkJaWYgKGZiLT5kcHRfdm0pDQo+IC0JCQlpOTE1X2dndHRfcmVzdW1lX3ZtKGZiLT5k
cHRfdm0pOw0KPiArCQkJaTkxNV9nZ3R0X3Jlc3VtZV92bShmYi0+ZHB0X3ZtLCB0cnVlKTsNCj4g
IAl9DQo+ICAJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0ubW9kZV9jb25maWcuZmJfbG9jayk7DQo+
ICB9DQo+IEBAIC0yMzMsNyArMjMzLDcgQEAgdm9pZCBpbnRlbF9kcHRfc3VzcGVuZChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIAkJc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICpm
YiA9IHRvX2ludGVsX2ZyYW1lYnVmZmVyKGRybV9mYik7DQo+IA0KPiAgCQlpZiAoZmItPmRwdF92
bSkNCj4gLQkJCWk5MTVfZ2d0dF9zdXNwZW5kX3ZtKGZiLT5kcHRfdm0pOw0KPiArCQkJaTkxNV9n
Z3R0X3N1c3BlbmRfdm0oZmItPmRwdF92bSwgdHJ1ZSk7DQo+ICAJfQ0KPiANCj4gIAltdXRleF91
bmxvY2soJmk5MTUtPmRybS5tb2RlX2NvbmZpZy5mYl9sb2NrKTsNCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2dndHQuYw0KPiBpbmRleCBkNjBhNmNhMGNhZTUuLmY2YzU5ZjIwODMyZiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dC5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYw0KPiBAQCAtMTA3LDExICsx
MDcsMTIgQEAgaW50IGk5MTVfZ2d0dF9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQ0KPiAgLyoqDQo+ICAgKiBpOTE1X2dndHRfc3VzcGVuZF92bSAtIFN1c3BlbmQgdGhlIG1l
bW9yeSBtYXBwaW5ncyBmb3IgYSBHR1RUIG9yIERQVA0KPiBWTQ0KPiAgICogQHZtOiBUaGUgVk0g
dG8gc3VzcGVuZCB0aGUgbWFwcGluZ3MgZm9yDQo+ICsgKiBAZXZpY3RfYWxsOiBFdmljdCBhbGwg
Vk1Bcw0KPiAgICoNCj4gICAqIFN1c3BlbmQgdGhlIG1lbW9yeSBtYXBwaW5ncyBmb3IgYWxsIG9i
amVjdHMgbWFwcGVkIHRvIEhXIHZpYSB0aGUgR0dUVA0KPiBvciBhDQo+ICAgKiBEUFQgcGFnZSB0
YWJsZS4NCj4gICAqLw0KPiAtdm9pZCBpOTE1X2dndHRfc3VzcGVuZF92bShzdHJ1Y3QgaTkxNV9h
ZGRyZXNzX3NwYWNlICp2bSkNCj4gK3ZvaWQgaTkxNV9nZ3R0X3N1c3BlbmRfdm0oc3RydWN0IGk5
MTVfYWRkcmVzc19zcGFjZSAqdm0sIGJvb2wNCj4gK2V2aWN0X2FsbCkNCj4gIHsNCj4gIAlzdHJ1
Y3QgaTkxNV92bWEgKnZtYSwgKnZuOw0KPiAgCWludCBzYXZlX3NraXBfcmV3cml0ZTsNCj4gQEAg
LTE1Nyw3ICsxNTgsNyBAQCB2b2lkIGk5MTVfZ2d0dF9zdXNwZW5kX3ZtKHN0cnVjdCBpOTE1X2Fk
ZHJlc3Nfc3BhY2UNCj4gKnZtKQ0KPiAgCQkJZ290byByZXRyeTsNCj4gIAkJfQ0KPiANCj4gLQkJ
aWYgKCFpOTE1X3ZtYV9pc19ib3VuZCh2bWEsIEk5MTVfVk1BX0dMT0JBTF9CSU5EKSkgew0KPiAr
CQlpZiAoZXZpY3RfYWxsIHx8ICFpOTE1X3ZtYV9pc19ib3VuZCh2bWEsDQo+IEk5MTVfVk1BX0dM
T0JBTF9CSU5EKSkgew0KPiAgCQkJaTkxNV92bWFfd2FpdF9mb3JfYmluZCh2bWEpOw0KPiANCj4g
IAkJCV9faTkxNV92bWFfZXZpY3Qodm1hLCBmYWxzZSk7DQo+IEBAIC0xNzIsMTMgKzE3MywxNSBA
QCB2b2lkIGk5MTVfZ2d0dF9zdXNwZW5kX3ZtKHN0cnVjdA0KPiBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtKQ0KPiAgCXZtLT5za2lwX3B0ZV9yZXdyaXRlID0gc2F2ZV9za2lwX3Jld3JpdGU7DQo+IA0K
PiAgCW11dGV4X3VubG9jaygmdm0tPm11dGV4KTsNCj4gKw0KPiArCWRybV9XQVJOX09OKCZ2bS0+
aTkxNS0+ZHJtLCBldmljdF9hbGwgJiYNCj4gKyFsaXN0X2VtcHR5KCZ2bS0+Ym91bmRfbGlzdCkp
Ow0KPiAgfQ0KPiANCj4gIHZvaWQgaTkxNV9nZ3R0X3N1c3BlbmQoc3RydWN0IGk5MTVfZ2d0dCAq
Z2d0dCkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0Ow0KPiANCj4gLQlpOTE1X2dndHRfc3Vz
cGVuZF92bSgmZ2d0dC0+dm0pOw0KPiArCWk5MTVfZ2d0dF9zdXNwZW5kX3ZtKCZnZ3R0LT52bSwg
ZmFsc2UpOw0KPiAgCWdndHQtPmludmFsaWRhdGUoZ2d0dCk7DQo+IA0KPiAgCWxpc3RfZm9yX2Vh
Y2hfZW50cnkoZ3QsICZnZ3R0LT5ndF9saXN0LCBnZ3R0X2xpbmspIEBAIC0xNTQ1LDYgKzE1NDgs
Nw0KPiBAQCBpbnQgaTkxNV9nZ3R0X2VuYWJsZV9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkNCj4gIC8qKg0KPiAgICogaTkxNV9nZ3R0X3Jlc3VtZV92bSAtIFJlc3RvcmUgdGhlIG1l
bW9yeSBtYXBwaW5ncyBmb3IgYSBHR1RUIG9yIERQVA0KPiBWTQ0KPiAgICogQHZtOiBUaGUgVk0g
dG8gcmVzdG9yZSB0aGUgbWFwcGluZ3MgZm9yDQo+ICsgKiBAYWxsX2V2aWN0ZWQ6IFdlcmUgYWxs
IFZNQXMgZXhwZWN0ZWQgdG8gYmUgZXZpY3RlZCBvbiBzdXNwZW5kPw0KPiAgICoNCj4gICAqIFJl
c3RvcmUgdGhlIG1lbW9yeSBtYXBwaW5ncyBmb3IgYWxsIG9iamVjdHMgbWFwcGVkIHRvIEhXIHZp
YSB0aGUgR0dUVCBvcg0KPiBhDQo+ICAgKiBEUFQgcGFnZSB0YWJsZS4NCj4gQEAgLTE1NTIsMTMg
KzE1NTYsMTggQEAgaW50IGk5MTVfZ2d0dF9lbmFibGVfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUNCj4gKmk5MTUpDQo+ICAgKiBSZXR1cm5zICV0cnVlIGlmIHJlc3RvcmluZyB0aGUgbWFwcGlu
ZyBmb3IgYW55IG9iamVjdCB0aGF0IHdhcyBpbiBhIHdyaXRlDQo+ICAgKiBkb21haW4gYmVmb3Jl
IHN1c3BlbmQuDQo+ICAgKi8NCj4gLWJvb2wgaTkxNV9nZ3R0X3Jlc3VtZV92bShzdHJ1Y3QgaTkx
NV9hZGRyZXNzX3NwYWNlICp2bSkNCj4gK2Jvb2wgaTkxNV9nZ3R0X3Jlc3VtZV92bShzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSwgYm9vbA0KPiArYWxsX2V2aWN0ZWQpDQo+ICB7DQo+ICAJ
c3RydWN0IGk5MTVfdm1hICp2bWE7DQo+ICAJYm9vbCB3cml0ZV9kb21haW5fb2JqcyA9IGZhbHNl
Ow0KPiANCj4gIAlkcm1fV0FSTl9PTigmdm0tPmk5MTUtPmRybSwgIXZtLT5pc19nZ3R0ICYmICF2
bS0+aXNfZHB0KTsNCj4gDQo+ICsJaWYgKGFsbF9ldmljdGVkKSB7DQo+ICsJCWRybV9XQVJOX09O
KCZ2bS0+aTkxNS0+ZHJtLCAhbGlzdF9lbXB0eSgmdm0tDQo+ID5ib3VuZF9saXN0KSk7DQo+ICsJ
CXJldHVybiBmYWxzZTsNCj4gKwl9DQo+ICsNCj4gIAkvKiBGaXJzdCBmaWxsIG91ciBwb3J0aW9u
IG9mIHRoZSBHVFQgd2l0aCBzY3JhdGNoIHBhZ2VzICovDQo+ICAJdm0tPmNsZWFyX3JhbmdlKHZt
LCAwLCB2bS0+dG90YWwpOw0KPiANCj4gQEAgLTE1OTgsNyArMTYwNyw3IEBAIHZvaWQgaTkxNV9n
Z3R0X3Jlc3VtZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQ0KPiAgCWxpc3RfZm9yX2VhY2hfZW50
cnkoZ3QsICZnZ3R0LT5ndF9saXN0LCBnZ3R0X2xpbmspDQo+ICAJCWludGVsX2d0X2NoZWNrX2Fu
ZF9jbGVhcl9mYXVsdHMoZ3QpOw0KPiANCj4gLQlmbHVzaCA9IGk5MTVfZ2d0dF9yZXN1bWVfdm0o
JmdndHQtPnZtKTsNCj4gKwlmbHVzaCA9IGk5MTVfZ2d0dF9yZXN1bWVfdm0oJmdndHQtPnZtLCBm
YWxzZSk7DQo+IA0KPiAgCWlmIChkcm1fbW1fbm9kZV9hbGxvY2F0ZWQoJmdndHQtPmVycm9yX2Nh
cHR1cmUpKQ0KPiAgCQlnZ3R0LT52bS5zY3JhdGNoX3JhbmdlKCZnZ3R0LT52bSwgZ2d0dC0+ZXJy
b3JfY2FwdHVyZS5zdGFydCwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0dC5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmgNCj4g
aW5kZXggNmI4NTIyMmVlM2VhLi4wYTM2ZWE3NTFiNjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0dC5oDQo+IEBAIC02MDgsOCArNjA4LDggQEAgaW50IGk5MTVfcHBndHRfaW5p
dF9odyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsgIHN0cnVjdA0KPiBpOTE1X3BwZ3R0ICppOTE1X3Bw
Z3R0X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LA0KPiAgCQkJCSAgICAgdW5zaWduZWQgbG9u
ZyBsbWVtX3B0X29ial9mbGFncyk7DQo+IA0KPiAtdm9pZCBpOTE1X2dndHRfc3VzcGVuZF92bShz
dHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSk7IC1ib29sDQo+IGk5MTVfZ2d0dF9yZXN1bWVf
dm0oc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pOw0KPiArdm9pZCBpOTE1X2dndHRfc3Vz
cGVuZF92bShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwgYm9vbA0KPiArZXZpY3RfYWxs
KTsgYm9vbCBpOTE1X2dndHRfcmVzdW1lX3ZtKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
LA0KPiArYm9vbCBhbGxfZXZpY3RlZCk7DQo+ICB2b2lkIGk5MTVfZ2d0dF9zdXNwZW5kKHN0cnVj
dCBpOTE1X2dndHQgKmd0dCk7ICB2b2lkIGk5MTVfZ2d0dF9yZXN1bWUoc3RydWN0DQo+IGk5MTVf
Z2d0dCAqZ2d0dCk7DQo+IA0KPiAtLQ0KPiAyLjQ1LjINCg0K
