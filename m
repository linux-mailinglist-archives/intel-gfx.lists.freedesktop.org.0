Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5D4AF657E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 00:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3EF010E7A1;
	Wed,  2 Jul 2025 22:42:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZNzUzfyy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D07F010E79F;
 Wed,  2 Jul 2025 22:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751496134; x=1783032134;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qTAk9ezJTUHXVBUTEqXSvjyrt0+unW131rmUYosrWeQ=;
 b=ZNzUzfyyr0iBu3deKMm1wKYrq3Ew+mN2WPBhmxWXpZJ1p/8GLnFAKg51
 pjAh8n8OpCT0AucCbS1Dh5DZQsNlcUJN/8Oy3P7tx7koLHvxLd9Onu5nn
 EU2Y6V1lZQv8o3WfrBx8Y3r8lzAR7xDIlEdS5RvlRqeXzsd7WVU9uVTsV
 N7AeZNRtfzPJsoJ32RFdKf9rp+ElOA8ITRg/57nmOL8iQiZNAWv8pee2G
 DDyHCqrpK3VPwmlEX1pf6ZxjYVPfW85ddqeNWlDeyb4sVRm2j0YMIiuSY
 UcGxUMx0jNBq18Q86mxAdy19Ed5QJiSteHhXANUWGZ/OMG4cOUwWy4GZ9 Q==;
X-CSE-ConnectionGUID: GsfsdD7oSQuwYkIsCAUpiQ==
X-CSE-MsgGUID: 7txW00MsQqCsbUKHnDSzfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="57485504"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="57485504"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 15:42:14 -0700
X-CSE-ConnectionGUID: U3BZh85FSi64gH3AGT8Nww==
X-CSE-MsgGUID: XW98p8LFS+CCayisKQIUyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="158485538"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 15:42:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 15:42:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 15:42:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.62)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 15:42:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K64J/FVE2Q8Bwkk8xKat/mkGMkHqX2pPTa9Agt4JtA0VxLF6QlrV8yVC6R5sCxULZ8t/6Z/uvTkhUMSiLhgx/uYe8IQ4dsmnGWheACfV2UOokHUaLa+zA6/2Ziccu+DWHIj/iJPx4v5TPINubea1FLZ260TWUj7l+d33jHjRkLO0SA8k9DDriKmjnJcEvz+O7Bd06ke+6hWk+dGJ69SeGANS8pKS9I49Gr/Z47mlomWhQ2muUFzFKhNm+qCUMfss94cqbhrJNE4MsmspgRME8UkS2XTigZLRiuYnITZfNbOHFbgFer+VKo9xkdO+eBmCjrzk9qzmTirP+3umeE1YUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qTAk9ezJTUHXVBUTEqXSvjyrt0+unW131rmUYosrWeQ=;
 b=dSUhnqjwnVaOKI8o1icc5DzfNbDVYltO21vRToe0AsUtCvpNwkzrqMD3PHntMz3xwQXrZyR+oXSR8qzmQTtiSRHrP6xZx7WmkGGs+XvhgMG0CemVU6yBz5hC8UbReJ0LiRsxlB9UehnPGyI3Hn5d1EvP2O91zPWalhUBtinYI/AVTv/fkMMn4QFVArTN24xhsvr0M4zlP+kpqvALuromk5wNrzkhtVQ2lxFqEUdANWwQhiQWbR8bo+CzcLN2HVVQITaMF3G6a7lgRh843jU8a1ELsvr6ceKM+CDpiW5AGxWrux6mlpkp6hZzpUOCQzHxkKYdsIl/6eOL8idpQP2aaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5373.namprd11.prod.outlook.com (2603:10b6:5:394::7) by
 CO1PR11MB5201.namprd11.prod.outlook.com (2603:10b6:303:95::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8901.20; Wed, 2 Jul 2025 22:41:57 +0000
Received: from DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::927a:9c08:26f7:5b39]) by DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::927a:9c08:26f7:5b39%6]) with mapi id 15.20.8901.018; Wed, 2 Jul 2025
 22:41:57 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/display: Read DP_ADAPTER_CAP to pass LinkLayer
 DPCD&EDID tests
Thread-Topic: [PATCH] drm/i915/display: Read DP_ADAPTER_CAP to pass LinkLayer
 DPCD&EDID tests
