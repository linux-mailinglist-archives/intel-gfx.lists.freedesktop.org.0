Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E20B43117
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 06:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1103410E96A;
	Thu,  4 Sep 2025 04:27:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EsQnaMVL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8157410E056;
 Thu,  4 Sep 2025 04:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756960058; x=1788496058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=gkNis4UNe+WfvsPEi9cKz4ffLLLIq2s14axyEAVwJzg=;
 b=EsQnaMVLyl9A1mlQQA38lWz1ZIFQTbxc9PwOzYbFBaw71jqD5ROgavM9
 PexS/MWQKENLD7dmXIQ78qxtjiUwPYB/SZet3LWkcILl53R+lDaPgZ926
 U/P5g17nKUWiNZkETx4U/9Uad6IGsGbLqHXzuHwN1VdIpGTB+w7dgnWwk
 WUCrauWK39IYSUv+pyDxto8vrOsTzOuEAi1HQjByFBdNWFExc56/d6cFN
 CVVWoaB37j3fFt1Mg5/9GyJzs7YHqRNhlivmYVubdLS9zJd/DPxBUSCKJ
 5x6X0IfG2eJ3XH0g7GZvC6kI7lointCrhcgiOGKTkSWsSG4jjgisaCpfx g==;
X-CSE-ConnectionGUID: 7vTVUo7FRM2Hy8qrOIrF0A==
X-CSE-MsgGUID: ktyso5NVRpGe4bEtOQOY5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="59228619"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="59228619"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:27:37 -0700
X-CSE-ConnectionGUID: 1B138g7JT1S6gG9JUpmYgw==
X-CSE-MsgGUID: emiOXn4mTHuLhsVrvCeP7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="171896960"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:27:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:27:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 21:27:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.86)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:27:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MIKoktwqN5CRO0E7Mg2Rh8e/ePqVEc9RVbQOh5dGO71KTg5H6SSIlF1GcIrR3tGZ7Qy5IN4S8urh/x2bIBNHmKKAd0puSx8Ow6cFKZypWCisd00Dq2HPfEuzAyBOdbkUIqbz2IpSETA4kx15l2TwiIU4eiY8bUIcjWz4jjk71leszkUL8Q+Kb6IAMNrIB3F3PcLQ9dTph8yUzF19GO01ZK3JvqJwJBRckvMS5/+4tdoP2SfPEJakQAdg24UTLni7TnqCi+rSCGtpYQ6Tf+7GnNRoMAcc8nka0AgxPeZpHqHd6u+UV7S7Gx9d1+xJhZ1rKBMMtojBN4jYdEOiiruA0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gkNis4UNe+WfvsPEi9cKz4ffLLLIq2s14axyEAVwJzg=;
 b=K1ByCbb4kg79oErGigIbr1WWm+0mr0rGdTkB3CIpuqbeiSojtbatOOLn4EE0mFwO3Rzo0GwPryn3xvEoJA/RZDKES67PpYF+VqKn8RreanC+zzUungMcWp8I/RYdSM6si0TmJBIZeHceJFZLzwTzQPtHhN6oMrAEF3J5w5xqPHTYAgwtow07KJ9+wEZHS59brRvmufghbHuEOHefJ+HN/58usmbysq9Iif5TOsZ6ePN5UOlkE2L4Pr/v/9suFIDHGGhVgrRp2NH1qzVxw6NOMAnI0/3QpmX7znJQSuxYpIorO649ZiQCXmXxtlk4ECzAoNXtbgfW4N5U0KWtdvwu7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Thu, 4 Sep
 2025 04:27:33 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 04:27:33 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 04/20] drm/i915/dsi: use generic poll_timeout_us() instead
 of wait_for_us()
Thread-Topic: [PATCH 04/20] drm/i915/dsi: use generic poll_timeout_us()
 instead of wait_for_us()
