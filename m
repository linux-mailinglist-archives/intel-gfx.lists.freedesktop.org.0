Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD070A179A3
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 09:55:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B56C10E4E9;
	Tue, 21 Jan 2025 08:55:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MKxRcNSJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7414E10E4EB;
 Tue, 21 Jan 2025 08:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737449745; x=1768985745;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=XRpDg2VVJ4/sNOZY1OvKm6qPkzdAuncj3ygugyreOoQ=;
 b=MKxRcNSJ+NHSu06o7qjqVffBBUoiVXUMsVTMVs6ADEfq2xqhGNrZQd5r
 A4NFY/sMapB1JEOMXGmIQsAmUkR4T+XZOvwujMeqYIp4i/NPxR9iWQ4e/
 ml7uypIpIQe1Cz513BcOlioU73a28ETHh3Jp8BPz/exh+/YVcMT7zsIsM
 /PeDyMwsynO+3KUuRkCe/XmrTXiACGyRRkA5g7VZHK5EgYooIyKd7GkP5
 yT1VDZqXeuLHLR2k+D+rmpcFbbJ/Bd+EnOpESphhtL3FKLgdaK5JrX4I1
 4u4AK1xwtSTUKKkjTWAKmRO7hcI/0nmbYddlZPOpAt+9QvoVWuyYylVb6 g==;
X-CSE-ConnectionGUID: x7CbGctqSq6+/xN/h5UlDQ==
X-CSE-MsgGUID: ++Z4ZEgATeenHLgx+ig5tA==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37064326"
X-IronPort-AV: E=Sophos;i="6.13,221,1732608000"; d="scan'208";a="37064326"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 00:55:45 -0800
X-CSE-ConnectionGUID: xrRLnwvrQp+isIfmW/53Yg==
X-CSE-MsgGUID: HoeYW8UkQa6nTi/d87YCpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="130012403"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 00:55:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 00:55:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 00:55:43 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 00:55:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dYB2P90UZUuhN4r4Y6OWAMsZVDzgeGwTRUQli39AnevJe49pSTacmN+0Iku17O4g/mbVxNPMg51ZSsHZlaAR++//8b8xyleGTGAr+QM8sHbAvD7d2kxRLZv5FYUhNrIAONQDDxwi9E+5liR+NQ+22kLJK0YmIEfBmAtXqcYTMtTeJQcc8pgyBJjLekXI0F4PZwvnPI8sbn4s3wR/igAWfRl5Josr96sSRY0/6g6me1nHMgMOuNws2OuYPTzDk7HQwNSBlwehPAglWLEytBa5DpscoSwHMM3OpAf97bveIHk9LIajNiySmjMR4cgD5fh32S+LCD9B7i9i5fRIkPe/Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XRpDg2VVJ4/sNOZY1OvKm6qPkzdAuncj3ygugyreOoQ=;
 b=XTeMkJuaNM9bGpr26OuEDRiq2Df5BJxc7l0NfcwFGdxLAjdIBdOmjLr63B1THep/DR+HeW2AgF6+JsUE8NcKwuNCHrrvQLbmleN0p9pfZ7dSwRNF9BDdGldb16kI5E+/5YhKoy2SmzyB4tvg5vD9g4V26+XZbFHd+EeHGkPKadvdAllBuHcpyxCJRbUbY7Rw6i4DuYyW/qm8R5jA97jkDMwgHrOe14EJxwhf7lUrsuMvma1MUnG5cEx0b7FAXhhkfm3l3/r7O1K6QnG0TX0X92CvStfK7/ZZYoC/TW2uuGo2RrY6b3yDyGOsygawcV6J2xqeD9HTR/rTp8udiSG/ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ0PR11MB5937.namprd11.prod.outlook.com (2603:10b6:a03:42c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 08:55:40 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.8356.017; Tue, 21 Jan 2025
 08:55:40 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Reddy Guddati, Santhosh"
 <santhosh.reddy.guddati@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH v3 1/4] drm/i915/display: avoid calling fbc activate if
 fbc is active
Thread-Topic: [PATCH v3 1/4] drm/i915/display: avoid calling fbc activate if
 fbc is active
