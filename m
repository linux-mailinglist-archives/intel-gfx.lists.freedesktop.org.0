Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D263AD44D7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 23:33:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA71F10E34C;
	Tue, 10 Jun 2025 21:33:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D1bt0XbZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D5A310E34C;
 Tue, 10 Jun 2025 21:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749591186; x=1781127186;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GXy7XTQGU70XUbDrYLSnAlRMiejsfx4Theas6ZB8/10=;
 b=D1bt0XbZtEyPXhV5j9ISuO991ZTbwRawlKaHCLAdF6B+HQLUi+4/ILrj
 10WperAgYsD6kwEb2xltp4WjnxvN7aGYvZ5gPlkvs9i2jh/H5xlMJWLTG
 btDQsokegjIfD3Z4nQ23nHYWSGsvxIZhafLSyqLkM2kZdf1/70u5Vrrya
 DXn4VXRnZKA/mkoEHYx/Ams0htoea8nWfXO9yV+5Tz3rkIFueDCj6eLcs
 5sc1fIKgvxxLdEsttJ2FRx1upvi9SNeWDRcwi6ky+ofHizPRvmTlXbd+a
 UTLqCh0Q4Jk6YPDYkekTMtX7XhCgOnDmRWSBf48OGK+ZR7+9kDMWYELbE A==;
X-CSE-ConnectionGUID: o7megR0zQ0yniicANdmxJA==
X-CSE-MsgGUID: 8FFsRCIQTX2J/sg8HcncGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="55522309"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="55522309"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:33:05 -0700
X-CSE-ConnectionGUID: va+H1QrNRSaWphn1/U7bRg==
X-CSE-MsgGUID: 003TTLchQAe+8O7tsBAhIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="147468919"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:33:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:33:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 14:33:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.40)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 10 Jun 2025 14:33:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jKM3gHHgmBfUR2LZj0Q2/rRN+ISLoCTbo6DMlqAGgZGGoRT369zdnwk1lOlw4DvPEL/GEXVGQasosTxNq88qArJIOO4pkEbiML6y0Ve4SZH7Ejefc/yNjwlgyN0RQ2+Y1JYjxnh5L7B65PlzRozKdeEsA0LCktIQVFCOzUJRjCfw4JJMehJz5YiuONQ+Mhm4jU7xhpH/cpe9yYXgw/1lofb6g8EkJ283ob1if4zZwTLSFjE3EcrPXS5RvlNJhBy2obfLsq6doUYtxIRRVL1LhCRMN2/Wxmh6/qPSpj/UHk0V9Fh2sO5PvnaORAekS5hGL4XwzAwVd+wQMHym7uqfew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GXy7XTQGU70XUbDrYLSnAlRMiejsfx4Theas6ZB8/10=;
 b=gt7Mam5LGsZW5opkyCY8xDa3ZApLSclG1wTAA+EvkKQuoZKM262NTJAoy9JpjKN1I2R08gxtueWsNLJzz6JFHNg6dGRPvlJDEN6dy7vMZpbOfCil017QUwxDVvLQI1CKDsvGuPVY1AnFmYYJwhrQzyOjl1RVJKVvSXteM1JAc9nqq17oZXy2qvHMQYzxhQvUr7RdMTni8jmPQaEy/M/02JP6AqraVW93CiuR/XuGvOHr/3Gn12G4XKhqzlP1UrLtapdJaTHK0f2I1cDtoaCi07FCEuCOVPrpHsx6mLBwTSUs0DQ6GIoUlh7Cj1J6tGICdgB8mMLjdnEjuFUjd6842Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7829.namprd11.prod.outlook.com (2603:10b6:8:f1::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8813.31; Tue, 10 Jun 2025 21:32:19 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 21:32:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 03/21] drm/i915/dsb: Introduce intel_dsb_exec_time_us()