Thread-Index: AQHcGBZUtOmKCGFuuUqMlr/55cGqGbSCeEkA
Date: Thu, 4 Sep 2025 04:27:33 +0000
Message-ID: <659fb7baec068b957a432588342e783d32dfd576.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <02ebcd2864819b7eaf9cf455aa2b968980a2f671.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <02ebcd2864819b7eaf9cf455aa2b968980a2f671.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4845:EE_
x-ms-office365-filtering-correlation-id: f1379a98-4cd1-438e-4716-08ddeb6b5e60
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?T1RTdGhBV3NkRUx1V1JHeWIrOFNQVXkxZG1hbXk0Ty9EZm5NeUdKRDBrVytp?=
 =?utf-8?B?VThZNUdNZWgrNFEzQXVCeUdSMUNOK0piV0kxRzhQekcrTnozckdLNTZON1FT?=
 =?utf-8?B?RUZZTzAxZFVJcUZ1M3RmRU1tdXdxaCsranQ1MXpSckY2Nkx1dThlUUVYNEx5?=
 =?utf-8?B?bzBMdy9lQk1vU3lFb3lwaHRZaWFYdU5BdWdILzBFTzBRWE9WeFBna3R6R1l6?=
 =?utf-8?B?ZlhNa2Fjb2MwMlFqTjQwYndFeVhlUDJvL3l1TTBkRDd3OEExVUlYMHRwMnVG?=
 =?utf-8?B?bEF2K1R0TXNkdkhhdCtkeGliWTAzSE84V1ZBRFZPMjduYnoxa3JTS0VYdEJ4?=
 =?utf-8?B?T2t4bnZ0RmFac0xya0djZnhHYWRCaFNtc0FrNFpYSmR0bStEa1ZyaXlMV2FE?=
 =?utf-8?B?cFlZdlUzQ0FZSDVFMHl5aVJNWDN5N3FoWDg4ZTdMbGlmK2JSL0c1NXJTWjcx?=
 =?utf-8?B?alcvdk90UWhaV0ZVNk93MU5uYXJjM1RteWh4a3NwZWVMUk9vNmFYTjZSTktU?=
 =?utf-8?B?cnczVnRuaUtrMGlQTkFTN0lJTm9ldS8wOWtJS3Uvbyt5Z0xnM0w1MEtXbG0v?=
 =?utf-8?B?QXZBZ0xzODNLZTFMaGtjNXhCVkRHRWhnanFKbHByZ2EranhmWGQ0UnoybEE3?=
 =?utf-8?B?cTdJb2xVY09qUUErcWtweVJlZEluZVFrcEdxYXF5NHlzNXBZcmxnNEIvS2tR?=
 =?utf-8?B?OGdMSXVOSVE5ME5qT2l5YjdFS3NNNzNIdmNBWnlXSzF2aUtkbjhZM1pyRlFx?=
 =?utf-8?B?ckVxNDB3QnAycVVsN3pwUnMvWklGeTVOcHBEOEtkb0MvN0VORG5OMldIQjFV?=
 =?utf-8?B?bmozMnNqblI2OFJTeUFDV2pxUzc4WnNHdEN3NFhUR1pzOWhadHgySlBSWVFq?=
 =?utf-8?B?TGc0SHhHa1BIcTJ3M0lpbXpQUVRIRjAwRU9qVEdQeFFZaXlydmpXNlRPNFpL?=
 =?utf-8?B?ZmpiT1BTM2haMTNuQ0hkZ25heGhOSEhqNzhrbGpCQWFTa0FIR2lLbkZINmZj?=
 =?utf-8?B?WlFmUWNubSt3S2krY3NSTUNaYVNFeFpOc3NCaEgvYmtMQWc5M09lT2FUdnJR?=
 =?utf-8?B?R3hlVVNzTGdEUUVTdTEvSzZSM1dhUVJMWXQ5dVJ0VUt4S1NEUEhkaGxDU054?=
 =?utf-8?B?SnJZVGc0WXNRMGw2Mjh5NUlkbTRWeG52SnZEbzBDdlpyRlNRaCs2aHVRa0Ir?=
 =?utf-8?B?NXNWUk9mZkpJM1lGN1BvMmp0QmRzYlJ6bENibXBGbk5rSXJ6UVJXSGZaSjZL?=
 =?utf-8?B?bVRjdndFWW8vQ3pNeWdMazhQdEs2amZ6ZGxpZVgrTDJaaVRQY1VKZWJTbzRi?=
 =?utf-8?B?NG1najRIOWZiR0VkNTJ1MkhYbmNVdURtaUZCYTFPazV1N2k2MmR2cVFQbVRw?=
 =?utf-8?B?ZXgyWVZVK0czTDh6WGpnYXZXeG96M1M2OE9nYlliN2IyZTRKSzR4Sk1nUG1z?=
 =?utf-8?B?VTFKUDNlMklBSnMrQStCRnFjNHllRkh2RnpUdXpuRjBYRDRrQzJROU5BL2hF?=
 =?utf-8?B?a1kyem5QdkFob3NkYU5SWlB3T0ExQ3Fad1VoS3lRa1k1OWtZZm1mNlU0aUx1?=
 =?utf-8?B?eGlrSnpNd1hOOFB3TnVWajVJUlQyRFRYV3Y1QWg5SFVOUXpBWmRTVGVBajJw?=
 =?utf-8?B?WG45bFBEbVFSa3YxZUxWM1ZKVGhRQi91ZVNCK1lha0lQa3ZjK3lSVHpyNmZ3?=
 =?utf-8?B?dkJJeXc0OUl4a01JZmlSMUw1WG5aMHVjalUwRUluVS96TVZvbmN4NmFzSDRX?=
 =?utf-8?B?YWI0RnNzVXZjUWdwRUJZbVkxRU5vS0thSW9mZTlvSkIxeEhrWWVvdEF4VTM4?=
 =?utf-8?B?dGlQU2hTK0hDQkJwczBCWWJRbVBrbS84TXZPUWdBK29RQXhsWUdvMTBYU0hK?=
 =?utf-8?B?TG9MeG9uZnJzYjJQTDZZSllCK1RxMTFwVERRbnhGL0ViYXJ1M2RQTVNCZnN0?=
 =?utf-8?B?aXMwcDdqYXNJN0h1R2xtazNRVEtKVDFQYnltQkJSRUdLRXRIcDNMU3JuWUJu?=
 =?utf-8?B?OTM5dGdRc1BBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?LzgzdEs4Nk1vS2xEdmV2ZGs4UEc0NmxzNVp1R05pR2h5QXJNN0VwN0xYYWM2?=
 =?utf-8?B?QkN0OC9oUE9nMEZQUDlIUUVqZGxPTm1nZXlBZzBmQ0Q4aFVCVHNFYU01TzVl?=
 =?utf-8?B?YnFmd21VVm9FbEVvVUF2OTIyWCtrZWsvenBjMS9oWTVXSmMwYmhRb1ZsZFNu?=
 =?utf-8?B?ellrWkJjYjE1UUkyVzdlNE51R20vb29oNE5TUHJFVWRHdGF3OUJmRTNBMTdE?=
 =?utf-8?B?c2VjSGszeUhKMklGL0FDZTR3UmhtNHpLWXpWbFlWeW5FRy9TWitlaWMwaTJB?=
 =?utf-8?B?TWYvZWhOb2tReGNSQnJpb0JjMi9ndXQ4Yk9yVnptNWZxWjVHbk4rcnpsRHY2?=
 =?utf-8?B?UFVuUTBxbUFHQ0F1Y0xWaXl2bXYyeSt0cHBvcTZGdGloODhMSE45VGt1Njhm?=
 =?utf-8?B?bC9RdnhQa05yMGN0eXR2UzhaT09FMi9heWFHejJDZlhvT3Y2UmVFZGdyRyt1?=
 =?utf-8?B?UEVOZ2hlWU9FWWZhazVnNXBPNXB3TFB5ZjhpZGtKaHhNUXhibDVLdDZmeG50?=
 =?utf-8?B?d2xrajcxQ1dRdVplRjBOK3JRK20xd0FDZnkyczRETmk2aEJ5UUE4VmZ4dkdI?=
 =?utf-8?B?Ym5YM2JiVUkvNDlNakxvL3REMXFKU3F6OFRuZkkxTCtqRGN0MndLUnJOYzFP?=
 =?utf-8?B?S0EwRDY5NGVmNXh1Z00vQVFudWxGczBCS1F3bFV0TEJua3VjSmptdDVrSE5Q?=
 =?utf-8?B?TVNKbC9tS0l4R0VhRDc4WkVKNVVwV2E0cjVpcVliRCtlMFRQSmxWdzI1T0dz?=
 =?utf-8?B?MnpQVGpxZlYrNnhTOVZmT3R5Yk05U0RSYjFUZitPMGJuaGRMWVpqdkpqR0V4?=
 =?utf-8?B?eDA0a21Jd0pFd3dXQnhuQTFITkZPeVhXQjBSTFJGSi9pZ3M5NmlBcDN5NXpX?=
 =?utf-8?B?cUx6MFhlSkIya1BuczVUUlpFSTUwM3JBVEUrZWR0WmVrT2U4bXRzMkF6OUlC?=
 =?utf-8?B?SGhZOHltQTJXV0l2WS9IQmd4d1owK3ppUi9mV3djYWUvQ0NCOXNpaWhkOFZO?=
 =?utf-8?B?dy84VE1LY1VjVE5FbDlRMGhyZ2hSZUJEa1hRbnlGMmRiRVpUMnhNdk5mK0p1?=
 =?utf-8?B?Y3BudzFZN3ZtWmtGRlRDLzNVWXZPcysySmhWU2tQSHloMklDWEFlSVIzZXQ4?=
 =?utf-8?B?UmlpQmxHSHA3SWdHdTFqYklPZ1dnZlJKdFZubUE5T1RRV0hXc1BlVmNEKzdv?=
 =?utf-8?B?alNBcHI3QWRvSCthUlZkdVU5L0p2cmRpTkZaeTVZa1NJQU8zQWtKblViZElG?=
 =?utf-8?B?UU50YXFFUnorbDZYMjRQWXo3eUZoYVN1MUJKVjZzT2VnK3gwZTFjN2YwcHhh?=
 =?utf-8?B?bk8wSi9ieFRqR1FhOUdtVXhlNEV2Q3ljMEJtbENvdmRRWElURW1VNDloK0hW?=
 =?utf-8?B?bXVZbkZZOVFlK0haTjhUWlphNGRKajc0NHNHRCs3WHhnbld6dFNkT2FqSXZF?=
 =?utf-8?B?NEdGMWZ3S0VUangycXJpNmZBRjRzMlFJUlhNYjRhamtFMFpkVzY5dm5vdm80?=
 =?utf-8?B?N1doVkoyMVZta01YdStZckJ3N01kTFY3VXg3aks1MUF3dFJlODVGalh3R1Fl?=
 =?utf-8?B?UnlHbjFaNHdBUEkvUWUxLzhYeGxtdlZyQklRNUQwdFZsaVZ2azBFZ3ZpMVJ2?=
 =?utf-8?B?RmJQeTZYUXgrZFJpT1k0SERXM2c3Q2VnNm1LSFVXU09lTC9lYmt4UWl4YTNt?=
 =?utf-8?B?YS83ZFpjUnl5TEtWY1UwY0dmZFV5UzQ3SmlYV0w4Z084N2toRUJESVN0Z1Y0?=
 =?utf-8?B?NUk2L3dscHppTG5ZWU83UVduU3Y5MDE2NzBMWDlTaDFDcFh5ZXdWeDdNakoz?=
 =?utf-8?B?Q2FKblhFWEJSYW5VNlFySEl4SExUK3JDWVFDQTZuYVcwYzkzU21yM1ZWV0R3?=
 =?utf-8?B?TndqU0k5UDd4QXRlcG1ObjNUay9SU1RiN3JEMlZJcFdaNkh4ckJxbDlIKzVP?=
 =?utf-8?B?dEtDaklEcTNtZDB6OTdCcnVDZUh3U0ZRL1FYNThEbFNJN1F6WVZPYWJaVDho?=
 =?utf-8?B?b3NFdkl1aDRHKzd2RDNoRi9vcjQ2eTNzVXRENXNSQWQ1L2tHRHdDTG5hY1pw?=
 =?utf-8?B?cDBUMXNPVDdkZmpubThrTmFLL1NyUm9haXcyNENwVUV2UUZNenZ2MHBjNnl3?=
 =?utf-8?B?YWlNTTZGL0FqbnZLUytyOElrQ2k2RHl2Zm5FZDFlbEswTkhDQmtGdUZvZzgx?=
 =?utf-8?B?MEU0eHlrV0Nodk5WaWFIa0FWcDBwOEhxdUhFakFhS1BBbElkL2ZnWUtnUldS?=
 =?utf-8?B?UDhuSHZWeVFoY2NTZnJucGJGVWZBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B5E01964506C9543ADF838951F70747D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1379a98-4cd1-438e-4716-08ddeb6b5e60
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 04:27:33.3427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q7xLEGoQTd+eY6a03QlgOzC8S5Xw7S/c/PbC19pgzZo4nP1s3HVGEJM3x8ojKIzhzUYdHIE43Iegb3CJy2qQxYifn20pQ47i/l/sBsi95Rw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4845
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBzbGVlcCBhbmQgdGltZW91dCByZW1haW4gdGhlIHNhbWUgYXMgZm9yIHdhaXRfZm9y
X3VzKCkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMgfCAxOCArKysrKysrKysrKysrKy0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaWNsX2RzaS5jDQo+IGluZGV4IDQ0MzEwOTg0YmI1Ny4uMzdmYWE4ZjE5ZjZlIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBAQCAtMjUsNiArMjUs
OCBAQA0KPiDCoCAqwqDCoCBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiDC
oCAqLw0KPiDCoA0KPiArI2luY2x1ZGUgPGxpbnV4L2lvcG9sbC5oPg0KPiArDQo+IMKgI2luY2x1
ZGUgPGRybS9kaXNwbGF5L2RybV9kc2NfaGVscGVyLmg+DQo+IMKgI2luY2x1ZGUgPGRybS9kcm1f
YXRvbWljX2hlbHBlci5oPg0KPiDCoCNpbmNsdWRlIDxkcm0vZHJtX2ZpeGVkLmg+DQo+IEBAIC03
Miw4ICs3NCwxMiBAQCBzdGF0aWMgaW50IHBheWxvYWRfY3JlZGl0c19hdmFpbGFibGUoc3RydWN0
DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IMKgc3RhdGljIGJvb2wgd2FpdF9mb3JfaGVh
ZGVyX2NyZWRpdHMoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IMKgCQkJCcKgwqDC
oCBlbnVtIHRyYW5zY29kZXIgZHNpX3RyYW5zLCBpbnQNCj4gaGRyX2NyZWRpdCkNCj4gwqB7DQo+
IC0JaWYgKHdhaXRfZm9yX3VzKGhlYWRlcl9jcmVkaXRzX2F2YWlsYWJsZShkaXNwbGF5LCBkc2lf
dHJhbnMpDQo+ID49DQo+IC0JCQloZHJfY3JlZGl0LCAxMDApKSB7DQo+ICsJaW50IHJldCwgYXZh
aWxhYmxlOw0KPiArDQo+ICsJcmV0ID0gcG9sbF90aW1lb3V0X3VzKGF2YWlsYWJsZSA9DQo+IGhl
YWRlcl9jcmVkaXRzX2F2YWlsYWJsZShkaXNwbGF5LCBkc2lfdHJhbnMpLA0KPiArCQkJwqDCoMKg
wqDCoCBhdmFpbGFibGUgPj0gaGRyX2NyZWRpdCwNCj4gKwkJCcKgwqDCoMKgwqAgMTAsIDEwMCwg
ZmFsc2UpOw0KPiArCWlmIChyZXQpIHsNCj4gwqAJCWRybV9lcnIoZGlzcGxheS0+ZHJtLCAiRFNJ
IGhlYWRlciBjcmVkaXRzIG5vdA0KPiByZWxlYXNlZFxuIik7DQo+IMKgCQlyZXR1cm4gZmFsc2U7
DQo+IMKgCX0NCj4gQEAgLTg0LDggKzkwLDEyIEBAIHN0YXRpYyBib29sIHdhaXRfZm9yX2hlYWRl
cl9jcmVkaXRzKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDCoHN0YXRpYyBi
b29sIHdhaXRfZm9yX3BheWxvYWRfY3JlZGl0cyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSwNCj4gwqAJCQkJwqDCoMKgwqAgZW51bSB0cmFuc2NvZGVyIGRzaV90cmFucywgaW50DQo+IHBh
eWxkX2NyZWRpdCkNCj4gwqB7DQo+IC0JaWYgKHdhaXRfZm9yX3VzKHBheWxvYWRfY3JlZGl0c19h
dmFpbGFibGUoZGlzcGxheSwNCj4gZHNpX3RyYW5zKSA+PQ0KPiAtCQkJcGF5bGRfY3JlZGl0LCAx
MDApKSB7DQo+ICsJaW50IHJldCwgYXZhaWxhYmxlOw0KPiArDQo+ICsJcmV0ID0gcG9sbF90aW1l
b3V0X3VzKGF2YWlsYWJsZSA9DQo+IHBheWxvYWRfY3JlZGl0c19hdmFpbGFibGUoZGlzcGxheSwg
ZHNpX3RyYW5zKSwNCj4gKwkJCcKgwqDCoMKgwqAgYXZhaWxhYmxlID49IHBheWxkX2NyZWRpdCwN
Cj4gKwkJCcKgwqDCoMKgwqAgMTAsIDEwMCwgZmFsc2UpOw0KPiArCWlmIChyZXQpIHsNCj4gwqAJ
CWRybV9lcnIoZGlzcGxheS0+ZHJtLCAiRFNJIHBheWxvYWQgY3JlZGl0cyBub3QNCj4gcmVsZWFz
ZWRcbiIpOw0KPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiDCoAl9DQoNCg==
