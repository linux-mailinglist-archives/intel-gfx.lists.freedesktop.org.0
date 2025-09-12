Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F052B5500D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 15:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B2D10EC51;
	Fri, 12 Sep 2025 13:52:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TPlVaart";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B80610EC48
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 13:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757685144; x=1789221144;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=5rQ/sAXdR63u/LAWNBQei6gYaPkUZdrkkO3ebBVAy2A=;
 b=TPlVaartYZipl7FWpEznfrCXmoaC5GfC5QFJalaxx9Ajcdqg0Hn5P96A
 HC/59PEFKStLORNmXQPtbvJfg0kcWiIG3kgdS59MJtf6Pk+ahNsVZiiCu
 GZUR+sF4Wws5KQ6FajZKy1nr0OEXve21fw0mjHmsOJ1x522kzgTDnkj3T
 o7w+7axfthvmfrxsJKCZpo1KnZXfAHQziSETKje8YTGsX0YmWJ5ZSpRiA
 yKTFJodovzinXflEvO3w557VWmIHrQa7Ry/qmOoRvZOg74/6PBk+TQV73
 9JpMxGu6BA35z26Ivkds7tO2ac8TG2txoThfANzCVsQZ1Sf6Rctmk2VLa w==;
X-CSE-ConnectionGUID: vjBbiLvxQKai9qBCQEPCjA==
X-CSE-MsgGUID: o0kLMqwKTzSQTU/m07B2rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="60139191"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="60139191"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:52:24 -0700
X-CSE-ConnectionGUID: Ihxxv9SQQ4ag09bavazFGA==
X-CSE-MsgGUID: woZYoahYTcieUtwMI4eEtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="204749498"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:52:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:52:23 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 12 Sep 2025 06:52:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.84)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:52:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MrCi3TejA7G73yTcSkYUz27mr035sXW12STjOXSyNQnXAu/68OuC0pnPZ0BxI+GBtrUQUICVSRVtJtbnTss48bM4HAyeYeakiVsQV8QRAWj8pjvJmNChwFvSa1f29Gxwrnh+z8SoA43O0wBxsuPNkJo3Q79ReP7xOGhJIjr60loG+ueay5BE8T8nrqExG44xMsi3dKrHDsKQdO8AT5TuL0fQaBLCSiYlymykq7XOOfVAxkSAMBOg57YJRdpT5KrrZZhas7riR2ktDMSxhVPKFlexDM2aMe2lE4e5z4NfVUvAY4I38azzApB6xzlDI+3IabvXKRCHqRLyCbZ+rixZYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5rQ/sAXdR63u/LAWNBQei6gYaPkUZdrkkO3ebBVAy2A=;
 b=sQ1u8QN2qC9PqLKremUOgkeLSU5qr5wUG2NHav1ohOcKoeP/rDwM0c017uk/4JgZ/1Pp9XiZ2sND+6YO7f7zJ92vU9oAL5gZK6Jd3gOke5n8K9mUy21MM0hKWdVztiMk8UD9xfJ5c3AiGoxww5jOZisZAlZWD8W+nbwVYPsj9iWW/TQIAj6zPWeg+JqQJittZZSnFmyVN0LeMsn6l3G+iAwWKwp9DM4HmybUeAsBqiAIBpJjJH2RRITNAMeSqMX+73r9y9kbf/nQ9adeqYlo3euX+cOwPW9OQtdw0Otbs4o8B06NcnX9e4aitQ29snhhy5mAxSKkOeRwpG1W07fcLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ2PR11MB7455.namprd11.prod.outlook.com (2603:10b6:a03:4cd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Fri, 12 Sep
 2025 13:52:20 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9115.017; Fri, 12 Sep 2025
 13:52:18 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 2/6] drm/i915/pm: Hoist
 pci_save_state()+pci_set_power_state() to the end of pm _late() hook
Thread-Topic: [PATCH v2 2/6] drm/i915/pm: Hoist
 pci_save_state()+pci_set_power_state() to the end of pm _late() hook
