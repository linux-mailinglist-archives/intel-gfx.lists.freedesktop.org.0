Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD29F9DB342
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 08:44:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6987710EC2B;
	Thu, 28 Nov 2024 07:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kuPWUr4/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6057610EC2B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 07:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732779846; x=1764315846;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L+ELPdul52yQtC5Y2R+HUJ6XN9o1R8yo5XNUsgjKRr4=;
 b=kuPWUr4/j6GxBwCq/oeRJnpCq7w2Wa0GfqvhZPYFuhwBVWAKryLp5c4f
 qhp9bZPqlOpQ1cSZj4h6isngQd1gd5RxMWWNvk3s/e2FehJKumYyeRJxn
 q8AsLVryd5Vck/Il8y/KVizbROw4PdqD3xm5VgNbnQBES2zijn/8ZpnbB
 Xw+jfBTeHEyFU5YWpzY3q9tGtxBLk9/QQgSLnasZuCp0WffSlXA1JpiH7
 0U+vjMn3BGs80cWvO6JBNDz4hJnpIFByCDYJgoRZ4O5ncARf+KbEa3dFm
 BxBkGCRzxXnv7ELzAfoF4cT1hTeN67APpYgm7wGemTgJghIRChCJbK8A4 g==;
X-CSE-ConnectionGUID: xELqJk6hR12eS5vjkJlaRw==
X-CSE-MsgGUID: gLQqgZwNQeGQzbS4N0TUfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="35861556"
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="35861556"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 23:44:05 -0800
X-CSE-ConnectionGUID: MQFBheYTSNG/VhrXvy4FNw==
X-CSE-MsgGUID: 5qS7GkklRcWGVTPsW0pFVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="97249055"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 23:44:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 23:44:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 23:44:05 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 23:44:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m+Be/d0wNfY6vnYPtj3qYs8w03tjyYQIrn/irwOW2OqjNUWUsoU5fTtGIjq8QwgIVBoSlHykQn5OsyejLe8z0y1fnQtl9KCcoxq+HeXzQRdVdmiicMuq396wU+31A2qAIpelUh7rB79cNPQRPPUZffwUWZgwQiHk6Iz5Pvr1ljr9PwsJB+EgrkfVWGOXf5nTRI9sOI+cqJTi5mY5mFhVuJZPn8qqD/XJhfQiNgYPBbeuw8ZyapDJ2WpzKyQ5/1ZbstV5AFSPIMdkAAmNidvhaFf4cn7O2vVW1rv/EeaZ4JOHHEeHz6tiOcyKy4v6zCDk0kSSUNWqay6kwk5alCDVYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L+ELPdul52yQtC5Y2R+HUJ6XN9o1R8yo5XNUsgjKRr4=;
 b=g7wOiwHC/Z/zlbGWjeOlH/XOn+S84we2IOZZrOXfX7NY5nJmP4PfVW0tQPv8dltZDv+9fw93Y/l6rsRfW+ElhhvHqsrhWQIblKcYABDyX4NFWM6oHVKy/GQy1fTMi7NlxhvJJpoBV3WCZ18Ptp4K+sID1Z94NDp0a0fGX3gSfG0aFQggCBe3V+sE83QCZxw+koS3RB5WNqwdnUoDRh/tjxml42jjAOJo12l7m10GlEq2ydIl/ltdOPapPOseJaqy1Rc7+E57iqI7/vztilDZimtrjQ4nfO77Nj5GENNjQUp8+wNrkrYojymGTUwG21uyv0rPqXTJFJmel+/d9P9fJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DM4PR11MB7759.namprd11.prod.outlook.com (2603:10b6:8:10e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.12; Thu, 28 Nov
 2024 07:43:57 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 07:43:56 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Brian Geffon <bgeffon@google.com>
Subject: RE: [PATCH 2/4] drm/i915: Intruduce display.wq.cleanup
Thread-Topic: [PATCH 2/4] drm/i915: Intruduce display.wq.cleanup
Thread-Index: AQHbQJM13JfnoGepI0CKE6w9wLxwbbLMUWCQ
Date: Thu, 28 Nov 2024 07:43:56 +0000
Message-ID: <PH7PR11MB82528083F26AE592DBC8A45689292@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
 <20241127061117.25622-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20241127061117.25622-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|DM4PR11MB7759:EE_
x-ms-office365-filtering-correlation-id: 9baf532f-d9c4-45d6-ec69-08dd0f806a22
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZUFmMk9qNW9vLzZWYml4RGVLSkpKejN3NXRFbjZZZnJkc0s0OUFIOTZ6UTBT?=
 =?utf-8?B?MGlCUEswTXJHaFZPYmloaERwSCtER01qWkRLUTM2akUzeCs1Y28xQTdwc2d0?=
 =?utf-8?B?ZUo4MTgvaFRPaVNwem1KdUhJMlJFY3hZeVY4TXp3eFI5TUhKYnJTVTJVY0Jr?=
 =?utf-8?B?a0pPRTl6K3ltRFZOY0RFdDVtdWVGS3VGK1FUYURLRStqZG45SzdlaUZwcDNo?=
 =?utf-8?B?aGhEbUluRXg1ZVNsSkZzUGJOOStqL0JaL3ZYaVhyajlvY2NjN3A1OHZ1K096?=
 =?utf-8?B?RUxOeG5iMllXNDRZVGU1bkZERXdoUmtTeUNQYUFyb0dYL2hCUm9MUXdXZjFa?=
 =?utf-8?B?ajdtVUpyTjJDT09JZGJtUXE4dWVIRXdiMEN5K1lNL1pjRjloNTZkMUtLR09E?=
 =?utf-8?B?Yk0yREcyQVdjU2daR05FWWhBOCsveEIvb0dVcHU3SlUvTHZTQ2wyYzZBQzdH?=
 =?utf-8?B?SGNIOVRuMEhWQjdDMWx6a05UcjlxWHJKVVNBbmkyZ0FXeGt6cS93WlUwQjdz?=
 =?utf-8?B?bWJJSVRjVUc0V2V4SHVReGRMbXV4Y0FkM3IwOTFPaktIc3hsMVdjd090NjZI?=
 =?utf-8?B?ZTBDcVpjaWVEeU9iSmhoRVdtVkdRVDU0UzlXN3k2bkJXa1RudzJMUWhtYWg2?=
 =?utf-8?B?NHRKNzd2MFNpWlF5VDh2eDFJZGNuRDBmV0huSEh6OVVWb2xvRWhFcUxhRW1E?=
 =?utf-8?B?eU1LcUNjcEJmV2RDR29NMWdtUVgrWjdhRXFhRXhQMkpuWWI1ZTl5WkpWY2hG?=
 =?utf-8?B?aWNzYlJDK0tyZ1RDbmFocG94ZGc0R3FVUkRRcEtYTVVLMUQ4ZTJiUkJlcUw5?=
 =?utf-8?B?aE8rakRQemovME9uVkhGN2oxTXBpZ1RqQXpSTWNDRFM4MHpUNkxjcG5wNHNo?=
 =?utf-8?B?UE1kWmpjWE1GMjNzaXVyOXNtOTVVYjBOYWNiZzhBSXl4U042QUVyL252SElM?=
 =?utf-8?B?Nlc4L1dqVzBQY0wxV003SHhXUmJqQXZ3MkJNSC9BNGduSlRZcnpYSHBtd2I0?=
 =?utf-8?B?K2Z4Q1FJVGhlcEJKZ3JlTkYwU2NNbVVnTlRhWEJjWFhQNm44b1U5UU9kcmpO?=
 =?utf-8?B?QkpvSkVFVnoyV2NvL1BHcEE4STRzem4vMEpGRUFIM0x1RGVLSThYcEw5ZGRY?=
 =?utf-8?B?S1lkQUtyQ25VV2w1ZVpLa2dkMWZXUmVuRHBwNktXNEFlN0hIZmd1MWRKbTcz?=
 =?utf-8?B?WitvNHFrYUNpMmlod2h3eFM4R0hGeVU2MHF4eitzbGxPY3B4UHptd2JuUFEy?=
 =?utf-8?B?dk4zUmtlSzl6cjFTaWlmelNhUTdBakNUSDJoOFJvVjVuNzd2S0RuR3JTYUtS?=
 =?utf-8?B?Q1BBbU5WbXJEOVpPOE5uQ0szc002OEJQWXNTSWNMUElQOU1MV3Bibm5XaGMr?=
 =?utf-8?B?UHpzOS9ZTVNPai9KdmluQXpkUk9vcEVCazNLcm1oVXY5MGVvV3B1S0c0bTRD?=
 =?utf-8?B?a29vUEk1aFV6S3VPQVVNU1NYZVBqanZnQy9TNUhWb0hNamJHczFEcXlvMlFB?=
 =?utf-8?B?U1dpekltRlFjK2U5aG5YL0FCQU91REdnMjdFQmlSWGJOZDIwak1GUHErZnRt?=
 =?utf-8?B?Nit2eUZicENzdWFFa2t4QTBleUxQYWhYL1RpMjRSaW5rd002aEdpK01mcE00?=
 =?utf-8?B?RmNoU09hRFcwYmJ1RjBnTnhLVWNwT3hoS0cxb01Kb2d4bGRoL1dBdmZpU3J4?=
 =?utf-8?B?ektBWUM2TVBocVkrbEJTbzNLUmNZZlpHQmxxOHphVlhyMGNSb2NzUWNUTC82?=
 =?utf-8?B?SG1YV0RUWE1RRm9VUTFTTlRHTnV0QUJZeHgxWnp4TkhrNXRPemh1b2dwOHJO?=
 =?utf-8?B?bWt6em1jbjdBVS84NDd5QkRrUDdOTk02eG1WaFpsRm5IS2l2Nk9TR2Fuc1V1?=
 =?utf-8?B?M3dyb01DRG9BQmRzek12cWttVjZrczNzSnJXY1Vtb3NuVnc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDlKV2NxbnFDOTRvNWFWdnpTeUwzSDNRNk4xcXIvY3hpNEFMNTR5L2lGeTls?=
 =?utf-8?B?NUZOZWxmdG9FaDJ1SG5yZ3ZzVEpIZUR4TGRnWTVhWWwrcUY5RDd3cGl4R1Fq?=
 =?utf-8?B?eG9yeFFCQzhrU29DL1czWmlUOW5GbWErR2JNakJMTHBuOTZ2SW9LRkpkM204?=
 =?utf-8?B?TDFWdkovOWlNY2JMbWpqNUdMM2NWOXg1WlJMajdzbW8zQlVodmRDS3haaFhX?=
 =?utf-8?B?SUVpSU9KdkRoSTNnaTJZRU9aNDRFbFlHb3YxZW5Dc0FwYk5DTWtxVndPUFNJ?=
 =?utf-8?B?aCtlV0VMSjQyam5DSTVIOWNWVHo0R1hhc2daVTJlWGg2WlI1MTlOcjNYZEww?=
 =?utf-8?B?SjNoSm81VFBUNElDM25XNXUzZHQ0em5DSllhZkluUUdidDJndTVFUzFramp2?=
 =?utf-8?B?djhWVno5MDRZYjdwN05KV3BPa25vNVZBV25xYUtKQ1k3NDZ1RTVpbUZLbVkr?=
 =?utf-8?B?L2NXT3ROcjZjcDlzNStaTEU5ajNObUpSV09RRmtvNnNIWUhkakdnM2hoaDFQ?=
 =?utf-8?B?V3VGNWRxNlBGRG4yWHVldHVFM2VkbXdKeXR0cGt0NXJ2RGNkbU5IUE1uMjFl?=
 =?utf-8?B?ajlsSnNJbTdsMTdjemxTZlpoZ1QzUW5yeGZsbDJOeUxaOVdqUnIxYzF3b1RE?=
 =?utf-8?B?STBxNzkxWVpkT3BseXhhQlBVMGtUK3pCdzJEK2NSblFGa1pTVUZLN2VyL24z?=
 =?utf-8?B?MmlkVFBmeWQwc1lwUFFUK0FZR0JZV0RVRis3c3VsTks4bkFxbkJjcUlDOWdv?=
 =?utf-8?B?dFFxdFE3ZjJFeUNHMURIMHNrZ3JOK0MwTzdOMXczTklvRGlrcGNub0EreGsy?=
 =?utf-8?B?L3lDVVVhWUxaQjFVNTNxVG1RcFc3bDRycytGK1hZSGhaU1k2QkJPWUdtZC9C?=
 =?utf-8?B?UFJmV1hnMnNiR2FHRVZJTEhvdmtqbTlRaUhUckJrVDdJY1ptTTlVdTIxUnZB?=
 =?utf-8?B?WFJJbFkxVFllaWhIa2RoTnI3bjhuR2RXanlxVU1rNW81bXpLYWJ3dXZWZE5q?=
 =?utf-8?B?UVRTUitUSlprMUx6L21IaU94cXI0NnNTQjd1VjBicW52Z1gzRmNBR2pRc21o?=
 =?utf-8?B?R1JIRUN2ZUU4Sm84WjNmS1Z5TXZRUjNUVThXU2x2Q0sxaE14MTQvSDBRUEE1?=
 =?utf-8?B?UWQvM1ArN2tYbkhrSjA2Rm1NamlsUlJpV2VrVEFXSGE4aDZvNzNjbCs3dEJG?=
 =?utf-8?B?cUtSZllqODFleVg4N0VLWDJQQjNKUUFtL1phOEg0dmpSd2k5ZEoycHpKeU1X?=
 =?utf-8?B?T0V6YlQ4YnExWFk0Y0orY3BYRnlyb3dLWkJOZkdpMHRkUHIvbmk5MUdySWZE?=
 =?utf-8?B?Y3B2Z3lPM0R1cDU0R2dqKzVaYmQ2RTlqeGdqT2NmTzJ6ZDZic3NGSlZSZmZB?=
 =?utf-8?B?aTFJUjZNdzVtay92SUx0L1JaUW5pSy94UjdQVGV0QUd4NCtjdGQ5ckQ5aUh6?=
 =?utf-8?B?cEZGY3EraHlNajlnY1hQSGcxRmhaUlkrWXFJZU9PTnVYNEIxKzVvL3REdTIw?=
 =?utf-8?B?MWJBSUxTVElpTkNiMWtydWw4ZmdWNWJMK0tha0VqNHR4SmJxeFFlS3J6VVNk?=
 =?utf-8?B?T1B1dFJxZ3pkcDUrQUVFV1NMZ2hKcXBSNTZXUDlwYVlSODZoRUVmQmdLU29z?=
 =?utf-8?B?NnVaYkxQVXV0NFlqZU55UEZWb0kwenc4bm53b3NUYjRKNUdkNDFsY1diUVRU?=
 =?utf-8?B?VXdBWFgxQTkvZHk3T0dwcHh5L0UydkhlVGNiMXRQcWtOUVBQdEZadEZWQ2Vm?=
 =?utf-8?B?ZVNkWFVyNjZjSlpya09LTkRQWVkxQjV0SGV4K1dLaVVUOHhBRTZ5bnF1SGtX?=
 =?utf-8?B?QjQ0NS82LytnVU9ZaFhnM0hkU3VZOUJRL1FtTWVua0R0SEp1NmtUb0QrYjdY?=
 =?utf-8?B?ZEcxZklVTy9HYVk0MVIzWW9icFFQUHppU0IxK09YbUtBYi85cHpwMW44RDNx?=
 =?utf-8?B?TlRQMEUza2lDdjh4MnFYVjRFcWkzTlY0cEplNng3RlBGYlVlM2xTQWVOMzQy?=
 =?utf-8?B?SWhDNDZmeUppaGVXem5XZ1Zhd2MxbTUxNGdKaEFucjZML2EvWlNLVlZCekJ5?=
 =?utf-8?B?cVV5eXYrNTN6K1hYWGcraDA2cmh1UHR3aHYzempJUXNKZXhTbWlpQk5xOHk4?=
 =?utf-8?Q?L3dHLr0YzaVk+rztk+WVm5UOb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9baf532f-d9c4-45d6-ec69-08dd0f806a22
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2024 07:43:56.7262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /QQkf+fHqi2+WIUnrT3LYLg9qHrQAD+Tmx6tScFTzmXTeJ1ebjD7a+PATJ/szgt/yNEq/X8USy5TdxmlGMPONeeFPQCYnmD/AMHDY2spVVY=
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
cmluaXZhc0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAyLzRdIGRybS9pOTE1OiBJbnRy
dWR1Y2UgZGlzcGxheS53cS5jbGVhbnVwDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gSW50cm9kdWNlIGEgZGVkaWNhdGVk
IHdvcmtxdWV1ZSBmb3IgdGhlIGNvbW1pdCBjbGVhbnVwIHdvcmsuDQo+IEluIHRoZSBmdXR1cmUg
d2UnbGwgbmVlZCB0aGlzIHRvIGd1YXJhbnRlZSBhbGwgdGhlIGNsZWFudXAgd29ya3MgaGF2ZSBm
aW5pc2hlZCBhdA0KPiBhIHNwZWNpZmljIHBvaW50IGR1cmluZyBzdXNwZW5kLg0KPiANCj4gQ2M6
IEJyaWFuIEdlZmZvbiA8YmdlZmZvbkBnb29nbGUuY29tPg0KPiBDYzogVmlkeWEgU3Jpbml2YXMg
PHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgICAgfCAyICstDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oICAgfCAzICsrKw0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RyaXZlci5jIHwg
MyArKysNCj4gIDMgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBpbmRleCA1MjYwZjZlYWZhZjguLjQ4MDViZjY4MmQ0MyAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTc5MzcsNyArNzkz
Nyw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QNCj4gaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAkgKiBkb3duLg0KPiAgCSAqLw0KPiAgCUlOSVRf
V09SSygmc3RhdGUtPmNsZWFudXBfd29yaywgaW50ZWxfYXRvbWljX2NsZWFudXBfd29yayk7DQo+
IC0JcXVldWVfd29yayhzeXN0ZW1faGlnaHByaV93cSwgJnN0YXRlLT5jbGVhbnVwX3dvcmspOw0K
PiArCXF1ZXVlX3dvcmsoZGV2X3ByaXYtPmRpc3BsYXkud3EuY2xlYW51cCwgJnN0YXRlLT5jbGVh
bnVwX3dvcmspOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRf
d29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBpbmRleCA2MmIwNTk3YWE5
MWUuLjU1NDg3MGQyNDk0YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+IEBAIC01NTQsNiArNTU0LDkgQEAgc3RydWN0
IGludGVsX2Rpc3BsYXkgew0KPiANCj4gIAkJLyogdW5ib3VuZCBoaXByaSB3cSBmb3IgcGFnZSBm
bGlwcy9wbGFuZSB1cGRhdGVzICovDQo+ICAJCXN0cnVjdCB3b3JrcXVldWVfc3RydWN0ICpmbGlw
Ow0KPiArDQo+ICsJCS8qIGhpcHJpIHdxIGZvciBjb21taXQgY2xlYW51cHMgKi8NCj4gKwkJc3Ry
dWN0IHdvcmtxdWV1ZV9zdHJ1Y3QgKmNsZWFudXA7DQo+ICAJfSB3cTsNCj4gDQo+ICAJLyogR3Jv
dXBpbmcgdXNpbmcgbmFtZWQgc3RydWN0cy4gS2VlcCBzb3J0ZWQuICovIGRpZmYgLS1naXQNCj4g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZHJpdmVyLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZHJpdmVyLmMNCj4g
aW5kZXggMmE2MzAxYjg2NzRhLi4yODZkNmY4OTNhZmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kcml2ZXIuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZHJpdmVyLmMNCj4gQEAgLTI0
Miw2ICsyNDIsNyBAQCBpbnQgaW50ZWxfZGlzcGxheV9kcml2ZXJfcHJvYmVfbm9pcnEoc3RydWN0
DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ICAJaTkxNS0+ZGlzcGxheS53cS5tb2Rlc2V0
ID0NCj4gYWxsb2Nfb3JkZXJlZF93b3JrcXVldWUoImk5MTVfbW9kZXNldCIsIDApOw0KPiAgCWk5
MTUtPmRpc3BsYXkud3EuZmxpcCA9IGFsbG9jX3dvcmtxdWV1ZSgiaTkxNV9mbGlwIiwgV1FfSElH
SFBSSSB8DQo+ICAJCQkJCQlXUV9VTkJPVU5ELA0KPiBXUV9VTkJPVU5EX01BWF9BQ1RJVkUpOw0K
PiArCWk5MTUtPmRpc3BsYXkud3EuY2xlYW51cCA9IGFsbG9jX3dvcmtxdWV1ZSgiaTkxNV9jbGVh
bnVwIiwNCj4gV1FfSElHSFBSSSwNCj4gKzApOw0KPiANCj4gIAlpbnRlbF9tb2RlX2NvbmZpZ19p
bml0KGk5MTUpOw0KPiANCj4gQEAgLTU3MSw2ICs1NzIsNyBAQCB2b2lkIGludGVsX2Rpc3BsYXlf
ZHJpdmVyX3JlbW92ZShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gDQo+ICAJ
Zmx1c2hfd29ya3F1ZXVlKGk5MTUtPmRpc3BsYXkud3EuZmxpcCk7DQo+ICAJZmx1c2hfd29ya3F1
ZXVlKGk5MTUtPmRpc3BsYXkud3EubW9kZXNldCk7DQo+ICsJZmx1c2hfd29ya3F1ZXVlKGk5MTUt
PmRpc3BsYXkud3EuY2xlYW51cCk7DQo+IA0KPiAgCS8qDQo+ICAJICogTVNUIHRvcG9sb2d5IG5l
ZWRzIHRvIGJlIHN1c3BlbmRlZCBzbyB3ZSBkb24ndCBoYXZlIGFueSBjYWxscyB0bw0KPiBAQCAt
NjEzLDYgKzYxNSw3IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9kcml2ZXJfcmVtb3ZlX25vaXJxKHN0
cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiANCj4gIAlkZXN0cm95X3dvcmtxdWV1
ZShpOTE1LT5kaXNwbGF5LndxLmZsaXApOw0KPiAgCWRlc3Ryb3lfd29ya3F1ZXVlKGk5MTUtPmRp
c3BsYXkud3EubW9kZXNldCk7DQo+ICsJZGVzdHJveV93b3JrcXVldWUoaTkxNS0+ZGlzcGxheS53
cS5jbGVhbnVwKTsNCj4gDQo+ICAJaW50ZWxfZmJjX2NsZWFudXAoJmk5MTUtPmRpc3BsYXkpOw0K
PiAgfQ0KPiAtLQ0KPiAyLjQ1LjINCg0K