Thread-Index: AQHbZnz+0KwxvNAKRkerVIz+geva37Ma72YAgAYIGwA=
Date: Tue, 21 Jan 2025 08:55:40 +0000
Message-ID: <bf6843c19dd6af357eaeb26f2dcfd915d3834c59.camel@intel.com>
References: <20250114120719.191372-1-vinod.govindapillai@intel.com>
 <20250114120719.191372-2-vinod.govindapillai@intel.com>
 <Z4pRwB6mkTDNMAEu@intel.com>
In-Reply-To: <Z4pRwB6mkTDNMAEu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ0PR11MB5937:EE_
x-ms-office365-filtering-correlation-id: ad0d7323-bb2b-443a-49a6-08dd39f961da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OGF2WGdhZVh5dDU0UHlhKzZFNWZOa2pOQWVOTlFUZS94VVpzUzlFd1pkb1lK?=
 =?utf-8?B?TVg3UHpYNWFOWFFCWDlIMlI1bm1JRndqZmNKb1pTc200SVdHQVBrdDlNTkU5?=
 =?utf-8?B?L09qd2RteFIwZkFHK3AvdS9rbEZNWnNMTUxpNnNoVXl2RG9TZ01FNVJzZzFN?=
 =?utf-8?B?MzVTSXdmQjBiSnVodGFqT250SUZsbTVQNGlKUWwzaEtzWThKWlkvdkk1TmRE?=
 =?utf-8?B?eXROTEFHWWkwWFFFM2F4ZndmZUxRM0NPbkpqMmljaEhSVnltNkdjSFBjNWxi?=
 =?utf-8?B?TG9kVnFMZXlnYm5wdVZOUlIyb1ZML3ZLaDJyMWl0YnJKS2tidTRXdW5pamlw?=
 =?utf-8?B?aGlVS3NVbi9PdjhqOVVXNDB5NEVjOXVRQk5JUSsvRzlJVFJaMUI0cmREc0hJ?=
 =?utf-8?B?OEM3b2JNU2hNTXR4N3p2MkdON3ZMZllQYjBDQkM0ekZyeFFOdUNWaEFGOGNS?=
 =?utf-8?B?UFRWWUZoNGhmM3I2U1JuMVdKVGc5U2E4WEJsSXhtNlplM1VELzFhMWhVanlr?=
 =?utf-8?B?MU9PNTEzNnB2dDlid3hHN2hpYi9PWXNIbWJVa2J6WTYxTHgvcXMxM0I1Kzgx?=
 =?utf-8?B?Rk5xeHBIMzhocW5wRldxeTN0OEhPOHdyekJqUlpxdi9GSmlpNjhjMmZlUE4w?=
 =?utf-8?B?c05DSnBtbmt5Y0tmVi9wSC9DNmJLTzdqemdRMWJTWmZ2ei9jckhVUzN5b2pi?=
 =?utf-8?B?RUFTMGVKZTJRaWswRmtlVUpSQ1RDRWx6QUE5OHM3WTk2TW5nWHFiK1B6dE5F?=
 =?utf-8?B?dUNhbVYzRG96NHhDbjBOV1ZPMVYxMndGNEFhMlBnVDV2Z1hUTHBmQ3ZsaXAy?=
 =?utf-8?B?MlJXN0FKOHNBUnNMTzVva25acG11eGdTN3Z5ZVVqZVFVYURMclFIYnZ6ZWY0?=
 =?utf-8?B?TWszMEp3OTQ5cjJDNk9ORHJzaFRkS1ZCcC9oSy9jRlJNU3FiWXBOendaaHdt?=
 =?utf-8?B?OG5IYTJJSWZjV1V5WGJBakJyYmhuMFlidW53eldXZnFrM25iYmZTa0RzN2dP?=
 =?utf-8?B?STlaZWZMVGR6QnZsK0MvdVRrK1g2MkxjYkNCNm03ZkNsQ0EwNnU0NHZZM1lm?=
 =?utf-8?B?RXd3Unl5cUdzbURyL042NEJvVHJHUmVta291cWtHVkRFY0RTcjBVbXIvdUpD?=
 =?utf-8?B?UG1hWmhxemQ2QWxoWUd3dGFpeVFKbFJMc3h1WmZMRFVEL2NrQk1oZ0cyMEFU?=
 =?utf-8?B?YTVoMTlWVXRzREpLT2dFa1RaeVVDSlVoVTI2eFQvWmFsVG5iSDlLQWR6L1pj?=
 =?utf-8?B?WGcveFJIYml2OXhuTWpLblVpaWFvR2MzT2dLYWJFdnJoendLQXdrWG5yTXBO?=
 =?utf-8?B?bEpQNW1hOXphOVkvekE3VGdWbHAzaFBXbHloNldlTXp5MU0vc1ZLOGJ0WGlI?=
 =?utf-8?B?bmhuR0JHaWl2Y2Iyb2tZRU9XRlZaUzM1QjZjbzVUMllNb041Y1RmcUxLL1BK?=
 =?utf-8?B?TGh3Z0ZjaGJLNnJRTkl3akF1RXNXZlAvZlhSSi9iOURjL0JJc0VRWUp6RGcy?=
 =?utf-8?B?bUxMRS9WVXRQSUN1L0o5SXIyMEdobmpOTkU5ckxaQkZ5M3hCb3RKZkFybEFo?=
 =?utf-8?B?b3NhZnRNZE92d1NTc3N3MkxxazNoNDhXRkJRbzV6SVRTaTJNVTAvR2NZMFI3?=
 =?utf-8?B?QktlblRrbG1va2NYNEY1RFhnYWs3QUFTQnNIS3lrbzN6OTJFT0FMY0c5cy8y?=
 =?utf-8?B?Q2g2YXA5anVLODZJRTc0MHBSbkFnTlZYejNmNVV6VWI1MEx5d2hhYVppa005?=
 =?utf-8?B?ZkhVZDdNL2RyamZhZ3BvTE9jREhmVG4zcU8xOXFCc2Q4SGZZanNYWE85THcw?=
 =?utf-8?B?VUd6L1V2RHE0cXJnNWJCOUgwOEthMWM3M3JVRXVINTN0SjE3RXMxNzVveld0?=
 =?utf-8?B?QWk2aDRoWkJ2TENSRWZjdWNvK3Q0RVVQVm92dVJ4YTA3cTdkV2MvU0h6NHZI?=
 =?utf-8?Q?CPMU5yitQgG65GsB6NPLAKiMNT3S+fke?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bzMwTEF0U3BYYTRkbUZWV0g3Y2V5VERYdG9JY0FXaGZVYm9lUElFVThaTGU0?=
 =?utf-8?B?ZG1QY1BMakFsZXNHS09GYWRScUxYUjZWN1FHRVJxazZibHBYQlhRVlFDZ2pk?=
 =?utf-8?B?WHRFRVpCQk5aUmlRdHNJTWIySWxCckVFNFBaazhVdEhzb0tzcXJFVXovdFNa?=
 =?utf-8?B?eVRIbk50MVhNWFJ3VUVRc0x3K1JQUTdWa2hNUGFXRzk5V1JiQlJhYm41WkRY?=
 =?utf-8?B?VHVhbnpTTlQveERGUUt5Ykwxano5Y2h0MTMwdlBLWFZmQmpuV1dObHROcHlr?=
 =?utf-8?B?SFQ5TmFlQllER3lPUlpFY2NFK3FyVUYwa2xPbWYxYUZIVVE5aFUrNmVqQjFu?=
 =?utf-8?B?ZTdUSGcxK0cyOEdPdkdwKzlYdEJ0dXc1NHd0eHdTS21tR1B5SmFWbkxpZU42?=
 =?utf-8?B?YlZ3eW5MNnJRQkpJKzY3Lzhvc3YzVXlJWnNWTXJuTjBPN21NaForRG5iMmdq?=
 =?utf-8?B?ZC9nVUYvZkp6dkZuMTcyTU9JVDVCeW1DVXFYcHFueWFnN2RTT3p6dkhLZ2JY?=
 =?utf-8?B?ejJNejhEdXREZlc1bnRHNFFtTUJpUDUrT014eWFicGZHQm9ISDNwT2lpWldI?=
 =?utf-8?B?cm03bUdtQzBJQkxvUXNYenR0emR2QVBQRjIxZ2M2OTBWcGpaQkFlME4rRDFj?=
 =?utf-8?B?UFhVakl6MVRFa01KaWhhVWN6aGsrTW1WMW12Wk5PTmNYdVBpSERtcjZLcHpC?=
 =?utf-8?B?RUpBenNQMnRvWko3UDdjRVBKQzhKVDRwWHdiM21tam9TejNyZ2Z2dDFoOEND?=
 =?utf-8?B?MitIQVNWdG9iUDNidU4xMjdENDJjVTQxTFp6QzRNRlhiYzk1SG8yZmtTaENP?=
 =?utf-8?B?VVdvOFYwblh5bTkwT1c1MjlZQnBjaHNxY0NpZGQyY1pZdnpkZWUxUlBSV1o0?=
 =?utf-8?B?M1ZOVm10VmNDSXZEVzZNZFNsYitCNHcveGlQRytIK3dLeFZiZ1JRTm90S0sv?=
 =?utf-8?B?bFFmSjFRV1lMbklHYi82VnhDYUZhOFZoVXQ0V0dLb3ZCMS9DWWprdWdaeTNH?=
 =?utf-8?B?SU4wMmJ6NFpQbndobDJHeVFZL3g2TnkxRGpjcS9pcXhEUm9XK0VZVSsyb3Fs?=
 =?utf-8?B?azhUNVVsQkk4TmtEWmt0N1REUWVnVmpqZDNjZ3B1TWxxWEdsdW1yZ0VjQnZN?=
 =?utf-8?B?K3V3c09meW1XekYvNkd0bzllZFJ1WlZpZXlqNlh0MEU4cS9uYjVaL0dHVEpF?=
 =?utf-8?B?dVpIUDNybVVVNGZYRnJjTGFKNC9NTjY4aVVIVGwwcGpEQU9lY3hBdTZseEhk?=
 =?utf-8?B?MEMydFQxYzNtb1RiSXNQSlRuSVdoSGNVR1hhWlJDcmtwN2hBN2RSUk83ZVFR?=
 =?utf-8?B?Z2sreE0vNjQyQU1GcE9YNk0rVjB0SnN3QkJ4Wi90NVA2QWQvUkM0NFBkNlZO?=
 =?utf-8?B?V1ZlSDJvYlhUT09SU3VPcFpORjNIa0pPZWhKUXVlTkxaYktyL3k0WlpxNy9B?=
 =?utf-8?B?UHJCVzM0SUZIK2tuTklGWGlGRmQrYWIxRkJtMkZNZWErUUN3QlRSc0ZRWTcz?=
 =?utf-8?B?VlRaNHFPMFhwMGpKMENMdDVlcHkwdW9xMWZWNmNLQ1pDMDZSaUJTRFl6V2E3?=
 =?utf-8?B?dDRKa3gxWmRKN3RkejlzWnh0MlJSSEthV2R5NnZxbFZud1lDWkwwN1RMTDdS?=
 =?utf-8?B?clRQcENOT2wxcWdzN1JHN0R0WGVpUzF2UVQwU2xEa08vcVQ1L3lmeG9oeGVT?=
 =?utf-8?B?Szg5dFJua21ucFBLOGo1RURGdjhZNlpuVFJNcmFwRXBucjNrbGpyMnhGbGZR?=
 =?utf-8?B?SGNUYzZrd0Y4bUloV0piK2ExSmQ5WXVZcytSTEw5WHYzQUcxeEhxbGtldDBH?=
 =?utf-8?B?QkFzYXU2aGgxY0pvZkpHQnVtL3JhMVhCZnlxU2NmeGVIaG1EV2tJek5yL2J0?=
 =?utf-8?B?UU5ZWUxVTmE1Snh0WEozRTJQTWdJTlMwRURhZktDTUZGQXF3WnNLTk5OeEQ5?=
 =?utf-8?B?ZzkwckQxUzVnZUxibjBabzdrSFJWRUtIMUhGaUl2QUdoYldXMHAzaTAvVkpi?=
 =?utf-8?B?MVUwOFYvRmg5MlRNUjJ3YmhYWlREOFZJWitHcG51LzVBcWxLN2hibmNtNzlw?=
 =?utf-8?B?VFFWSktZdkhrZ0hHUC84OHZsSVpPZzBYc2lydllxK2xTWmt6c3MrZ3ZMS1ZP?=
 =?utf-8?B?bzBqdlBVZG1oUS8xc01BRW5VZnRCYmdscFBtTWZjK09WeHFwWWs2VWhhZDFl?=
 =?utf-8?Q?2fyV1vhTNQcu/Y3t05srFB8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EB1EB290A1D53A439C2EA8232F51880E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad0d7323-bb2b-443a-49a6-08dd39f961da
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2025 08:55:40.7753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 631Xmw8FMqPnqfr7telzEKfvCX8w5yosErPCThKvKOFoio5VmE1a77vmFr2Etn0+3+7EHh50KGeZZHxvEHQO1WIepLlVkzBGrcw5IkaUFaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5937
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