Thread-Index: AQHbkr+6qsjZa71ihkC8bUcdlAEbEbSQs2eA
Date: Fri, 12 Sep 2025 13:52:18 +0000
Message-ID: <88bd89855c18cbbc7cf80414f0ea4589159365e0.camel@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20250311195624.22420-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ2PR11MB7455:EE_
x-ms-office365-filtering-correlation-id: e4d837eb-4773-4778-ae53-08ddf20396db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?YWZWeFVsejFvS05JMyszRE9yTnlvQjBtRzV0ZG0wN3pFL0JQZkthQk9DbTVK?=
 =?utf-8?B?SVhHclZGMzlXNVJueC9TWFYzTXlUNFRlZTRhcjdyWEhEZnV6OFZSdVYwWmFv?=
 =?utf-8?B?VW1SeHJUalVsYVFRK2I5TVoxRmZpQWRQOUpaeFZ2aTdwcW50cmgySS94dTZC?=
 =?utf-8?B?dVBnWk9WK3pIT0ZUbGIyQWxtWTZBOEs1Q2J6V1pvMWNqMEtPM2p3K0RCUG1i?=
 =?utf-8?B?UjFBR2ZHaWJBN3YyaVcwQ2laOGEyRERTY0U2dFZhZGpnQkNwTjNoTUhFV3R6?=
 =?utf-8?B?SHNVS2w2SWpzZWtkR0NQdCtiT1Z2dWR6SVFveXNxdkJnbHVOOGtieHdCQmlW?=
 =?utf-8?B?ZFFaYkZRS0RPNUxPTHVSSmxkaTNiSFBYZE5JVWZVWnFxMnpndzVLQ2JxK1ln?=
 =?utf-8?B?Q3VrR3VCL2dzMnc0YjRzUVdXd3E1YXk3d1FvYjQ4YzBFUVh2cU52aFAvMy9Y?=
 =?utf-8?B?NVRmV0ZtQmtCNHpWOGhoWGRGakYxQURseGJ2WEZ3ci9GSFJLeDk1QnYya0Jy?=
 =?utf-8?B?cnZ5N0R4V3Uybmk2YnNxYmRUUnhKTCtRZ0NCWjlBcmNBb00vMVZ1ZFBMY3pT?=
 =?utf-8?B?TkVFL1dzb1N1WHdzODU3akdXKzVjbW9WbFVkSDRIeW9xSmtXTXQzczZkcEZv?=
 =?utf-8?B?SnVoSUg4SVZZU0xXbjhvZDJnSnVXZU5uTUFnTHBKOTZ0VmFZOVQyemZ0NjBR?=
 =?utf-8?B?M3NYeXdaK2g4OG85dStxcmFQRzhWei83cTV2UDhwM2ppMmxyZCt2YWRRSEpG?=
 =?utf-8?B?SDZnL21jL252NWd6SVo4Y1Vqai95OWF6NDdsVXZYdzZyME5LUXY4UU5lZ3Nh?=
 =?utf-8?B?NzJLc0Y3aTZSUW13YTRKREhyeG45NGRWTWdGYXk5NWYzZDMrcDBCZnBSS2Fo?=
 =?utf-8?B?N1UzcWlRV2huRmJYdDBRVXc5b1ZpYTNjMkEzMk5JcXpsdjV1NHdFUStHWEFH?=
 =?utf-8?B?MmlJQkc1UlRJNGpKQVZwSE8xRlhTOFJKVW1OTUYyRFJOQVVZa0EvY254VEJY?=
 =?utf-8?B?Z3V5aUhXRFJUZ1VXZUJ3MDZxYmpsajE3b3ZJVnQxYkVWVXZWL0VDS25ocXlK?=
 =?utf-8?B?YkhWU3BIZFVsdEpUdWw4VUIydzJ2VzVOaCt2RlJVYkJ1QUV4QU5MVFpzaGFI?=
 =?utf-8?B?VEZONW5BNDFkT2pMQW9vVi9KbmU0UGVuVXRkd2xPWXBEOHFseEdUNnB5NjZ3?=
 =?utf-8?B?ZVREZlZlMXVSd0t6bXFRMWxORXgzRG9JYm1WMk5XR2VjZDZHc1p1djl5cTli?=
 =?utf-8?B?OXp1QllJMEt6RGxKaWRQMm5wUisyUThsZGVqNExBb0ZMWkxVdzk5RGVGdDRK?=
 =?utf-8?B?ZWh3Yzlhb2Y2aXhqb1MrS2d1WFpkYlRMVS9KZWZtdWtNSGd1K21neFN6bG9r?=
 =?utf-8?B?RnlSeURvVGVQTHdsZUUyTzFZbEMydnVvaWhhUk5kUkVqc3FsMDF6SE9FSWJT?=
 =?utf-8?B?WFlvb2EySnEvZlRYVTJ6bUUzU1hrWVVab09hZDcwYjZFYzNqelhQRzI0Witj?=
 =?utf-8?B?MisyZFA2QWVFcUVzSDRyRzdBTFJpRzZPd0hDTXFEeWhsNTJuU2g2U0h1QWph?=
 =?utf-8?B?NCtXUXIxVCs4c3NBZmhpZlNrSnhzMENRU0NlZStvMzdOQi9ZcnA3OW1KWkkz?=
 =?utf-8?B?NXVuYk83TEJtSkt1alhhUytVeklWeFd6ZzZSNmFQMXNRYUN5OWQ0VFo3cUw1?=
 =?utf-8?B?cU55T3E3cmY4eTdseFFreUtNbGJHcjZLM2Rqcjk0eFVSUHUwdGxuVE9lMFJX?=
 =?utf-8?B?QTg4WUUyc3J3b2Y5blNvNWlxZ2ppZEVCL00vQWVuTlZMMWJYbjF5em5XYjRB?=
 =?utf-8?B?MlhrZ2RpQU1hSGF0VW9ralRweVFxbTNsTWxCT1JFV3E3dFdpbHdoajF6TXBI?=
 =?utf-8?B?SDFydGpKa0V1N0xwT0VYTXZlN2RacnZ4allMWHJnUW5hRFhraEZCNjZnS0VG?=
 =?utf-8?B?eWNrNEk3Q2ZZTUJsOWZ1WlZBTVcrUUJKV21mTkRIdXZReG9uVkExcW9YeVEy?=
 =?utf-8?B?b1I4SkpBOVF3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkVrYmZPRG96cHdzVmRlaTdCd2RvcEkxSVBwc0FIVjZOdmhqRi83aHFXV1E2?=
 =?utf-8?B?Y2h1QXM0RlpRditpcU9oQVdzWVZYeEZjTGhPZ0FHOElpTVV4U25PRHo3aDNI?=
 =?utf-8?B?b2w5K3RraFdVaGRiNVBITzl2eTNodDBHTm5ON3ZIeEJyc1JKY0IvMnEyMXZS?=
 =?utf-8?B?MWkrcW9GSWpRZ1hxaXpJSHRiUWk3Q0FxZkJWaEN6S2F0S2JLVXcxYnNSejMy?=
 =?utf-8?B?S3JSbmFRY2tHc3VaSDRiZFNGOGJYZTlxUFEyTk16d3ZIRExNNEJnQ3dUS1gv?=
 =?utf-8?B?VEhTQ1NvTkdrdDZpcm9ZL09HUFU4TGpoOXhaazRlaFdCL1NzWGFoZXlZb0FW?=
 =?utf-8?B?NVFSRGdSZTVzTlErcG56dGl0WEdyalY1Umd5bTN6Szc5QkZtVGZHRTFnemJE?=
 =?utf-8?B?eHpPZkRGMmpIRzQvQWtlbzY5bmFnWEI1WmhURzMxamRTUEwvZUt0MXc0MGYr?=
 =?utf-8?B?RDNmMzJQb3NsK3pwT1M2V1p0MmhiNkYrMThXRnJyYjBhV05waDdrZ2IvTTdm?=
 =?utf-8?B?YzdtRmRQRXFBb3g1RnprbVFIcWJwYXRFNUhjdjBPVm5XdEx0azBTR24xNGFX?=
 =?utf-8?B?MmQyTFdjNnYrNmZsWW03L3h4R2psTGdNME5GLzFmbTQzWG13Y1FXRTNYVWdU?=
 =?utf-8?B?NXFVYTVpdDA5bm9zeHloMSsxVU5EWjF6Rml5YVFPUU1BUS9vVVZGaGR1NnBt?=
 =?utf-8?B?akdFTS93UGhMaUVqSHdSSUN1czVpaUQzeldLYlBwOStjRlM4UDU1WE96T2lw?=
 =?utf-8?B?UjI2MWh6Z0VHdE1SaUdkQzFUdmZNVTdqMk9qeWwrekpYdU9iRXFLTUR3d1h2?=
 =?utf-8?B?VE1qNG84U0Z6djJUUVBGYytEWEloRGxWK2RKamZzR2lJeEJhYTJKbzA1dk5V?=
 =?utf-8?B?dTdBckVORGw0OXEyU3FPOC8zNjBHazhHQmZGQUpYRUJSU0wwNURDNTRoeGVP?=
 =?utf-8?B?b2Znb2U0MkJkWXhGK3NYeDBhMnJ2YW5WM0tpaDlBYk5kSEtMOUwwZ3M3dmhO?=
 =?utf-8?B?UlZEYnMrUUd5Uys0UjdrNkF6c1VsK3JiaFpQdVNqS0U0eXNsdnp2QU90YVM5?=
 =?utf-8?B?eEU2UUpaQ1NBUEhhSFhUc2NuRXlFQlFNb0VKVGxsbFA4TmUwLzdSQzd0cXlh?=
 =?utf-8?B?ZVBZcUVoMnBqaWw4Zm9qVmVseWw3RUNwYjU5dUcwNkp4Nkx0VUlIeDRkQng3?=
 =?utf-8?B?TE90c1RDeGRRWFpHRFhiMTRWZXZmV1ZEbWNtNHhZZ2RlbmpqT1NGemFsK0or?=
 =?utf-8?B?UjNwbUUxNGZYT29NQU82d0lQeWpFWmVhMVBzU2ZOTUtKRW1GZGVZMFh0alR3?=
 =?utf-8?B?ZkxDWThsYTBTc2x4REtxdjlVODhVNGtBVzJET0FHaDVLLytEWEpyTGozVS9p?=
 =?utf-8?B?V01FYWhlV1A1cHk5Z1NTTEVBU0NKNGZpK2lVWHJ0UUMycmtiUjBaNTVOcHBI?=
 =?utf-8?B?ZGJlQnZ3Nkc2K3NoZnpJZFc1Q2hkMGZkRURXZm1VZXA0N28zWDVwZU5LVCs0?=
 =?utf-8?B?NTlSWnJVQlhIZVhIWE1OWWVoUHkyQWFDblBSUkd6clV2SmFiNUgzRTROem45?=
 =?utf-8?B?QjA1bHNiV0s1c3h0ZXhuZXV1dTB0dFY3Q1BQMEZVNmt5Vkp6RUF3VFNqQ0lY?=
 =?utf-8?B?VlVvalJmTE55aXRUaE9RMWlmdk41eFhHS0NIYjFVUGVYQlZVM3VPeWR4clhU?=
 =?utf-8?B?ZXRNWWZsZHNBb095eDVoc3luNFoxY1dNY3BZOXlYWDRmQVI3VysvRTF2K3dF?=
 =?utf-8?B?aUhvUmV0WThaeU03d3BZblNRMW51Sk5aWWFmY3EvalhoRlRqbkZEVUE0M0lu?=
 =?utf-8?B?ZytYd2grUTFmQ294TC84SnJGOWxLcnp1VVM1NUtiQlQrZWdiT1dvUHRzVnNI?=
 =?utf-8?B?VjBNcHZLOUpXM1hOOThEWWdXN0VoMXdpUno4UXNMSVYvd3ZEMFBmOGZ3azZO?=
 =?utf-8?B?emlLQzF0WisxWHpleFFERlF1UnFEazh6eXFuOTVMQnNNVUxXV3RMbDdRemxO?=
 =?utf-8?B?VGtYZy9LcWM1QkswR2ZiUUtMandKa2RoUzJUSjlFQ3RqMS95eVBKNGQ1b1Fr?=
 =?utf-8?B?ckZ1ZW9UZThGN0svUmRBOXYvM3paVVNpMndpNmVYUkZEVC9vdXNMNjNzaVBX?=
 =?utf-8?B?b1N6Q2lLclc5SSthVHc0aHlJdTZqTjVzYm9rbnZqRVI1cndGdnI2TlE3WC9i?=
 =?utf-8?B?WmhwcVQvU3BXWDFjSXJmNi8xd3BRV2JOT1RyWUhuTCtMM0hEdG96RHpwSUNq?=
 =?utf-8?B?MDdvcnRZczFRM1F4dE1JbEZoMEJBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1C45748D17EDE546BF54B30508D98022@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4d837eb-4773-4778-ae53-08ddf20396db
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2025 13:52:18.5900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +a8ocYWhOQpcppbF0lZS/86C0vHzJBGbFRL4YufZqL4dHvDW9j2GO3j0tzVhfDzXOxWeaqrlExzdo15qztt64ZEPRa8naGWeCSneq02/PN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7455
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

