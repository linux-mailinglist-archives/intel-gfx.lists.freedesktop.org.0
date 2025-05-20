Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BC4ABCFE9
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 08:56:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CEBE10E14C;
	Tue, 20 May 2025 06:56:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S47M+hky";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C29910E14C;
 Tue, 20 May 2025 06:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747724195; x=1779260195;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y9MI6MrejutqaF2vBTzelTln7c/VC2FrZwUUotXlyqw=;
 b=S47M+hkyaSEfU+GhAEbjSxZGlZ/jjc2+U7K0Yasjb/4l+ZOCslRjAYfq
 bpLudiqwzDBvQ3C3bEBkYAj0tjTJfUX9KhKF9vE/I2F6VSL10CcDTIa03
 HQ6g3b0p75AP/fsQ0vI1dCgxg6UjAeoX7WO/A3qQNE1QQBpNrEiFuYQKr
 FH1hJDxXuQCWKljy8J39Z3KK1HmoEvbD/xW5At6q5SQuv1jgc9q9iaEIj
 on03ZDprFSM85F12hYJ/i3IGUgtsqLNQ9eryiHf6JX2Oxiam/qwO5k7uJ
 g1OA+vgP5TkIsQfohESBYhpSDpflAPR+kv1AYAWCgeKZSWhzGWC+ST0NQ A==;
X-CSE-ConnectionGUID: AI/1hXB/QquZ6vq9gyVlhw==
X-CSE-MsgGUID: iSdi+j4rTdiIk55/oebukQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49518418"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49518418"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 23:56:32 -0700
X-CSE-ConnectionGUID: TD+Um1LLS16lsnj01ZArhA==
X-CSE-MsgGUID: 6SleCZpURJ2R0LUajejzNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="139635493"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 23:56:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 19 May 2025 23:56:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 19 May 2025 23:56:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 19 May 2025 23:56:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IxPoA3xJfBb05sm5uFRLuFA7mOLy2v+mQdUxxmNHTht4WVGazOjr5TtenruxTXqbZI1NgynGWufjglIZIv3zyxqTudSpEh3EDyNXcHhwkauWFSPURY0cBJ5QYQ/qEdaISDXY7+ab6ZtYEJKhC9N54g3PWeosda/dEcuBfELBErJGj5f/vrs0yP6rBurVZOHlBmRR/2PDEkDuwzlRvJtI4WQopqCZQFtOMxkb44t1OmoPz/wOOfBzcfJmO2lowArLlkwu2SO98fqz0Kx5vkx8b2ydZztsJoKo3nrr3v4dKAz0CJ48jAdX7ZvvZIu2bBgBgrGJia9yfZyH8HcFh8FdQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y9MI6MrejutqaF2vBTzelTln7c/VC2FrZwUUotXlyqw=;
 b=s6dhQHRPV79XCl2Qv6s6+/9dgUy6f1j6UbPWeXblLfbq1cvCpaLcJ2dJkNRjjDoYjFtnBXjcEdGcO/JZn5kCSYm0/FJOUp33CarJ9zqHxTr9X8OYU42RrKcK6lCPm3rk3U0tYy7XAyQTFUr83K2Hqaf+DBFfdzrm9dTEg5iOI/ii1bg53bVR4kgb1wHD6I5yAxtWn30tp2qr/ZoKPSr9DDaxyc/yohfNKOwFAl31/CRKPjlEZ6Uvn8XwVAiDJUIT63GxfAD4RZ/PZJq4+qvAyLSbAC+VwOIsMMTzqHxAOz6pU5vuQQNWjbZ8/rpRmpHsic0d038hs/1S2l+ekqOYSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6165.namprd11.prod.outlook.com (2603:10b6:8:ae::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8746.30; Tue, 20 May 2025 06:56:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 06:56:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 00/12] drm/i915/flipq: Rough flip queue implementation