Thread-Topic: [PATCH v4 03/21] drm/i915/dsb: Introduce intel_dsb_exec_time_us()
Thread-Index: AQHb2UhhzV7fMJFxo0+uSjmhMlvJMbP861aA
Date: Tue, 10 Jun 2025 21:32:19 +0000
Message-ID: <DM4PR11MB636060FF4A1659574E75A601F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7829:EE_
x-ms-office365-filtering-correlation-id: ab97d60c-491d-4468-3e93-08dda8664760
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?c2tKRDhCd2R3VWRBUmNySGIwSWlqdkxwSUtXNFUyaEpaYVFUK1A5aFNUNWUz?=
 =?utf-8?B?SnVHRTNYeVhDaDJpa1g0TWlCTFRSdndEZUpqbVRCK2lmamdEWHV5d1FOSU5z?=
 =?utf-8?B?ZEZJbzhibWFxdmR1aEhFSG5yaksrdE5odGVvZVlHK3JoYXg2aGFmWE1LbWh5?=
 =?utf-8?B?VUFoL2xSRFFXcGtmRmZMUG81SjR5cE9TcVBWdDVXeWRsU2dKVTYzdjA3Z0Rk?=
 =?utf-8?B?YTh2UVpoSjRSblJ2SjE3c1RDNEpVRTNsZ2ZCZFdSNlF2MENudmJJRTh6T0hK?=
 =?utf-8?B?TDhXYzZzUTFYYmlVZkx5VlhkVE5GN2JMM1Z1MTlYQTVTRG1JNE1Wemdyb3l0?=
 =?utf-8?B?cW1NSytJTzBpeGUrZEh6OUJyMFd3OHN2ZWJoSklBSWpmK2ludlBiSzU0NzdI?=
 =?utf-8?B?c2M0ODMrZUY1VEdmeVNHUW5LaGdqS253WWtsa2xvUDlUN1hnaWdTMHlSSUVZ?=
 =?utf-8?B?aThBZlNaSndRaCtoMFRZcFYzOTNZL1psakpadWRnQ2g2WWljenZKNVV1emdp?=
 =?utf-8?B?amhwb3dVOWZVc0NkZlFVZFlqK1QyK0xrZ2xjWWFJQjM2bWNIcjF6QlY1TXRh?=
 =?utf-8?B?SkM4WFhqYmpuNlRMeDByT09RTWxwL1c4TjVBU0hnbnNCbVlaZ29sV3ZtN1Rp?=
 =?utf-8?B?U2hzNzhXT2J4VmJta2EweTNJRzAraHN4b3lWMGQ0MWphcHJ3NW5pRUtGeUdF?=
 =?utf-8?B?Sy9wWHRheUVvYUpRRE9oSUw4SzlpcFFFZWIvMVljeE5pWUhVcGY5MzZjVUJn?=
 =?utf-8?B?cDVDZWJTb2d4ZlJ2MXFIK01nbm9tVVVtNWFSSjZrTkM1MVFTanYrMktpUXRk?=
 =?utf-8?B?OVVjRFJvWHhJK3BMWlRhalhETm5FcVZxT2NMbnJnS3Y1Y0s2WFZocVJXR3R1?=
 =?utf-8?B?S0tKSVZHaktCSnNBc00xMi9yUVM4dGhITDVpVm53ZlBjM1dKYU80SmpHaTJx?=
 =?utf-8?B?bHJRQ1dubVd2U1ZNQmtaSitOQWRLUERvZi8ySWUwYlBqNFVaendXdnRHR2ln?=
 =?utf-8?B?NXJLdi9icjRFMXVQdVNBUU14Rld4ZEZncHFQS3VWdFdOWnVCTGxhbkRNeXZZ?=
 =?utf-8?B?eDlPb2s4ZXVYcFgwOGpXaW05RmIxNWhkemFjZDEwd28yR01BRVNWWnNjTDRC?=
 =?utf-8?B?RWNTU0E4S2d6cVM2YlVGb1owcjVvT0ZtNjFmVVVROUZJQm5HVlFTMDVoSFA3?=
 =?utf-8?B?eGQ0a1FNQjUvLzNOK205c1pZQUVCcVdBYVVJOXB2bFhQMFN1N0ZXaGh3bjNj?=
 =?utf-8?B?WkZZeXQzOUl3dVdtZDE2a1lwYUpLNUs0UzlaczBnNUQ4VlpNdEZZUllKWElu?=
 =?utf-8?B?akh0U2poWlM5SFlwVDAyaUNBc01ZYmp5Q1F3WUVyMWswelYvTzNXVGpWR0pr?=
 =?utf-8?B?TEhIdWdocXFPVkZMWUs5UURMVEo1ZFBHRmxOdHVYanFzeVQwSEFvYUI5cGhk?=
 =?utf-8?B?M2d6RmZVU2k2VTJScitNb3lLRWl6ZnU4TmNicGZTRUJ2bWZ3UG1WaXZsMUNK?=
 =?utf-8?B?T0wzZ1BMS2NGZlBqR2pLMVcxd2htcENsYll5VTByVkoxL0VjN1cwaEJyclNW?=
 =?utf-8?B?Ymd5cWpJTFJtT2pOc3YvSk1zclpLN2JFRktyajFac3UrYS9pQ2J1UGpvRE1X?=
 =?utf-8?B?SzI0ajQ5VHJlNmpoek0xV1RReDc1dXpubjExQkJRaXBjT29vYy9KcmZQSkow?=
 =?utf-8?B?NWRIczlrT3ZNSVU2RHVTd2ZFNjFXTERCRis4SUV0RUswVzVIUmd2dmN3Tit3?=
 =?utf-8?B?dnZuOHQ5dnVINWFwU3EraUdmZjR3Szdxek11UGRKdVlqTzZCM3hTOEhZaWpZ?=
 =?utf-8?B?UEZIMlpBdW0yRzQ5ZXdQelpjaTBOaVU5UlBFbUdCM2g5a1JKbEFzSGFKWkdt?=
 =?utf-8?B?R05DV1dLMWpPSEh6WllMY1JNa1NzOHMxeS9pdmltQ3FLSU94bHBWYk5Lc1d1?=
 =?utf-8?B?cHdhUGJMdmJrMVVJTzNCUGNOME5GbXM1SUdocDVvOWR4NUJrODN0R2RJeTk5?=
 =?utf-8?B?UnRIYVNLQk13PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGxJQ05SSUhUVGE5Z0o4SHNBVXhNRFlMSG9QVXJnMWJFY0kyMEkrZ3R1OEpp?=
 =?utf-8?B?TGxNUHMzQXdQTThGQWs4SndsRy8wTkVFTmdLL01NVkUyQ1FINXJlcUpiVEpF?=
 =?utf-8?B?bTBNcDlrc2psOFk1K1pVYzFxTm1mblR5ZW50czNGTG5iNGVEdXV3M0VwQmhi?=
 =?utf-8?B?Z3Q3VkRSNlBpS2c5b2pEK0ZzMGlaTmF3YnBJTDFpajJSM1c5YkN3b3lnTlV2?=
 =?utf-8?B?TVZ3THVMUUdCWldITE05QWpPc3pETU1qVTJDM0MvSW1UNkJ1RUwweUVQdkJH?=
 =?utf-8?B?Mm9kOHFVRUxjcHAvNGFyQUR5RG9nREViaFhDTkJhMUZhMkRqTFBPNk9iVHAw?=
 =?utf-8?B?cjdpdGtReldLd1RrK0tkeSt4OFVVUFp2NTFQUEt6a21oUTh5cWdiNStIdVN4?=
 =?utf-8?B?ZkZaS3RKalIyMzFCQzBlVDk5K1ZTZ1A2K0xvZlh2MnE2eHNvMFNXdWEzdWpC?=
 =?utf-8?B?S0ZUK1VBY3JnaWljeTFTejlmQVk5OWdRYzZ1S0VSaStRckxYMjdFVFlWdzRC?=
 =?utf-8?B?QTdsSHg3R1o3SmVwS2Z3SW9IcEVwdHJkRU5uQzcwZUFiWWx6cUZOM0l0NEVl?=
 =?utf-8?B?ckpjdWE2MkoyN3FTZVByK3RKOE5ORUt6blpKazg2RGxnZGIzSk1PbjVGcHIy?=
 =?utf-8?B?V3ZabTFSWmlUbU5kMmxCaXFRei9CcUNQNjJaWDJQbGtScDlzN05jVGY4eHdv?=
 =?utf-8?B?T3FDNUh4M3JoRFlmOUt0UHd6eDcvVjRabWh6SXh1dFpQeTJEUkFSMHRDejZM?=
 =?utf-8?B?K0NudVJOaEZ0VHl2dHdwMmM0S1J6NUd1K1ZvKzVzbWlRRFFFcXFBRFRwVVNp?=
 =?utf-8?B?bzB1ZHJSSFV2N2pSMy8wNVVaWWNIR3lHRDVuQ0ZHeElVbXhRRFQwR2MwS0JR?=
 =?utf-8?B?Z1JtYlhGMStMOVl3ZC9uTTZLUm5uZW9iTlFsS1hoMllLS1pZdHg4SDhKTVd4?=
 =?utf-8?B?Z2RLRi9sVTNzay8ycDVNQmpkWWNtLzJudWlIMHMvUGtHdnNPK2t6bmNsR0R0?=
 =?utf-8?B?MWoycTlVQ1BPSDFMSDNpWHk2cm10bW9RNE9uSjhPN084dXEvZVV1bE03Z3Nw?=
 =?utf-8?B?a1lIU0IxZmhqb01qYmc1ZGg4UEJVbUx0b2QxRExOUHh5MWxhbXhpcDZQdFNx?=
 =?utf-8?B?ejJYMmRoc29CQjlPaWhvTWQrUzRKZkRiWDg3TCtEZ0M5Mi9RblJkNEdLRFUx?=
 =?utf-8?B?bFZEc3crc0Ewa0VhRWYyeDVia2FSWGZxY0grVDlTTk9ncVhCdzhqOGNaNzRh?=
 =?utf-8?B?Wlg2bFRFZlNaWUFkLzVRNjhSZE53bks2eVJsMnYvTlpoSnBjUE4xbEdqWE5v?=
 =?utf-8?B?eDhGcjZYZ3ZxNDBNODl1SDBBUG1sUXprVTI5YkxLK2NreU44RWJ4MmJvQzNh?=
 =?utf-8?B?U0huSFQ3RExNa0JWbTNPRmhMMFg1b1hLNXpqN3BXVkhDSjliZ2VpdGh6dnRu?=
 =?utf-8?B?ZVRDWS9UNlpYYmNwc1d3Um9HSGFrTVkwWlNWQTVSM203OENpeVdCbGZEWm5o?=
 =?utf-8?B?MnFzRDVLTFUwWnEzNHNLU0tyZ3FvcEY4RDVlSGxVNG9mYm9nSU12cmtRSE42?=
 =?utf-8?B?b09ZeWowZjFidmhncENRellhM29zV2lQM3NuSjdjOE5Xa1pGbExWVmJPMXk3?=
 =?utf-8?B?cXdmb2FKU09LaWdEbUgrSFFjdzNTNTRxSHVxZ0dtTDRpSERmMTg1S3NXSStx?=
 =?utf-8?B?c3ZWaEFlNWhqSFY0VnB1ckk3SmJMeStZeTN5NlY5bDlSbWI5UTl3M1ZqNTl5?=
 =?utf-8?B?VmIya0RPOHhKSlFpb2J6bnV4WWRqaWRXU2MyazFnSDY0dG5QM1NvL3pWRy85?=
 =?utf-8?B?ejVZZERldS9VY1NKWHhDQkJJVUh4Q1J6cnNLbWdrYmUvK05jZFZzNVdvRjlU?=
 =?utf-8?B?MWpscnMrZjJxd3VyUmljb0svYVF3d0tQM3VJVW5VS3p3NEJpeW1PR3gwZm9G?=
 =?utf-8?B?cnE0QklWUi9DRk1xZHdXY1dtczRkQzZRK21zNEFwNjhrY3UxVTdWQUw4VnRM?=
 =?utf-8?B?YUN5dU9tNlRHSXhFdVZkUEh0RGZkVTI3cXhhMC9FTlRnMklVVVRGWTRKTFZ4?=
 =?utf-8?B?cTlxWWZEWDN6WEM1WXNzSU1UU0JtamdyUjR0elFyMEhUMVk1ZE5EblFxc1FB?=
 =?utf-8?Q?Ebt5PAZKgch1CTVQ/If61rjFI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab97d60c-491d-4468-3e93-08dda8664760
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 21:32:19.3968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Glb4Dof4A2o75k4PNcGpbtSMnlHbGi0KG2U4OZt5gDk0kVxsdV9vqXpRE/maSEJwvClsPQNtBxcz6cTlh3KiFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7829
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
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgSnVuZSA5LCAyMDI1IDc6NDAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDMvMjFdIGRybS9pOTE1L2RzYjogSW50
cm9kdWNlIGludGVsX2RzYl9leGVjX3RpbWVfdXMoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFB1bGwgdGhlIG1hZ2lj
IDIwIHVzZWMgRFNCIGV4ZWN1dGlvbiBkZWFkbGluZSBpbnRvDQo+IGludGVsX2RzYl9hcm1fZXhl
Y190aW1lX3VzKCksIGFuZCBhbHNvIGFkZCBpdHMgY291bnRlcmFwYXJ0IGZvciB0aGUgbm9uLWFy
bWluZw0KDQpOaXQ6IFR5cG8gaW4gY291bnRlcnBhcnQNCg0KQ2hhbmdlIExvb2tzIEdvb2QgdG8g
bWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0K
PiByZWdpc3RlciB3cml0ZSBzZWN0aW9uLiBGb3IgdGhlIG5vbi1hcm1pbmcgcGFydCB3ZSdsbCBq
dXN0IHRocm93IGluIGEgcmFuZG9tIDgwIHVzZWMNCj4gZm9yIG5vdyBzbyB0aGUgdG90YWwgaXMg
MTAwdXNlYy4gVGhlIHRvdGFsIGV4ZWMgdGltZSB3aWxsIGJlIG5lZWRlZCBieSB0aGUNCj4gdXBj
b21pbmcgZmxpcCBxdWV1ZSBjb2RlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMjYgKysrKysrKysrKysrKysrKysrKysr
Ky0tDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggfCAgMSArDQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggOGNi
YjU2OTVjNjUxLi5jODAxMWY1ZTQwNzYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtNjg2LDE0ICs2ODYsMzYgQEAgc3RhdGljIHUzMiBkc2Jf
ZXJyb3JfaW50X2VuKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5KQ0KPiAgCXJldHVy
biBlcnJvcnM7DQo+ICB9DQo+IA0KPiArLyoNCj4gKyAqIEZJWE1FIGNhbGlicmF0ZSB0aGVzZSBz
ZW5zaWJseSwgaWRlYWxseSBjb21wdXRlIGJhc2VkIG9uDQo+ICsgKiB0aGUgbnVtYmVyIG9mIHJl
Z2lzZXRycyB0byBiZSB3cml0dGVuLiBCdXQgdGhhdCByZXF1aXJlcw0KPiArICogbWVhc3VyaW5n
IHRoZSBhY3R1YWwgRFNCIGV4ZWN1dGlvbiBzcGVlZCBvbiBlYWNoIHBsYXRmb3JtDQo+ICsgKiAo
YW5kIHRoZSBzcGVlZCBhbHNvIGRlcGVuZHMgb24gQ0RDTEsgYW5kIG1lbW9yeSBjbG9jaykuLi4N
Cj4gKyAqLw0KPiArc3RhdGljIGludCBpbnRlbF9kc2Jfbm9hcm1fZXhlY190aW1lX3VzKHZvaWQp
DQo+ICt7DQo+ICsJcmV0dXJuIDgwOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IGludGVsX2Rz
Yl9hcm1fZXhlY190aW1lX3VzKHZvaWQpIHsNCj4gKwlyZXR1cm4gMjA7DQo+ICt9DQo+ICsNCj4g
K2ludCBpbnRlbF9kc2JfZXhlY190aW1lX3VzKHZvaWQpDQo+ICt7DQo+ICsJcmV0dXJuIGludGVs
X2RzYl9ub2FybV9leGVjX3RpbWVfdXMoKSArDQo+ICsJCWludGVsX2RzYl9hcm1fZXhlY190aW1l
X3VzKCk7DQo+ICt9DQo+ICsNCj4gIHZvaWQgaW50ZWxfZHNiX3ZibGFua19ldmFkZShzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCSAgICBzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IpDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+ICAJ
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiAgCQlpbnRlbF9w
cmVfY29tbWl0X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiAtCS8qIEZJWE1FIGNhbGlicmF0
ZSBzZW5zaWJseSAqLw0KPiAtCWludCBsYXRlbmN5ID0gaW50ZWxfdXNlY3NfdG9fc2NhbmxpbmVz
KCZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLA0KPiAyMCk7DQo+ICsJaW50IGxhdGVuY3kg
PSBpbnRlbF91c2Vjc190b19zY2FubGluZXMoJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUs
DQo+ICsJCQkJCSAgICAgICBpbnRlbF9kc2JfYXJtX2V4ZWNfdGltZV91cygpKTsNCj4gIAlpbnQg
c3RhcnQsIGVuZDsNCj4gDQo+ICAJLyoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5oDQo+IGluZGV4IGFiNjQ4OTc0OTg2Ni4uNmJjZmIwM2YzNDE1IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gQEAgLTM1LDYgKzM1
LDcgQEAgc3RydWN0IGludGVsX2RzYiAqaW50ZWxfZHNiX3ByZXBhcmUoc3RydWN0DQo+IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsICB2b2lkIGludGVsX2RzYl9maW5pc2goc3RydWN0IGludGVs
X2RzYiAqZHNiKTsgIHZvaWQNCj4gaW50ZWxfZHNiX2dvc3ViX2ZpbmlzaChzdHJ1Y3QgaW50ZWxf
ZHNiICpkc2IpOyAgdm9pZCBpbnRlbF9kc2JfY2xlYW51cChzdHJ1Y3QNCj4gaW50ZWxfZHNiICpk
c2IpOw0KPiAraW50IGludGVsX2RzYl9leGVjX3RpbWVfdXModm9pZCk7DQo+ICB2b2lkIGludGVs
X2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiAgCQkJIGk5MTVfcmVnX3Qg
cmVnLCB1MzIgdmFsKTsNCj4gIHZvaWQgaW50ZWxfZHNiX3JlZ193cml0ZV9pbmRleGVkKHN0cnVj
dCBpbnRlbF9kc2IgKmRzYiwNCj4gLS0NCj4gMi40OS4wDQoNCg==