T24gVHVlLCAyMDI1LTAzLTExIGF0IDIxOjU2ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gZHJpdmVycy9wY2kgZG9lcyB0aGUgcGNpX3NhdmVfc3RhdGUoKStwY2lfc2V0X3Bvd2Vy
X3N0YXRlKCkgZnJvbQ0KPiB0aGUgX25vaXJxKCkgcG0gaG9va3MuIE1vdmUgb3VyIG1hbnVhbCBj
YWxscyAobmVlZGVkIGZvciB0aGUNCj4gaGliZXJuYXRlIHZzLiBEMyB3b3JrYXJvdW5kIHdpdGgg
YnVnZ3kgQklPU2VzKSB0b3dhcmRzIHRoYXQgc2FtZQ0KPiBwb2ludC4gV2UgY3VycmVudGx5IGhh
dmUgbm8gX25vaXJxKCkgaG9va3MsIHNvIGVuZCBvZiBfbGF0ZSgpDQo+IGhvb2tzIGlzIHRoZSBi
ZXN0IHdlIGNhbiBkbyByaWdodCBub3cuDQo+IA0KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJpdmVyLmMgfCAxOSArKysrKysrKysrKysrKy0tLS0tDQo+IMKgMSBmaWxlIGNo
YW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gaW5kZXggYmUyMzJjYWVmOWRmLi5lMDZmMjk1NjM4MmMg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiBAQCAtMTA0NSw3ICsxMDQ1
LDYgQEAgc3RhdGljIGludCBpOTE1X2RybV9zdXNwZW5kKHN0cnVjdCBkcm1fZGV2aWNlDQo+ICpk
ZXYpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGRldik7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gJmRldl9wcml2
LT5kaXNwbGF5Ow0KPiAtCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gdG9fcGNpX2RldihkZXZfcHJp
di0+ZHJtLmRldik7DQo+IMKgCXBjaV9wb3dlcl90IG9wcmVnaW9uX3RhcmdldF9zdGF0ZTsNCj4g
wqANCj4gwqAJZGlzYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZkZXZfcHJpdi0+cnVudGltZV9w
bSk7DQo+IEBAIC0xMDU5LDggKzEwNTgsNiBAQCBzdGF0aWMgaW50IGk5MTVfZHJtX3N1c3BlbmQo
c3RydWN0IGRybV9kZXZpY2UNCj4gKmRldikNCj4gwqAJCWludGVsX2Rpc3BsYXlfZHJpdmVyX2Rp
c2FibGVfdXNlcl9hY2Nlc3MoZGlzcGxheSk7DQo+IMKgCX0NCj4gwqANCj4gLQlwY2lfc2F2ZV9z
dGF0ZShwZGV2KTsNCj4gLQ0KPiDCoAlpbnRlbF9kaXNwbGF5X2RyaXZlcl9zdXNwZW5kKGRpc3Bs
YXkpOw0KPiDCoA0KPiDCoAlpbnRlbF9pcnFfc3VzcGVuZChkZXZfcHJpdik7DQo+IEBAIC0xMTE3
LDEwICsxMTE0LDE2IEBAIHN0YXRpYyBpbnQgaTkxNV9kcm1fc3VzcGVuZF9sYXRlKHN0cnVjdA0K
PiBkcm1fZGV2aWNlICpkZXYsIGJvb2wgaGliZXJuYXRpb24pDQo+IMKgCQlkcm1fZXJyKCZkZXZf
cHJpdi0+ZHJtLCAiU3VzcGVuZCBjb21wbGV0ZSBmYWlsZWQ6DQo+ICVkXG4iLCByZXQpOw0KPiDC
oAkJaW50ZWxfZGlzcGxheV9wb3dlcl9yZXN1bWVfZWFybHkoZGlzcGxheSk7DQo+IMKgDQo+IC0J
CWdvdG8gb3V0Ow0KPiArCQlnb3RvIGZhaWw7DQo+IMKgCX0NCj4gwqANCj4gKwllbmFibGVfcnBt
X3dha2VyZWZfYXNzZXJ0cyhycG0pOw0KPiArDQo+ICsJaWYgKCFkZXZfcHJpdi0+dW5jb3JlLnVz
ZXJfZm9yY2V3YWtlX2NvdW50KQ0KPiArCQlpbnRlbF9ydW50aW1lX3BtX2RyaXZlcl9yZWxlYXNl
KHJwbSk7DQo+ICsNCj4gwqAJcGNpX2Rpc2FibGVfZGV2aWNlKHBkZXYpOw0KPiArDQo+IMKgCS8q
DQo+IMKgCSAqIER1cmluZyBoaWJlcm5hdGlvbiBvbiBzb21lIHBsYXRmb3JtcyB0aGUgQklPUyBt
YXkgdHJ5IHRvDQo+IGFjY2Vzcw0KPiDCoAkgKiB0aGUgZGV2aWNlIGV2ZW4gdGhvdWdoIGl0J3Mg
YWxyZWFkeSBpbiBEMyBhbmQgaGFuZyB0aGUNCj4gbWFjaGluZS4gU28NCj4gQEAgLTExMzIsMTEg
KzExMzUsMTcgQEAgc3RhdGljIGludCBpOTE1X2RybV9zdXNwZW5kX2xhdGUoc3RydWN0DQo+IGRy
bV9kZXZpY2UgKmRldiwgYm9vbCBoaWJlcm5hdGlvbikNCj4gwqAJICogTGVub3ZvIFRoaW5rcGFk
IFgzMDEsIFg2MXMsIFg2MCwgVDYwLCBYNDENCj4gwqAJICogRnVqaXRzdSBGU0MgUzcxMTANCj4g
wqAJICogQWNlciBBc3BpcmUgMTgzMFQNCj4gKwkgKg0KPiArCSAqIHBjaV9zYXZlX3N0YXRlKCkg
cHJldmVudHMgZHJpdmVycy9wY2kgZnJvbQ0KPiArCSAqIGF1dG9tYWdpY2FsbHkgcHV0dGluZyB0
aGUgZGV2aWNlIGludG8gRDMuDQo+IMKgCSAqLw0KPiArCXBjaV9zYXZlX3N0YXRlKHBkZXYpOw0K
PiDCoAlpZiAoIShoaWJlcm5hdGlvbiAmJiBHUkFQSElDU19WRVIoZGV2X3ByaXYpIDwgNikpDQo+
IMKgCQlwY2lfc2V0X3Bvd2VyX3N0YXRlKHBkZXYsIFBDSV9EM2hvdCk7DQo+IMKgDQo+IC1vdXQ6
DQo+ICsJcmV0dXJuIDA7DQo+ICsNCj4gK2ZhaWw6DQo+IMKgCWVuYWJsZV9ycG1fd2FrZXJlZl9h
c3NlcnRzKHJwbSk7DQo+IMKgCWlmICghZGV2X3ByaXYtPnVuY29yZS51c2VyX2ZvcmNld2FrZV9j
b3VudCkNCj4gwqAJCWludGVsX3J1bnRpbWVfcG1fZHJpdmVyX3JlbGVhc2UocnBtKTsNCg0K