Thread-Topic: [PATCH 00/12] drm/i915/flipq: Rough flip queue implementation
Thread-Index: AQHbxlaFQc3GAdjWqkWxvCSZPluDAbPbG6sw
Date: Tue, 20 May 2025 06:56:23 +0000
Message-ID: <DM4PR11MB63605048B4E9338E82624CA9F49FA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB6165:EE_
x-ms-office365-filtering-correlation-id: ee75dcd0-8fbf-4f18-b6c9-08dd976b6f11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?N3NlY1RpYnZpVUhoMFVUVGlwVEJkUExsTERoWlRlUEhuaFRBNUsvTW82YjZY?=
 =?utf-8?B?NVY3ZW94WTFxYUdIUWNkWEVVY01lYUtOa01aanBtZUNsaUJqZjhUMTFLK2J2?=
 =?utf-8?B?TW1scGV2K0VTQ25ndE1ObUZhclZqZ3lYQ3VsVnRrTVlQd250bjNTam80SFVL?=
 =?utf-8?B?NHBEQlMwcnZjeE1KNGt5Z0FIMDZQOHlkNlBzVldncnl1RmNwMmF4cGVldmdQ?=
 =?utf-8?B?a1RtZ1huekhJNi9lN3pidG5GcW5KclFVSTg3UWF5MTEyN05SZGlBZ0wxY2g3?=
 =?utf-8?B?TGNOUUlDN0pIR0pLZTlWRStCb0Ntb1ZtSGw1Z1NES2VZaW9PK0FvbnJycE5z?=
 =?utf-8?B?TE16VHdJWHp2aHVtaFBGZEkzYXpDQy9WTW1MaW1xQzlIai9hREV6VmptL3Q2?=
 =?utf-8?B?aThRS3VRSzdFQVRGUEptN3M4WTJUZElXWXA3eW03a2N6WGYvZER5OUsyYW1E?=
 =?utf-8?B?bEpmeFNDdGd3QTdwNUtrY0JGdVptelJUMEEwVHpISzAwRTFpSVp0b0dOcGZS?=
 =?utf-8?B?by9xZDdMeU1FSGd1ai9pUFA2MWZzSkxRSFpkUDhmWDMzd1B2VjB1b1NjRUtq?=
 =?utf-8?B?OFZZOG43RWptY3M0YkZuWnJCRjRpSStrV1ZTU0Iya0N0L1FlMUpVT1IySTRJ?=
 =?utf-8?B?Unlrd1JaYTNDRGdBMzZzRGtncGYvcG9NbytMKzNNMFh4cjNXUTJTWWd4TUtx?=
 =?utf-8?B?VXpSdVF6LzhrQ1JNdmpDUlZEbG1sRk82UW1OdU4xU1laM0ZtVlJ3QVBKNUhp?=
 =?utf-8?B?dnFqdnhkZzJydXRVN0xLVjVNVkhyOGF1ZDIzelk1eUNIQ1BnVE14eHZ1MWVk?=
 =?utf-8?B?QVI5TnBvMTk5T3ZrZ0FLMEF1RW5NTlg4bEJKdzdGamNwTTF1Tmg1dHRGNFpk?=
 =?utf-8?B?L1c3ZTFiN3dFTk1pWVBYYmJXRWhPdVdxaDNaRk5mb3RtYlRybTJJbzhnTmJT?=
 =?utf-8?B?cjhGaER4QTYxbjYzdUJyZVVPYkl1aGgxU3pSbjBWOWtKRFByamtPTXhyc3Rz?=
 =?utf-8?B?bG9LL2hDb1BSOEpWR05kVFd1Z2JnNklqdW1tSkJlTnplNTk2Tmp0SXlRaU5V?=
 =?utf-8?B?dnFUaDhVTDlTanc5dlJSTGJuY0RsUHI1Rk1JdkE3VXYraGgvWjBrbXJCeHZX?=
 =?utf-8?B?cnkzVm5LbEI2d3ZObWVQS09JUzFQWnIxVmR4OStYNWhmZERNVFJGYzcrWjVz?=
 =?utf-8?B?bUQ2UmpVcThsakFLbEk5ODhKZnJtc2NsLzBpWERUTFRpT0N6dnhOaFh0cGdi?=
 =?utf-8?B?ZTF5S2ttbEpVMU9CYWhWK21xYnljWlMrbkVoaHRZSDBrc2dVbDlpNjJqdXRh?=
 =?utf-8?B?VFhNZWFoYkNwUW5NVzdzT2c5Q2pyVVI2MXlua29Ld3NETytTTHY1L2RCWXhS?=
 =?utf-8?B?Tno5Q29hOHRkbVRlbk8xT3ovN3MxOGUxMThkT3VEbzR5Yi9xMjJHNit6Mm1n?=
 =?utf-8?B?a04wU0owdW5WckRGZkpQMXpVb1JrQUNIOVh2U1gxNjI4RE16dVgxODlwU3Nr?=
 =?utf-8?B?T3ZORC9uZ1BvMHc0eXkvRDRJUVpwRmE2aHRnczNxVnIvLzl1eVl0RFhBTXo0?=
 =?utf-8?B?VHdsZjRFOXI3L2xOYkt3bjdhZ1NycTZieTlONTVHTFZMaWU1Y1hLYzV1UFZ3?=
 =?utf-8?B?NDFoZlJRb3oxUXBjakJQZi9Ybkx5d2NHbVZJL3FRc012dHFQVnFjckRTWXcv?=
 =?utf-8?B?TGdtTnhrNWdiUmJIM2hHMkxTd2ZSM2QxLys2ejZUbnZvclJENjY1NGZJY3ZM?=
 =?utf-8?B?K1NBa25SQ0VDeEt5aDhUbmg0MG9hM3ZlREJkNExVMlZpUkg4cFlsNE1ySkh0?=
 =?utf-8?B?NTJqcU5sZTBlanhWN2ZoMmpxNS8rcXhydXk4MUMwSFJQUmM0SnIwcmUyaE1n?=
 =?utf-8?B?ZVZnQVMwS1hvVGkyWjc4emlwVk9jUTdVd3lRMzAvc2w4eEdhSHllWkljdnFi?=
 =?utf-8?B?SjF4REFmTklkMGg4eFQ0dkEwTStNMCszc2JKWUxRZ2pyYlBGcStWM2VkTGVD?=
 =?utf-8?B?RkVNajdwL3pnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnRzdFU2NjRTdXFnQ1oxMXBNVEkydkdORDNPemlhMTdGVFpxNW9qb0tnS21z?=
 =?utf-8?B?U25UWUQ5aSt6SHJNd3gxRmlrbXkwRXFBWkZ2UFVwT1FXQnpvaTNUSllVcVhG?=
 =?utf-8?B?c1VvdFhNNUJDN2UyR2NCVjNxM2FuNGxzVEh0UU1pWjNaczF4OGJaWVlqWlhK?=
 =?utf-8?B?REVwdjFPS3hRQVZ4SWFWWjFDNUdtN1p3d1czaE1YZ1duMkZaL0xvRHNDc2Jw?=
 =?utf-8?B?WEZub0x5MmNKNzRyTzFXWUxTVXBITEdhc0I1US9id0lmNWJGeTJ6ZURZNXZi?=
 =?utf-8?B?Y0NwaDl5Y1QxRnBZWlBCMjY4RGsxWFpFdFJiaVRvTGlTbGFLOE9NSEd4L2Rz?=
 =?utf-8?B?WHhZeXFyaWVaYm9uUUdOenJBTDBMelRLQ0JFbm1HaTJmSFRoM0ljUnNUZEI3?=
 =?utf-8?B?cllJb3YraFNqZTN4c2hsQVBvVk1kMHlELzdyTlZPNk10MXRJWEo1UE9VdXVC?=
 =?utf-8?B?MFRGVC9mRG84a0ZPcThCb0xSK2dhWUIzWHN1UE5UV0JrSzRnNEY4RUk5TXZH?=
 =?utf-8?B?ZlA5cTg3RUlTU3hCREN1VWovR2VwdWZvb0VLeHowMUducURZUlRWUW03bEU2?=
 =?utf-8?B?Q004elZTSEZpdFRma29BaXNySnVKeE8vK0dRRG9wVGhPUFhBQlUzQk4wMXd1?=
 =?utf-8?B?c1c0anFDdHhBUmc5MjYyUWNpQzVsVmdzUkRrYzdCNmFNOGtGRDZlVFRHRmdB?=
 =?utf-8?B?MVAyZlJXM0grWWRkNU9JZk9QL3FZV0hPL21FRmh5RjJDc05maG8yK2xwSUh6?=
 =?utf-8?B?VnhkcjBMQm1DUitzQVF1N29tVHdwUkNNY0RjdFFteVhlT1RhNjVWNnlFR2dX?=
 =?utf-8?B?bGM0Ylo4NnRYbU5MZWVtMVJXUmp3RGdNRlNTdWdDZGtudkVMWmMxT0wyTXE2?=
 =?utf-8?B?anBBQTU0WnAvblpLcTNqY0I2R0JOa1ZQRlVONzRMelVSSFp5anJrRGovMTlX?=
 =?utf-8?B?Z3FHcXJXYlUxaGxuN0pjWGdqMVlxR2RFQ3hQcE1rZUtla1l3Q1ZvRlRublRM?=
 =?utf-8?B?cXR0clBheGtaTFFOSHFNTDVibDhoQVlnbHVrZjh6L2VBNS9nNy9oZ1BMejRQ?=
 =?utf-8?B?Q1ZURFZsb1dXMkcvN3FYZWZVd08veG90ZjJiWXEwUnFEK2syR2wyZDFRNVhL?=
 =?utf-8?B?Yy9aVUVkcFk3cWpZaXdNblF3djhlSmVvU1NZZ0tIVnd2NzhBdVhsM2tWbnRl?=
 =?utf-8?B?OTJwTEF4SVdRTmF5bGNseFh5c1VSanozNng3QlFaWU5rZGFUMzlCNTdvNVVU?=
 =?utf-8?B?NWxUUTBqRk9QV2RIT1ExUzVzcmJ5UUhmVTYyRmVoNkhMY0xDUE5reXhyUTdu?=
 =?utf-8?B?ZmZUVmU1OWRLVTF3cEI4L3ErR3ZMQlBVTE9KaEUyeFFLaCtpSTdRZWdJelB0?=
 =?utf-8?B?dVlzdEg0cDcrMXg5SFpHSGJINHUxamxUZk80SWc3NlNGSzBvLzlIQWg1VkZq?=
 =?utf-8?B?OUVFSEdkcldSSjNOT0xtci9GNXRwVXVDUjl3Y3dEa2h3aHZLRFJwemVublh6?=
 =?utf-8?B?L1RlTlMraTlnVE1sQ29xenprRGduU1liSGpRRkYrMUhtYlI0Q3ZjRzIrQWVu?=
 =?utf-8?B?L2tEOElWQldhV0RkM1ZMMTBGYzBJU1BaUjFRK3YwMXFFQVMvTit3NWQyb29Y?=
 =?utf-8?B?Mmh3TDZjVTU4UmUwalgyK3JYNzJGOEIzSjhRTUxsY1JMK2ZJYXBoVDRFTFRz?=
 =?utf-8?B?QVg3Yk9WaXU3N094c0JSbWFtcnBVZG1BeitHeG4vaTUyQlA0S3ZlcXNzM0Z5?=
 =?utf-8?B?aGhEZU9sbS9rcW5GeFVFcmJWc013UGRnbW10STRQV28yQllzamovMU5yUDkr?=
 =?utf-8?B?T2VHL0FsMEcwbmZwdU1DM3M5Qko1OCtiNnZONk5kaVd3eVlLeEZxYnZWVDVs?=
 =?utf-8?B?TlRFMFZxQzFBOGlUWEs1b2IwNWlVMC85Mmo1bW52QnN4dnZuN2RkRFdSalRH?=
 =?utf-8?B?RWtjVTk4cFZLb2RQVHNOQmNqUzA3a2JjY0xaYXJPMHJsb2s1eW1Uc0FHUDJB?=
 =?utf-8?B?Y054NnZxejdORU1vYjgxQmNJOGVpUEN0ZStBTTVORGtYSk5HME16RlZOOGVk?=
 =?utf-8?B?K0JoeHd5RXBUN1lFSTYyVkE4OTVVd2ltTHNsZjF0ZWF3WUQ5cmFZT2dTV3Ru?=
 =?utf-8?Q?F/kxpQIlpFVr1XcsnRuQozKVK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee75dcd0-8fbf-4f18-b6c9-08dd976b6f11
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 06:56:23.7151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qLZFakezRZo9tpqlzYgGshmlcelMzE4Xv78eK0peoFO9qbgJN7XC7F22qGZdg3ehim3L6Nj3FjxTKZX5YHmW9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6165
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBGcmlkYXksIE1heSAxNiwgMjAyNSA1OjA0IFBNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDAwLzEyXSBkcm0vaTkxNS9mbGlwcTogUm91Z2ggZmxp
cCBxdWV1ZSBpbXBsZW1lbnRhdGlvbg0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEluaXRpYWwgc3RhYiBhdCBpbXBsZW1l
bnRpbmcgdGhlIFBJUEVETUMgYmFzZWQgZmxpcCBxdWV1ZS4NCj4gQnJpZWZseSBzbW9rZSB0ZXN0
ZWQgb24gTE5MLCBub3QgbXVjaCBtb3JlLg0KPiANCj4gU3RpbGwgaGFzIHF1aXRlIGEgZmV3IHdh
cnRzLi4NCj4gDQo+IFZpbGxlIFN5cmrDpGzDpCAoMTIpOg0KPiAgIGRybS9pOTE1L2RzYjogRXh0
cmFjdCBpbnRlbF9kc2JfaW5zX2FsaWduKCkNCj4gICBkcm0vaTkxNS9kc2I6IFVzZSBpbnRlbF9k
c2JfaW5zX2FsaWduKCkgaW4gaW50ZWxfZHNiX2FsaWduX3RhaWwoKQ0KPiAgIGRybS9pOTE1L2Rz
YjogRXh0cmFjdCBhc3NlcnRfZHNiX3RhaWxfaXNfYWxpZ25lZCgpDQo+ICAgZHJtL2k5MTUvZHNi
OiBFeHRyYWN0IGludGVsX2RzYl97aGVhZCx0YWlsfSgpDQoNCkZpcnN0IDQgYXJlIGFscmVhZHkg
cmV2aWV3ZWQgYXMgcGFydCBvZiBHb3N1YiBzZXJpZXMuIENvbnNpZGVyIHRoZW0gUmInZWQuDQoN
Cj4gICBkcm0vaTkxNS9kc2I6IFByb3ZpZGUgaW50ZWxfZHNiX2hlYWQoKSBhbmQgaW50ZWxfZHNi
X3NpemUoKQ0KPiAgIGRybS9pOTE1L2RtYzogRGVmaW5lIGZsaXAgcXVldWUgcmVsYXRlZCBQSVBF
RE1DIHJlZ2lzdGVycw0KPiAgIGRybS9pOTE1L2ZsaXBxOiBQcm92aWRlIHRoZSBudXRzIGFuZCBi
b2x0cyBjb2RlIGZvciBmbGlwIHF1ZXVlDQo+ICAgZHJtL2k5MTUvZmxpcHE6IEltcGxlbWVudCBm
bGlwcSBxdWV1ZSBiYXNlZCBjb21taXQgcGF0aA0KPiAgIGRybS9pOTE1L2ZsaXBxOiBJbXBsZW1l
bnQgV2FfMTgwMzQzNDM3NTgNCj4gICBkcm0vaTkxNS9mbGlwcTogSW1wbGVtZW50IFdhXzE2MDE4
NzgxNjU4IGZvciBMTkwtQTANCj4gICBkcm0vaTkxNS9mbGlwcTogQWRkIGludGVsX2ZsaXBxX2R1
bXAoKQ0KPiAgIGRybS9pOTE1L2ZsaXBxOiBFbmFibGUgZmxpcHEgYnkgZGVmYXVsdCBmb3IgdGVz
dGluZw0KPiANCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAg
ICB8ICAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyAgfCAgNjkgKysrLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kcml2
ZXIuYyAgIHwgICAzICsNCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFy
YW1zLmMgICB8ICAgMyArDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bh
cmFtcy5oICAgfCAgIDEgKw0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oICAgIHwgIDIwICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZG1jLmMgICAgICB8ICA5MCArKysrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kbWMuaCAgICAgIHwgIDExICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZG1jX3JlZ3MuaCB8IDE3MiArKysrKysrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuYyAgICAgIHwgIDYzICsrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuaCAgICAgIHwgICAyICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuYyAgICB8IDM3NCArKysrKysrKysrKysrKysrKysNCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuaCAgICB8ICAzNSArKw0K
PiAgZHJpdmVycy9ncHUvZHJtL3hlL01ha2VmaWxlICAgICAgICAgICAgICAgICAgIHwgICAxICsN
Cj4gIDE0IGZpbGVzIGNoYW5nZWQsIDgxMSBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkg
IGNyZWF0ZSBtb2RlIDEwMDY0NA0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZsaXBxLmMNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZsaXBxLmgNCj4gDQo+IC0tDQo+IDIuNDkuMA0KDQo=