Thread-Index: AQHb6r4TuKy7sdHFlkWWChACPQ11+LQdzvEAgAB2BACAADg6AIAA8lsA
Date: Wed, 2 Jul 2025 22:41:57 +0000
Message-ID: <69bf86700b80ceea478cb55f4568f6b4803fb2d7.camel@intel.com>
References: <20250701192631.3750408-1-khaled.almahallawy@intel.com>
 <CH0PR11MB54442C75AC8F390EA7B8AAD8E541A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <6e084fa193864dec9237bdbd7f7978f15d8da0e9.camel@intel.com>
 <7b90b178fde76a8a1fda54d217265ff3c0372955@intel.com>
In-Reply-To: <7b90b178fde76a8a1fda54d217265ff3c0372955@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5373:EE_|CO1PR11MB5201:EE_
x-ms-office365-filtering-correlation-id: 15945025-1bd5-4bfd-5838-08ddb9b9a6d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?OU9FRDhaVTlnR2FCcitSa1YxT3lMMW9OdDMrUzNIQWlkWGxtY0xhM0tiV1R2?=
 =?utf-8?B?N2srMDJWYUpJZ3hwemU3SGRTVXNiTXo5WFlzeWREVVZKYUQxbkVJbGFlRTJM?=
 =?utf-8?B?VlhyanNRMXR1aWZTbGZrcDl5VEI0OEVBaklwU1ZtSmVROFVzTEQveDhEUzlL?=
 =?utf-8?B?cTYySHpnNk03TXdZWmJhei9lZFg3T3h3dGk2N0orK0xuZWZQN0l5VHVZVEtB?=
 =?utf-8?B?K3dkdHl6MHJwRXp0V3ZYb1pJUEtTTS9lSk90Wk1LRENBWUh4TXNWMDNtdmFi?=
 =?utf-8?B?dVZESGMwSmhtZUhNeHJhcFh1c1I1Q1d4SUV4cEJNbVkyN1hpNDA2MVc5ZllR?=
 =?utf-8?B?L0NWS04vRnliaW1hTUFnbW1YN0xjeEJ6V01YQm9SbGpXUi9UQ2NBMVZwZmtF?=
 =?utf-8?B?VmZlbDNGQzFoVFpsUDBDdWxHTmdHK2N4bmVVNFl4dmJOS25LbUxqN1JzaXZQ?=
 =?utf-8?B?azI4NnZlUTEycjZlWmdHbmtyaVB1RHQxM3dTTllTVFBOOFJPM2h2cWJQMUVZ?=
 =?utf-8?B?SENHRjFlcnlEbkxQWXJUbUVVT0dHeTRBMWRXaWtoQldQK2kyUzQxalg1bTg5?=
 =?utf-8?B?T3JRSHBWaWRPYXJkQlhmM1ZyN1YyOFNCYkpoRUJDSnVpM0oxN29kNENhVk5U?=
 =?utf-8?B?WUg1L3FyL2NCYUoyU3N2d21kNDRtUjdRaWlJWE5tSzA3RkhObit1WVVwSUlY?=
 =?utf-8?B?eGRacTBvRGgxa2doVVlueHIzS1lYWXJOTWVDMm1DQ05VTHo3S2VYK2htNlpS?=
 =?utf-8?B?TjRRS2pEY1l5MzJLZVEzOS83NmpvSlVmSEFkQytvQVk2bXlLWUpVQVdwTThG?=
 =?utf-8?B?aTNTbHIxVnNZdExEUUdLM0Y1UEx3Z25HdDNaM3VxR2pTVFRkNDMzMk5oSWFP?=
 =?utf-8?B?NmZUUDg4ZWJxcllsakZBMkpBSjlqK05sSGViOWpmNE5vVDdya2xJemRkTjI5?=
 =?utf-8?B?akVObVpUSkRoOXNyMVFRYWFEcjlnOW16QmtweG5hbjFJT24rZitESVJwbzhJ?=
 =?utf-8?B?UHFZTFZjNnBpNVhBM3lTaG1YV2RQYnFQZVVmek9Md1M2TnlUV0JEVmJTT0Nr?=
 =?utf-8?B?b1AycTU1VEVDK0ZlQTZFMTQyZk9hZjZjZDhSVWdkYUg5R0tDRkZzelRGM29J?=
 =?utf-8?B?aDA5a3YvZjJQc3Z0REswdUgrS3NEeUFZL2V5QTFNVEVRNEphc3JaZXdscEhL?=
 =?utf-8?B?ajlHRTI1OEFCa3pFMTdYVDBVYXZPejFxZThoMnZSbGxMdEI0cUlPUkZ4Rjdz?=
 =?utf-8?B?N0N6VU41NTU3ancrd0pqZGVraFBKa3QxYlAvT0xWc1o4cVhJaTArMnRQZmVw?=
 =?utf-8?B?TW9vaWd2aTJXV1BNVXArU1I3c2NSUERnMkRZcWtVeWY3TnMvazBoZEFsQzNk?=
 =?utf-8?B?K0NLZ1V3cys3TXkyWVJXTHo4Z0NuZjNZTis3Q3hiTjMvN2FUUGk3dzJxeDZ5?=
 =?utf-8?B?RkVTY2NycHhZbXBtWGFSbUdObjhnT2JqZ0FhVlJqeDByQTFBRUFSZ0lCZmpN?=
 =?utf-8?B?ZkdENzJzNnl2SmE0VVh1VTV0UTlLbFdBaVNFOXlTWXpESk9pU0swNUtpeUR1?=
 =?utf-8?B?QWRtUzNNeUNwSGdHdllHZEpOWjloVEJMUUFTcks4eVZ1eURxYk9xN3Nabmxz?=
 =?utf-8?B?aGw3K2xma2piZDZQOEtScXlVYUFQaVlGZUJWZlVsWStIR0I2Wi9UZVd5V1c5?=
 =?utf-8?B?MzFXQklDRUgvdEpjNC8wckFuaFRoVjRncWYvRGxhdERrQXlPaWF1RE0vZTN0?=
 =?utf-8?B?dGFUTHE4OE96RnUvRTlLUDEyR2p3NEZrSUdMYUxuRlU5SFdsVUh1NUNuQThW?=
 =?utf-8?B?Ym9SVng0TFZDWHNtdUdYaXJlbTAxaUs1cVVVbVdCQTZSWm1naWFTS0RJclNM?=
 =?utf-8?B?Q2N0eVhoSUQ4T0hpaXdrcnExeXdUUkc2TE45S2pZVEg1RnJ4bTg1cStJb3hI?=
 =?utf-8?B?amF6VnNHU3ZNTDZyU09NWDMvaU5XOUc4ekhlNE9QSFFsZGdSVll5eEFnbVJD?=
 =?utf-8?Q?6/YgklD/O4xKwFx+WIP5WpI8AybJF4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5373.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0NKdGtkelFJRmgrZmp2WnUyRXZZQ1pMbXhJMWsvTklYQStLbDk3TnNJWjdC?=
 =?utf-8?B?YStwcFRhdk1kUklwZVI0MU4wTzhKMEpXbGR6WHh1cnZPZTlFV2tsQXpnVmhD?=
 =?utf-8?B?UFEvWkxoUmVEcmZmVVdONi9aMnR1M3dFckxRSS95UGtkS1ozYnBta3dMekZu?=
 =?utf-8?B?UGxmS3ZWM1BBbENRMzljZUNNT2R4SWcxZXlWb2dFT1RHRWVDWEh5OXVUZTFn?=
 =?utf-8?B?VUcrdDFwUDJKbFhCTkdVWm5xaDJCeDRRckE1bXllbHNha1EwUVVXazdIRTRJ?=
 =?utf-8?B?eGpVT3NvZVVhSGJZSjZlV3NaQk4wd0s4SXB1S1NCcG90UnMzUzBoY2pEblli?=
 =?utf-8?B?ckdHRzk3QllPMVRIbzc4NUgybysvK3JMSUszcjlvdDl2OEtHZ3FsVVlNVmpM?=
 =?utf-8?B?YjF4OVVyM2g3WHJ2WXJ0dFRCSnR3cW9FQ2RtT3JlNlV6RHAxSGF6NjFVOGwv?=
 =?utf-8?B?dHR5Y2tyeEtlbGlmTEtmalQvZEVuVUJNZ29LMEI4K3FyUDI2UEZPdnN4b2ww?=
 =?utf-8?B?TkRKVWNRMjVKSS9jZWhQMHdVUndMWTdBM0dWcHliZ3RMQ3B4RFZ1VVlVb3hX?=
 =?utf-8?B?RXNsbm9kRVA0b0J4a1dEeC9qMTZDaTZoRFc0ZUg2NXhFRzlpd2IvUkhrRCtF?=
 =?utf-8?B?UXo5WFY3bk84YlVsU0o0RFF4R0N1QWJRSmFVRG1ZMGNONk1zT0pCZ2N2WGhy?=
 =?utf-8?B?UnQ2WUtvclYzTEZNNkVSZHRkWUxlVUpWaFovWGRvWTluWVhMMjFlcHlLRFNz?=
 =?utf-8?B?U015d0t0RkFJSXNuTWlUYmtvbHV2Z0ZabzRuM1Q5STlWK0JHOC95U1pscjkz?=
 =?utf-8?B?M1N2WGt6bTcrRUtQQTdVWVJGa2V2bmNySVVTRXlNMGh2WDNnWjZ6aDI1aWsx?=
 =?utf-8?B?U2NOUDlxUkYrOXFnT2JvSERuSjdXNUdtQVVQc3JjMGtGdktqeHAwOXZMYUhv?=
 =?utf-8?B?NjFTWUMwbi9uV0tkYjIxTWVZWldUZGJOampHaTQ1M2lQOTVRc2hXN0Q4ejVB?=
 =?utf-8?B?SWlJZmV5N1RNM1FXRW1haGRubHI2UHhYbkxwMFE3dmFmQ3h6aWZyQ1NYWldD?=
 =?utf-8?B?RGlNSnpBOUhoN0FzWTlVUlR3Z3c4UDFiSnozeW00aVVibXB6a2ljd1hjQ0ZJ?=
 =?utf-8?B?TmVJRHFRc2x1bzBtd09wSWE2em1rcjZ4b0YrL1MzYmlyQ1pmMmhsdnh0aTB6?=
 =?utf-8?B?QkpMTW5EUW5QUWFxd1c2VkZ2b2FOaTN3dnpraDlFdnhraFlHNUJIa3h0c3Yr?=
 =?utf-8?B?SVJOSWFLSkZ0ZTZwR3hKQXhnSWtRTmZGaG9zcVNuUjB2Vk9wT2JnOWpTdUVK?=
 =?utf-8?B?elZJaTl0Y3F4Wno1a3N3T1RvT2YyWnFZRTM3ZUU2cEpMK3Q1OHNTWnViQjVL?=
 =?utf-8?B?UGhGaXV5T0ZqTGw2dFF1WTlreEpPN2hOS2dkYW5pYlFpTGtkWldLVWJWYW1C?=
 =?utf-8?B?V25HTXJWTEc5aHBKdmRDbmdJNW10V3dvNkRXazBwcWROSk94Mm5nRmRQTGZV?=
 =?utf-8?B?QzZuamh5STdpclUzU1ViU0wwajBFVWRXNDVKajlLSkIySGZ2eVI5cHJiclRK?=
 =?utf-8?B?dTYwNXlXWXp0Tm0wQk90Zms4SFAyTHk5TjNQOWF1S3BLTGNIWkg4RU5mZE16?=
 =?utf-8?B?QmlhYnpkckRmWEZmU1FlMVBsM3U5WDh3bnVhZENtaWVsSHM4NUtsaEttV0M2?=
 =?utf-8?B?aUNiQjhjc0wvVU9VZ1JTM2VtY2o4NCtFNFNOVnZXYlNvNkpERCtQOTF6clp4?=
 =?utf-8?B?clFtaCtNWE9hTnNYbG9oTXFyOVg1S0dZWmh6MkRZRUdOU3drZHVjbFp6L3lU?=
 =?utf-8?B?bmJMVUVJU2VMM3h6TjZkU2tsbnc0OGJvTE4ybmNjYXF4eW03LzdZdm5obmhh?=
 =?utf-8?B?L1ZleTFaeWJyc0ptcVpTUnRHOVg3UzZVWWdBZlc4ZEtSaVhZZGxVbU90ZHUr?=
 =?utf-8?B?YTh2OFNuY1U3RUVjQkpqZk5ERFZBSDZyMTVQSkE5b25xbXlXZGgxeEtyKzh0?=
 =?utf-8?B?NEw1VmEvd2FYRkRIZUttOVhlWG56cjRBVzZWVnA0emFzU3U0OW93MFQ3Y1NN?=
 =?utf-8?B?bUlFM2lDWG5FS2tFUWwrdXc0TmZoMzliT0JXYnlXaGZjdDNsaXBnMU5wUmN4?=
 =?utf-8?B?U2VWcUp6ZVBlc3U3VjBibnZ2RzFsZ3VtQlp3enhONHdVdTU1aDVwNjZPMEZH?=
 =?utf-8?Q?Rv3rsUCj7dIkQzeqFFu4kik=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <ADC3968C2B6D70479DAC3BC755F65C6A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5373.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15945025-1bd5-4bfd-5838-08ddb9b9a6d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2025 22:41:57.4986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: am2hHtVJiTm8ha5Z+PzwJnE5wTMGcN2nOLxMexlUmjFlqMsB8m0425lnIkP2f8I8OKa3nTaYR/hCy3y4/1mkJuNUk3EgW/s7LkMoQ7JBqg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5201
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