T24gRnJpLCAyMDI1LTAxLTE3IGF0IDE0OjQ5ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSmFuIDE0LCAyMDI1IGF0IDAyOjA3OjE2UE0gKzAyMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+ID4gSWYgRkJDIGlzIGFscmVhZHkgYWN0aXZlLCB3ZSBkb24ndCBu
ZWVkIHRvIGNhbGwgRkJDIGFjdGl2YXRlDQo+ID4gcm91dGluZSBhZ2FpbiBkdXJpbmcgdGhlIHBv
c3QgcGxhbmUgdXBkYXRlLiBBcyB0aGlzIHdpbGwNCj4gPiBleHBsaWNpdGx5IGNhbGwgdGhlIG51
a2UgYW5kIGFsc28gcmV3cml0ZSB0aGUgRkJDIGN0bCByZWdpc3RlcnMuDQo+ID4gImludGVsX2F0
b21pY19jb21taXRfdGFpbC0+IGludGVsX3Bvc3RfcGxhbmVfdXBkYXRlLT4NCj4gPiBpbnRlbF9m
YmNfcG9zdF91cGRhdGUtPiBfaW50ZWxfZmJjX3Bvc3RfdXBkYXRlIiBwYXRoIHdpbGwgYmUNCj4g
PiBleGVjdXRlZCBkdXJpbmcgdGhlIG5vcm1hbCBmbGlwIGNhc2VzLiBGQkMgSFcgd2lsbCBudWtl
IG9uIHN5bmMNCj4gPiBmbGlwIGV2ZW50IGFuZCBkcml2ZXIgZG8gbm90IG5lZWQgdG8gY2FsbCB0
aGUgbnVrZSBleHBsaWNpdGx5Lg0KPiA+IFRoaXMgaXMgbXVjaCBtb3JlIHJlbGV2YW50IGluIGNh
c2Ugb2YgZGlydHkgcmVjdGFuZ2xlIHN1cHBvcnQNCj4gPiBpbiBGQkMgd2l0aCB0aGUgZm9sbG93
dXAgcGF0Y2hlcy4gTnVrZSBvbiBmbGlwIGluIHRoYXQgY2FzZSB3aWxsDQo+ID4gcmVtb3ZlIGFs
bCB0aGUgYmVuZWZpdHMgb2YgZmV0Y2hpbmcgb25seSB0aGUgbW9kaWZpZWQgcmVnaW9uLg0KPiA+
IA0KPiA+IFRoZSBmcm9udCBidWZmZXIgcmVuZGVyaW5nIHNlcXVlbmNlIHdpbGwgY2FsbCBpbnRl
bF9mYmNfZmx1c2goKQ0KPiA+IGFuZCB3aGljaCB3aWxsIGNhbGwgaW50ZWxfZmJjX251a2UoKSBv
ciBpbnRlbF9mYmNfYWN0aXZhdGUoKQ0KPiA+IGJhc2VkIG9uIEZCQyBzdGF0dXMgZXhwbGljaXRs
eSBhbmQgd29uJ3QgZ2V0IGltcGFjdGVkIGJ5IHRoaXMNCj4gPiBjaGFuZ2UuDQo+ID4gDQo+ID4g
U2lnbmVkLW9mZi1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jIHwgMyArKy0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMNCj4gPiBpbmRleCBkZjA1OTA0YmFjOGEuLmZkNTQwZmY1ZTU3ZSAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+IEBAIC0xNTYx
LDcgKzE1NjEsOCBAQCBzdGF0aWMgdm9pZCBfX2ludGVsX2ZiY19wb3N0X3VwZGF0ZShzdHJ1Y3Qg
aW50ZWxfZmJjICpmYmMpDQo+ID4gwqAJZmJjLT5mbGlwX3BlbmRpbmcgPSBmYWxzZTsNCj4gPiDC
oAlmYmMtPmJ1c3lfYml0cyA9IDA7DQo+ID4gwqANCj4gPiAtCWludGVsX2ZiY19hY3RpdmF0ZShm
YmMpOw0KPiA+ICsJaWYgKCFmYmMtPmFjdGl2ZSkNCj4gPiArCQlpbnRlbF9mYmNfYWN0aXZhdGUo
ZmJjKTsNCj4gDQo+IFdlJ2xsIG5lZWQgdG8ga2VlcCB0aGUgYWN0dWFsIGFjdGl2YXRlIHBhcnQg
KGVnLiB0byB1cGRhdGUgdGhlIGZlbmNlKS4NCj4gQnV0IHdlIHNob3VsZCBiZSBhYmxlIHRvIGVs
aWRlIHRoZSBleHBsaWNpdCBudWtlIGlmIEZCQyB3YXMgYWxyZWFkeQ0KPiBhY3RpdmUgKHRoYXQg
aW1wbGllcyBhIGZsaXAgbnVrZSBoYXMgb2NjdXJyZWQgYW55d2F5LCB2cy4gaWYgRkJDIHdhcw0K
PiBwcmV2aW91c2x5IGRpc2FibGVkIHRoZW4gaXQgbWlnaHQgaGF2ZSBiZWVuIGRpc2FibGVkIGJ5
IGEgZnJvbnRidWZmZXINCj4gaW52YWxpZGF0ZSBhbmQgaWYgaXQgaGFzbid0IGJlZW4gZGlzYWJs
ZWQgZm9yIGEgZnVsbCBmcmFtZSB0aGVuIHRoZQ0KPiBoYXJkd2FyZSB3b24ndCBhdXRvbWFnaWNh
bGx5IGNhdXNlIGEgbnVrZSB3aGVuIHdlIHJlYWN0aXZhdGUgaXQpLg0KDQpUaGFua3MgVmlsbGUh
DQoNCk9rYXkhIEkgaGF2ZSBzb21ldGhpbmcgbGlrZSB0aGlzIG5vdyEgQnV0IGZhY2luZyBzb21l
IHdlaXJkIGlzc3VlcyENCg0KaW5kZXggZGYwNTkwNGJhYzhhLi5mMDVjNjEwNDBkMTkgMTAwNjQ0
DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQpAQCAtNzM5LDEwICs3Mzks
MjIgQEAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX251a2Uoc3RydWN0IGludGVsX2ZiYyAqZmJjKQ0K
IA0KIHN0YXRpYyB2b2lkIGludGVsX2ZiY19hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfZmJjICpmYmMp
DQogew0KKyAgICAgICBib29sIGZiY19hbHJlYWR5X2FjdGl2ZTsNCisNCiAgICAgICAgbG9ja2Rl
cF9hc3NlcnRfaGVsZCgmZmJjLT5sb2NrKTsNCiANCisgICAgICAgZmJjX2FscmVhZHlfYWN0aXZl
ID0gZmJjLT5hY3RpdmU7DQorDQogICAgICAgIGludGVsX2ZiY19od19hY3RpdmF0ZShmYmMpOw0K
LSAgICAgICBpbnRlbF9mYmNfbnVrZShmYmMpOw0KKw0KKyAgICAgICAvKg0KKyAgICAgICAgKiBJ
ZiBGQkMgaXMgYWxyZWFkeSBhY3RpdmUsIGRvbid0IG51a2UuDQorICAgICAgICAqIEluIG5vcm1h
bCBmbGlwcyBhZnRlciBGQkMgaXMgZW5hYmxlZCwgRkJDIGh3IHdpbGwgbnVrZSBvbiBmbGlwDQor
ICAgICAgICAqIEluIGNhc2Ugb2YgZnJvbnRidWZmZXIgcmVuZGVyaW5nIGNhc2VzLCBpbnZhbGlk
YXRlLCBmbHVzaCBzZXF1ZW5jZQ0KKyAgICAgICAgKiB3aWxsIGhhbmRsZSB0aGUgbnVrZQ0KKyAg
ICAgICAgKi8NCisgICAgICAgaWYgKCFmYmNfYWxyZWFkeV9hY3RpdmUpDQorICAgICAgICAgICAg
ICAgaW50ZWxfZmJjX251a2UoZmJjKTsNCg0KU28gdGhlIG51a2Ugd29uJ3QgYmUgY2FsbGVkIGZy
b20gbm9ybWFsIGZsaXBzIGlmIGZiYyBpcyBhbHJlYWR5IGFjdGl2ZS4gU28gdGhlIGludGVsX2Zi
Y19od19hY3RpdmF0ZQ0Kd2lsbCBiZSBjYWxsZWQgYWx3YXlzIC0gd2hpY2ggcHJvZ3JhbXMgb3Zl
cnJpZGUgc3RyaWRlLCBubyBmZW5jZXMgaW4gY2FzZSBvZiB4ZSwgYW5kIHJlcHJvZ3JhbXMNCkZC
Q19DVEwgYW5kIEZCQ19ESVJUWVJFQ1RfQ1RMIHJlZ2lzdGVycyB3aXRoIHRoZSBzYW1lIHZhbHVl
cyENCg0KQnV0IHRoZSB3ZWlyZCB0aGluZyBpcywgd2l0aCB0aGlzIGRhbWFnZWQgYXJlYSB1cGRh
dGUgZG9uJ3QgaGF2ZSBhbnkgZWZmZWN0LiBUaGUgd2hvbGUgcmVnaW9uIGlzDQpnZXR0aW5nIHVw
ZGF0ZWQhIEJ1dCBpZiBJIGF2b2lkIGNhbGxpbmcgdGhlIGludGVsX2ZiY19od19hY3RpdmF0ZSgp
IGNvbXBsZXRlbHksIGkgY2FuIHNlZSBvbmx5IHRob3NlDQpkYW1hZ2VkIHJlY3QgYXJlYSBiZWlu
ZyB1cGRhdGVkIQ0KDQpJbml0aWFsbHkgSSB0aG91Z2h0IGFzIHdlIHJld3JpdGUgRkJDX0RJUlRZ
UkVDVF9DVEwgZW5hYmxlIGFnYWluLCB0aGF0IGNvdWxkIGNhdXNlIHRoZSBmaXJzdCBmcmFtZQ0K
YmVpbmcgdGFraW5nIHRoZSB3aG9sZSBwbGFuZSBzaXplIGFzIHRoZSB1cGRhdGUgcmVnaW9uLiBC
dXQgYWZ0ZXIgZXhwZXJpbWVudGluZyB3aXRoICB0aG9zZSwNCm5hcnJvd2VkIGl0IHRvIGdsa19m
YmNfcHJvZ3JhbV9jZmJfc3RyaWRlKCkgY2FsbCEgU29tZWhvdyBwcm9ncmFtbWluZyBnbGtfZmJj
X3Byb2dyYW1fY2ZiX3N0cmlkZSgpDQppcyBjYXVzaW5nIGVudGlyZSByZWdpb24gYmVpbmcgdXBk
YXRlZCEgIERvIHlvdSBoYXZlIGFueSBwb2ludGVycyBvbiB0aGlzPw0KDQpUaGFua3MNClZpbm9k
DQoNCg0KPiANCj4gPiDCoH0NCj4gPiDCoA0KPiA+IMKgdm9pZCBpbnRlbF9mYmNfcG9zdF91cGRh
dGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gLS0gDQo+ID4gMi40My4w
DQo+IA0KDQo=