T24gV2VkLCAyMDI1LTA3LTAyIGF0IDExOjE0ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAwMiBKdWwgMjAyNSwgIkFsbWFoYWxsYXd5LCBLaGFsZWQiDQo+IDxraGFsZWQuYWxt
YWhhbGxhd3lAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBPbiBUdWUsIDIwMjUtMDctMDEgYXQgMjE6
NTAgKzAwMDAsIENhdml0dCwgSm9uYXRoYW4gd3JvdGU6DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0
cy5mcmVlZGVza3RvcC5vcmc+IE9uDQo+ID4gPiBCZWhhbGYNCj4gPiA+IE9mIEtoYWxlZCBBbG1h
aGFsbGF3eQ0KPiA+ID4gU2VudDogVHVlc2RheSwgSnVseSAxLCAyMDI1IDEyOjI3IFBNDQo+ID4g
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gPiA+IGludGVsLXhlQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IEFsbWFoYWxsYXd5LCBLaGFsZWQgPGtoYWxl
ZC5hbG1haGFsbGF3eUBpbnRlbC5jb20+OyBTaGFua2FyLA0KPiA+ID4gVW1hDQo+ID4gPiA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPjsgTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQo+ID4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IFJlYWQgRFBfQURBUFRF
Ul9DQVAgdG8gcGFzcw0KPiA+ID4gTGlua0xheWVyIERQQ0QmRURJRCB0ZXN0cw0KPiA+ID4gPiAN
Cj4gPiA+ID4gNC4yLjIuMSBMaW5rTGF5ZXIgdGVzdCBzdGF0ZXM6DQo+ID4gPiA+ICJWZXJpZnkg
dGhhdCBTb3VyY2UgRFVUIGRvZXMgdGhlIGZvbGxvd2luZyB3aXRoaW4gNSBzZWNvbmRzDQo+ID4g
PiA+IGFmdGVyDQo+ID4gPiA+IEhQRA0KPiA+ID4gPiBiZWluZyBhc3NlcnRlZDoNCj4gPiA+ID4g
UmVhZHMgdGhlIERQQ0QgUmVjZWl2ZXIgQ2FwYWJpbGl0eSBmaWVsZCAoRFBDRDogMDAwMDBoOjAw
MDBGaCkiDQo+ID4gPiA+IC4uLg0KPiA+ID4gPiANCj4gPiA+ID4gRmFpbDE6DQo+ID4gPiA+IFNv
dXJjZSBEVVQgZmFpbGVkIHRvIHJlYWQgdGhlIERQQ0QgUmVjZWl2ZXIgQ2FwYWJpbGl0eSBmaWVs
ZA0KPiA+ID4gPiAoRFBDRDoNCj4gPiA+ID4gMDAwMDBoOjAwMDBGaCkgdGhyb3VnaCBBVVhfQ0gg
YmVmb3JlIGxpbmsgdHJhaW5pbmcuIg0KPiA+ID4gPiANCj4gPiA+ID4gRml4IHRoaXMgYnkgcmVh
ZGluZyBEUF9BREFQVEVSX0NBUCgweDAwMEYgJiAweDIyMEYpDQo+ID4gPiA+IA0KPiA+ID4gPiBD
YzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gPiA+ID4gQ2M6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEto
YWxlZCBBbG1haGFsbGF3eQ0KPiA+ID4gPiA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4N
Cj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9saW5rX3RyYWluaW5nLmMgfCA3DQo+ID4gPiA+ICsrKysrKysNCj4gPiA+ID4gwqAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0
DQo+ID4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3Ry
YWluaW5nLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2xpbmtfdHJhaW5pbmcuYw0KPiA+ID4gPiBpbmRleCBhNDc5YjYzMTEyZWEuLjc2MmRjMDczYjgy
NCAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9saW5rX3RyYWluaW5nLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gPiA+ID4gQEAgLTI1Miw2ICsyNTIs
NyBAQCBpbnQNCj4gPiA+ID4gaW50ZWxfZHBfaW5pdF9sdHRwcl9hbmRfZHByeF9jYXBzKHN0cnVj
dA0KPiA+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gPiA+IMKgew0KPiA+ID4gPiDCoAlz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gPiA+IHRvX2ludGVsX2Rpc3BsYXko
aW50ZWxfZHApOw0KPiA+ID4gPiDCoAlpbnQgbHR0cHJfY291bnQgPSAwOw0KPiA+ID4gPiArCXU4
IGFkYXB0ZXJfY2FwID0gMDsNCj4gPiA+ID4gwqANCj4gPiA+ID4gwqAJLyoNCj4gPiA+ID4gwqAJ
ICogRGV0ZWN0aW5nIExUVFBScyBtdXN0IGJlIGF2b2lkZWQgb24gcGxhdGZvcm1zIHdpdGgNCj4g
PiA+ID4gYW4NCj4gPiA+ID4gQVVYIHRpbWVvdXQNCj4gPiA+ID4gQEAgLTI3Nyw2ICsyNzgsMTIg
QEAgaW50DQo+ID4gPiA+IGludGVsX2RwX2luaXRfbHR0cHJfYW5kX2RwcnhfY2FwcyhzdHJ1Y3QN
Cj4gPiA+ID4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ID4gPiDCoAkJcmV0dXJuIC1FSU87DQo+
ID4gPiA+IMKgCX0NCj4gPiA+ID4gwqANCj4gPiA+ID4gKwkvKiBSZWFkIERQX0FEQVBURVRfQ0FQ
IHRvIHBhc3MgTGlua0xheWVyIENUUyAqLw0KPiA+ID4gPiArCWRybV9kcF9kcGNkX3JlYWRiKCZp
bnRlbF9kcC0+YXV4LCBEUF9BREFQVEVSX0NBUCwNCj4gPiA+ID4gKwkJCQnCoMKgICZhZGFwdGVy
X2NhcCk7DQo+ID4gPiANCj4gPiA+IEknbSB3b3JraW5nIHVuZGVyIHRoZSBhc3N1bXB0aW9uIHRo
YXQgd2UncmUgcmVhZGluZyB0aGVzZQ0KPiA+ID4gcmVnaXN0ZXJzDQo+ID4gPiBub3QgdG8gYWN0
dWFsbHkgdXNlDQo+ID4gPiB0aGUgdmFsdWVzIHRoZXkgaG9sZCBidXQgYmVjYXVzZSByZWFkaW5n
IHRoZW0gaGFzIHNvbWUgb3RoZXINCj4gPiA+IGVmZmVjdA0KPiA+ID4gZHVyaW5nIHJ1bnRpbWUu
DQo+ID4gPiANCj4gPiA+IERvZXMgcmVhZGluZyB0aGF0IGxvY2F0aW9uIGNsZWFyIHRoZSByZWdp
c3RlciBmaWVsZD/CoCBPciBkb2VzIGl0DQo+ID4gPiBzaWduYWwgdG8gdGhlIHN5c3RlbSB0bw0K
PiA+ID4gcGVyZm9ybSBzb21lIG90aGVyIHByb2Nlc3M/DQo+ID4gDQo+ID4gV2UgcmVhZCB0aGVz
ZSB0d28gYnl0ZXMgZm9yIHRoZSBzb2xlIHB1cnBvc2Ugb2YgcGFzc2luZyB0aGUgdGVzdC4NCj4g
PiBJZiB3ZQ0KPiA+IGRvbid0IHJlYWQgdGhlc2UgdHdvIGFkZHJlc3NlcywgdGhlIHRlc3QgZXF1
aXBtZW50IHdpbGwgZmFpbCB0aGUNCj4gPiB0ZXN0Lg0KPiA+IFVuZm9ydHVuYXRlbHksIHRoaXMg
aXNzdWUgYWZmZWN0cyBuZWFybHkgYWxsIERQQ0QvRURJRCBMTCB0ZXN0cy4gSXQNCj4gPiBzZWVt
cyB0aGF0IHJlYWRpbmcgdGhlc2UgdHdvIGJ5dGVzIGhhcyBubyBzaWRlIGVmZmVjdCBhdCBhbGws
IGFzIGl0DQo+ID4gYXBwZWFycyB0aGF0IG5vIG9uZSBpcyB1c2luZyBEUF9BREFQVEVSX0NBUCBh
dCBhbGwuDQo+ID4gDQo+ID4gPiANCj4gPiA+ID4gKwlkcm1fZHBfZHBjZF9yZWFkYigmaW50ZWxf
ZHAtPmF1eCwgMHgyMjBmLA0KPiA+ID4gPiArCQkJCcKgwqAgJmFkYXB0ZXJfY2FwKTsNCj4gPiA+
IA0KPiA+ID4gMHgyMjBmIHNob3VsZCBwcm9iYWJseSBoYXZlIGEgI2RlZmluZSBtYWNybyBhc3Nv
Y2lhdGVkIHdpdGggaXQuwqANCj4gPiA+IENvdWxkIHlvdSBwbGVhc2UgY3JlYXRlIG9uZT8NCj4g
PiA+IE1heWJlIGl0IG5lZWRzIHRvIGJlIGFkZGVkIHRvIGRybV9kcC5oLsKgIE9yIGlzIHRoZXJl
IGEgYmV0dGVyDQo+ID4gPiBsb2NhdGlvbiBmb3IgaXQ/DQo+ID4gDQo+ID4gc3VyZSwgSSBjYW4g
ZG8gdGhhdC4NCj4gPiANCj4gPiBBbm90aGVyIGFwcHJvYWNoIEkgY29uc2lkZXJlZCBpcyB0byBp
bmNyZWFzZSBEUF9SRUNFSVZFUl9DQVBfU0laRQ0KPiA+IGZyb20NCj4gPiAweGYgdG8gMHgxMCwg
aW4gbGluZSB3aXRoIERQMi4xIHNlY3Rpb24gNS4xLjQgIklmIHRoZSBsaW5rIGlzDQo+ID4gdW5z
dGFibGUNCj4gPiBvciBsb3N0LCB0aGUgU291cmNlIGRldmljZSB0aGVuIHJlYWRzIHRoZSBEUENE
IFJlY2VpdmVyDQo+ID4gQ2FwYWJpbGl0aWVzDQo+ID4gcmVnaXN0ZXJzIGF0IERQQ0QgMDAwMDBo
IHRocm91Z2ggMDAwMEZoIHRvIGRldGVybWluZSB0aGUNCj4gPiBhcHByb3ByaWF0ZQ0KPiA+IGlu
Zm9ybWF0aW9uIG5lZWRlZCB0byB0cmFpbiB0aGUgbGluay4iLsKgDQo+ID4gDQo+ID4gVGhpcyBh
ZGp1c3RtZW50IG1pZ2h0IGFsc28gZW5zdXJlIHRoZSB0ZXN0IHN1Y2NlZWRzIHdpdGggb3RoZXIN
Cj4gPiBkcml2ZXJzIQ0KPiANCj4gSW5jcmVhc2luZyBEUF9SRUNFSVZFUl9DQVBfU0laRSB0byAw
eDEwIHNvdW5kcyBtdWNoIGJldHRlciB0byBtZSB0aGFuDQo+IGFkZGluZyBzaW5nbGUgZHVtbXkg
cmVhZHMuDQoNClRoYW5rIHlvdSBmb3IgZ2l2aW5nIHRoZSBnby1haGVhZC4gUGF0Y2ggc2VudC4N
Cg0KS2hhbGVkLg0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCj4gPiANCj4gPiBUaGFuayBZ
b3UgZm9yIHlvdXIgcmV2aWV3DQo+ID4gDQo+ID4gS2hhbGVkDQo+ID4gDQo+ID4gPiAtSm9uYXRo
YW4gQ2F2aXR0DQo+ID4gPiANCj4gPiA+ID4gKw0KPiA+ID4gPiDCoAlyZXR1cm4gbHR0cHJfY291
bnQ7DQo+ID4gPiA+IMKgfQ0KPiA+ID4gPiDCoA0KPiA+ID4gPiAtLSANCj4gPiA+ID4gMi40My4w
DQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiANCj4gDQoNCg==
