Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB25D9B3665
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 17:25:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5249310E0E1;
	Mon, 28 Oct 2024 16:25:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OZ7W0YzR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A9F110E0E1;
 Mon, 28 Oct 2024 16:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730132728; x=1761668728;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=pTzgXNG1k/CAfeFpGnqQfpjdJg31eT5G4h7Nkhwr8xc=;
 b=OZ7W0YzRrNPKYK7a8Le/N419InitVdGKNHIIpJu2m/wnljAluOUv6O/U
 vp3EkJVNX5AUqqoWBl3QSmG2v3I7OXi/1xOTEwuc0bucEAQTwzZDhCFcA
 ojQmCxkiXMSTyaM1GhZLFfioHWRSmFRrzRJ85m8ZO4tfPFFjSOSxTNrzs
 pTX5dDR6tEn/YA2OmOwbzN3oYTQ7JFGVOZkHPMeIqioR2CBbrKxDorxWS
 UwyEGUS2nEBJ6jc4fL5bcl3yNRz6qbpvzDcQYyIull1OrHrXPavrnObw3
 9eWOD47SkqaqN77P1DMRGi492ujVT5T8+gePkwTSzpzPUxQwv4iRohNcb Q==;
X-CSE-ConnectionGUID: LzJwrIPeQEKbwjKY3grMRw==
X-CSE-MsgGUID: rQN96XfBR4yW6H/FYSzeGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="41100605"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="41100605"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 09:25:27 -0700
X-CSE-ConnectionGUID: 2SO6ukAKT0G0g9cjTvARkA==
X-CSE-MsgGUID: aY0tPtaaTAC0Gg8yLX1xxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="85619774"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 09:25:28 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 09:25:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 09:25:27 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 09:25:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D4/h4Ux/XNGkBF/j8aN2wwUl3tK/mn5s6vGCsvJU17/m8kxTJx0G0oHgHMbSmFDwsWI9Oubruz7QPPIq9/XCmjnpsvfHEwgjorx2f7vAO4uZPB0r4RlUxqiRMPEwoGiOLG4gWcQmFrwlH80LjNe7PIAVtklcgqVeWBC0QRxElKLb2rVEr+hYvodQ1ZImBwi+17jtVTn3i/GoiS9oc3mOltOiUHIjGS5XxugZhACepnGp/CEagMQcMmdQNwkFnKF8bM8XCQWdb3d7bv9dgAyZygQMJysrlqFLeEqPqqd71JAGriM3z761c3dhtgOoxiH5d0hIxt7ZEZtAuO08NMhczw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pTzgXNG1k/CAfeFpGnqQfpjdJg31eT5G4h7Nkhwr8xc=;
 b=xQqni66B0U+wE01uNSr3NHZvOoq0abfjsyndPL3uKghWnkHZ1lrsHC9E8G/YymHyAfkQRj3IfXHTYHRLlbm8cmY+BkzCymB32yvL7McT1E+keyvXJoNtaLRUm/1277KzMRaVw64xorTbDnsyRHl08i2sk37/LIG2AgncMM6faZcy/jac72sYuTHRk3l/0usRlIIcyFU5DyDcBfc4+qq9+TwkIBU10xYU5UjtC/i3SPYtxuU/hHm+zqSnoTdGJGkPYoi3nu5Fr4gLiWR+70k4rQlsH8ZTwlTP6comGqkWq8YPl/IfaISrUFOtABFMxZM6msR5+VChtwDDVJBeNE2mRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8421.namprd11.prod.outlook.com (2603:10b6:a03:549::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 16:25:23 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.023; Mon, 28 Oct 2024
 16:25:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2690c5529e6bafeb0e35d757754622e519485a85.camel@intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
 <20241025204743.211510-2-clinton.a.taylor@intel.com>
 <2690c5529e6bafeb0e35d757754622e519485a85.camel@intel.com>
Subject: Re: [PATCH v5 01/11] drm/i915/xe3lpd: Update pmdemand programming
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Taylor, Clinton
 A" <clinton.a.taylor@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Date: Mon, 28 Oct 2024 13:25:18 -0300
Message-ID: <173013271888.3514.3255629474297829807@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0129.namprd03.prod.outlook.com
 (2603:10b6:303:8c::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8421:EE_
X-MS-Office365-Filtering-Correlation-Id: 0232074e-68f4-41b6-780c-08dcf76d1f6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SlpNc2hXL2pydHIrQzlVSDU0RzB0N003UkRzTk5aZmJsYlI2OEF3SldZUUFQ?=
 =?utf-8?B?Yys3ekQxQkxGSWV5OElzeWRQRGJSdTB2UEdaczRQUFo3YXRGNGs1QmE2MTV3?=
 =?utf-8?B?bE5VanFSTXp2bVdQWXZodkpIU1hlOUR4TzlSMGdKUk5RcXJjU1lPVHpUaE50?=
 =?utf-8?B?eG5DNWFmenM2WUNZT0xKZ3ZLL2d1dk8wR0dkVHBlQ3Nqa3FZSlRGVUZ4TkVC?=
 =?utf-8?B?Z2JXN0tYcjg5Uy9jcG9iWFVKNWpEZklGSWNxTjVOWjNHeDdkQ0tvNE56ZDlh?=
 =?utf-8?B?d3JWWC9IdnZyam9DZ1RNVkYyRDlRNGprWkp5WWhXbUlxTzNyb0c3eXdLMjcv?=
 =?utf-8?B?d2MveGIyNjhCNFE0OVVkOWphSVJRZHh5bUFnUmdvSi9oaDBYcE90RTN3Wmg4?=
 =?utf-8?B?aTVTTGt2am9lUlF4TEJKME5xT1VubE13R2h2RVB4dmw5OVR2dHNzUzFXTTFI?=
 =?utf-8?B?N0xHY3I3RWFlSlBraHJuZDNaL2o5TTdpNGx2NEtXaEFuREMrczE1UG9TT29v?=
 =?utf-8?B?YUJBTGlDV1ZpTlpKeTRzWTBKZklTUmdNdXN5ZHQ3eWd6M3ZLZm9jM04wRXFO?=
 =?utf-8?B?aERnTWdROFBsYTBzNE9EeTdKMzJnY2drc3Arb0I2MGo3clJMVER2ZGZBbC9o?=
 =?utf-8?B?VXVlSlE3VmFRckFZa0JLV1d1V3Z0SEpTeEJwNTY2SWlVekx2cHYxcWhreEVJ?=
 =?utf-8?B?b1I0bVUzZlEwZlRtdG9Cc1lsWTFnKzJLVWVXQlp1dVZTT3F1OFpHa1RGTjRx?=
 =?utf-8?B?ajRWbjh5UGVzaTZrT0hkWnJUQ29LWVJIRFJ4SzVNS0ZWbGZ5MUJ3dkh6ODVn?=
 =?utf-8?B?bTJ0bElPSnIzWjJyT0lRQmNMYXkrYU8vbnZLZzBlK0p4WUhxSDNEc3UwelRw?=
 =?utf-8?B?Y28vQWRLOGljOGduRGNhcGV0bEpvUXgvUmtsSUNEQ2FJMFlOM0lnaEJGSURy?=
 =?utf-8?B?MnFGUEwyenNIOXEvQTV2cVRLWjU4d3FZM21yK1BmaGtCWlF4NVZXMXdkM1JL?=
 =?utf-8?B?SlVXUll6WWZjRzJuWDdiT2hsUWhDSjBPV200S1ZIYUtGMWt2TFl5SWFtSFp5?=
 =?utf-8?B?RW5xcWpVOTNtUExqR0xZVXNSaWF2M2lDekpOSGpqRHVWc1RSRWhTUmN2TmRL?=
 =?utf-8?B?NDh3VllSQXpha3VQTVRIajdzYm9OeTlXTk51alNiT29uY3RuVGJZZUxweWtz?=
 =?utf-8?B?N3ZZZldjS2RiL0s4UkdveWhNQmJadlFGVG1IeXdNQ3dEQmpVaUZLYmd3SHh3?=
 =?utf-8?B?TW9aN1Y5dnBPYjdmZTE5YlBHTWkyV0dud3Bya1dyeU9aZXR2RlRaVWpTYUdo?=
 =?utf-8?B?VjFKeFVzdFFIYy9mQTJORjBXQ2ZZeUt2dHM3NWdlNStFMzRvYzRNZnpiVlVn?=
 =?utf-8?B?VThpWFhDK1RwQzNETURtSW11M1BDc3czLzNPVjRRUEMxV1dvNFJhOUJ4aEtz?=
 =?utf-8?B?bzREbGNhNzJrU3kzQXYwNjZtL3pqekU5L2V4T2w1czd1MEZjLzlMT1BFeEdG?=
 =?utf-8?B?dmd4d25tVTFFYlRXZnpnSmZmLyt0S3BrR1g3bzdtL2d0MGN4aVc0Y0pWNFJl?=
 =?utf-8?B?Lzg5MHNXaDZ4K0w5WnRCUEJiQjQ3SXlRN29FME1RcmErKzB0V3VIZ01ST1dt?=
 =?utf-8?B?U0hLN3Jmc2U4V2N4RVUxNUJxRDA3MmdaSHFNZStlOWVJM1FpQTlZak9sWFov?=
 =?utf-8?B?ZzNoZ1VkWU5ZVGNEdHdrc0xROEJpcWJXa2RkV3c4ZmpzNzd1K1ZUU0ZMRy9y?=
 =?utf-8?Q?IgwS14WXqimhk1kTwa5XDaIKcLxXqva59uBrpYC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWo3c2ZrTDJ1UjhRaEJmMG5mS3VDWEVxalQ0enpBd2FkT1RFNmQ4WUVFQWFD?=
 =?utf-8?B?cHY5YXoxK3FNTGIyUXNSb3ZLbHJya1NaT1I2UmRlK2prcm5vT1FQTElrVi9U?=
 =?utf-8?B?VTM5eENKU0toRURkVzMzRnR6anFJM2hqaVpYWVBxZnZjYzFNVy9hbVZicUZ1?=
 =?utf-8?B?M01SamhRbjNTUzJSL01yYVpxK3htU1dsN0czYjUrUmkzSDNlKzdwUWU0dnVx?=
 =?utf-8?B?Y2lHaUxOODNNUmhWeXduSDA4d0Z2aWFINmZvWkc1KzN0UHE4WjZYTlY4Rmx3?=
 =?utf-8?B?YWdOMW1rbkQ5V3RLVFVYRjVkNGZha1M1VzRlODJUTkgyZGVCay80NTVqazlw?=
 =?utf-8?B?RVc0eEhYRDJ6d1JtR1pNUHA4Ykl2QWZLWWhzMmJ1bjlOS2t4R0dlYU9aTmRW?=
 =?utf-8?B?ZzVlWk80alBCSnQ1aVhra3dKbmJTQmh4emNFZFJ4Z1QzZWJ4YTR6eEkybzNV?=
 =?utf-8?B?VTBkYW1oaExtMjNPVG9HQkpUNFZKMUE2V2wwZjB4Wi95cWZ2c1VtdGtTTytS?=
 =?utf-8?B?QkwwTVdrRDNtdUVjOE1OYkNpYUFLMFVUdnp3VHN1TmhiMWNLQ3psZ29sTWN0?=
 =?utf-8?B?QW93MXpkMXNvSG1FM0VwN213ODVEZHVhQnVyNEdLRlpEbGR5VFRVMjk5dk43?=
 =?utf-8?B?QTRhQ1QxWEFyS1NZMHNGRmw4RzF0V1dBWHNNU2hzck8wTW9STVlTMWtOMXIv?=
 =?utf-8?B?MERmZnMxdlloQlZZMlhhNUFYTEhkcjJWV09tcVBUZW5Uc0ptaEVVaDJOaG5O?=
 =?utf-8?B?UXA4NXpZeTArK2FwUWIwV0RNemxTdHlvL1pNSmJFUzNSbW0zRW1HTWdUZ2ti?=
 =?utf-8?B?WEw2YWxoSzVZTjl0SnFaT3hFSW9HYlFUYkpJOFVnT1dnbHFNU0dSd2thbGhp?=
 =?utf-8?B?NHZRQURTQkFsWGk0Q1FCUU5HOXcyRjM1aTFLSjdJc3hXdFFLVmJUS0JpNkFM?=
 =?utf-8?B?SDlic2FDOTh0d3VUYkh1Y1FLOE5ndGZuaFVJYjhLbzhYMmN1ZG91UEtTbERY?=
 =?utf-8?B?VlRnenViUXI5TEgvYi8vbjVSbzVSSkZuRDZOd0gyVVUwSmUveEZaZ2tPYVh6?=
 =?utf-8?B?a2JMcXRCTnB4TmhUSkFXVWFkUno5V2ROSE1OTFdja3N3RVlIRXVxbnNCREEr?=
 =?utf-8?B?K29zdXQzTm9CNncrQkVTSEcwZFUzYlpBaTJiZkFCZnJubVVqaG9FaFovWVpn?=
 =?utf-8?B?emJkbnZaaUhjNEZMRlR6T0FLT0RJVXdrTHhQbnRQVmJudVY5M3VHSFZZMW1E?=
 =?utf-8?B?VkNVNytpU0U4SVNpbXJTYWt0dFV4Nk4xZW1mWWJtSmZFZ3NXRVN1Y3c0cnk1?=
 =?utf-8?B?eGs0Y2VlQzRsOVJQRXpEYkN5QUpMUm1TdjhEVm5pc3h0S3VDZXY3ckhzNVVm?=
 =?utf-8?B?NFNpY2RZRzF6NzMvSTdvSlE5N3lxVzROcjJKaVc2ZzBGZHAyQzFTdTJXSS91?=
 =?utf-8?B?TVVXVG5MM2lMeGk5V0xERm0xWDNDenY0eTRnelhOR0l4T3BGVnp6V1RWT0d2?=
 =?utf-8?B?bHozbGdnTmZ2Zm0rVU9wUzJzeVF4emFvUjNWQkp4T2g4eVRqb3pJUmJwVWhj?=
 =?utf-8?B?bGFsMlkxdklXS3lDSjdrWkpMOUxFV0NGa1Q2aDBYKzJITUxaNXRVeTJ1SURh?=
 =?utf-8?B?N25ibEkwYjZCNFkzNk5namRXckJ5RmNOMGJWRTNLRThRZWpSeG5ldXB5SG5s?=
 =?utf-8?B?N0hUQjRwaENyWGYxc3VNRUxpSU5XcGFnazlhQVlQSlcrVUlzRi9iWVNPRDVt?=
 =?utf-8?B?T21ZUXNoVkhTdHJ6Sm1EMG1hcGxDbFB5RWUybE4rN3FYL3Rjd1dKYzRyWUFD?=
 =?utf-8?B?dVppOUVjaURSVTdrNnhlazBQUmNEcGhrd0tUYTA1bzNhdHVJQS95TUtuWFZp?=
 =?utf-8?B?Y3ZLb1VPcUQyWjR1RGh4SU1FNXJzNjEvbHJGN2wzZHd0ZzBnUXlIMitGQWo5?=
 =?utf-8?B?OWtDcnl4dkgrY2I3UGd1UUlzTUZ4WDRSWVNYN0tuQTI4VlRtTW9sNzQ1RWRu?=
 =?utf-8?B?dGVVNHh0SStWM1RwSlNQNitQcHZMeDVseEFqUEZSRTFITWhUVE1xd2s2dGN0?=
 =?utf-8?B?Yk5lL3BaTWF0aWF1YXhYQ0JXSFZhei81WEJiNFlIQWdFT3E5blI4L20rVlRE?=
 =?utf-8?B?Z1JqUEpJV3JSbk1jRGgvWU5QL0pYV3NUcjd4dlpjWGRtVHE1cFQrNmJYR2hj?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0232074e-68f4-41b6-780c-08dcf76d1f6a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 16:25:23.3761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X3EVRZuUnw3zT5K31sBKvhN6WHGle0Vzw9wppUjydPQzIAu/KVlDppis0LMlNOdIUgtYFirZyCtaEzMHuxp5NA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8421
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

Quoting Govindapillai, Vinod (2024-10-28 12:19:01-03:00)
>On Fri, 2024-10-25 at 13:47 -0700, Clint Taylor wrote:
>> From: Matt Roper <matthew.d.roper@intel.com>
>>=20
>> There are some minor changes to pmdemand handling on Xe3:
>> =C2=A0- Active scalers are no longer tracked.=C2=A0 We can simply skip t=
he readout
>> =C2=A0=C2=A0 and programming of this field.
>> =C2=A0- Active dbuf slices are no longer tracked.=C2=A0 We should skip t=
he readout
>> =C2=A0=C2=A0 and programming of this field and also make sure that it st=
ays 0 in
>> =C2=A0=C2=A0 our software bookkeeping so that we won't erroneously retur=
n true
>> =C2=A0=C2=A0 from intel_pmdemand_needs_update() due to mismatches.
>> =C2=A0- Even though there aren't enough pipes to utilize them, the size =
of
>> =C2=A0=C2=A0 the 'active pipes' field has expanded to four bits, taking =
over the
>> =C2=A0=C2=A0 register bits previously used for dbuf slices.=C2=A0 Since =
the lower bits
>> =C2=A0=C2=A0 of the mask have moved, we need to update our reads/writes =
to handle
>> =C2=A0=C2=A0 this properly.
>>=20
>> v2: active pipes is no longer always max 3, add in the ability to go to
>> 4 for PTL.
>> v3: use intel_display for display_ver check, use INTEL_NUM_PIPES
>> v4: add a conditional for number of pipes macro vs using 3.
>> v5: reverse conditional order of v4.
>> v6: undo v5 and fix num_pipes assignment
>> v7: pass display struct instead of i915, checkpatch fix
>>=20
>> Bspec: 68883, 69125
>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
>> ---
>> =C2=A0drivers/gpu/drm/i915/display/intel_pmdemand.c | 73 +++++++++++++--=
----
>> =C2=A0drivers/gpu/drm/i915/display/intel_pmdemand.h |=C2=A0 4 +-
>> =C2=A0drivers/gpu/drm/i915/i915_reg.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
>> =C2=A03 files changed, 53 insertions(+), 25 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> index ceaf9e3147da..32443ae8e76c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> @@ -258,6 +258,7 @@ intel_pmdemand_connector_needs_update(struct intel_a=
tomic_state *state)
>> =C2=A0
>> =C2=A0static bool intel_pmdemand_needs_update(struct intel_atomic_state =
*state)
>> =C2=A0{
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct intel_display *display=
 =3D to_intel_display(state);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct intel_bw_st=
ate *new_bw_state, *old_bw_state;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct intel_cdclk=
_state *new_cdclk_state, *old_cdclk_state;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct intel_crtc_=
state *new_crtc_state, *old_crtc_state;
>> @@ -274,12 +275,16 @@ static bool intel_pmdemand_needs_update(struct int=
el_atomic_state *state)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0new_dbuf_state =3D intel=
_atomic_get_new_dbuf_state(state);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0old_dbuf_state =3D intel=
_atomic_get_old_dbuf_state(state);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (new_dbuf_state &&
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (new_dbuf_=
state->active_pipes !=3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 old_=
dbuf_state->active_pipes ||
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 new_=
dbuf_state->enabled_slices !=3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 old_=
dbuf_state->enabled_slices))
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 new_dbuf_s=
tate->active_pipes !=3D old_dbuf_state->active_pipes)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0return true;
>> =C2=A0
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(display) < 30=
) {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0if (new_dbuf_state &&
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 new_dbuf_state->enabled_slices !=3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 old_dbuf_state->enabled_slices)
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return=
 true;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0new_cdclk_state =3D inte=
l_atomic_get_new_cdclk_state(state);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0old_cdclk_state =3D inte=
l_atomic_get_old_cdclk_state(state);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (new_cdclk_state &&
>> @@ -327,10 +332,15 @@ int intel_pmdemand_atomic_check(struct intel_atomi=
c_state *state)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_ERR(new_dbuf_stat=
e))
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0return PTR_ERR(new_dbuf_state);
>> =C2=A0
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0new_pmdemand_state->params.ac=
tive_pipes =3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0new_pmdemand_state->params.ac=
tive_dbufs =3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3)=
;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) < 30) {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0new_pmdemand_state->params.active_dbufs =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0min_t(=
u8, hweight8(new_dbuf_state->enabled_slices), 3);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0new_pmdemand_state->params.active_pipes =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0min_t(=
u8, hweight8(new_dbuf_state->active_pipes), 3);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0new_pmdemand_state->params.active_pipes =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0min_t(=
u8, hweight8(new_dbuf_state->active_pipes), INTEL_NUM_PIPES(i915));
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> =C2=A0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0new_cdclk_state =3D inte=
l_atomic_get_cdclk_state(state);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_ERR(new_cdclk_sta=
te))
>> @@ -395,27 +405,32 @@ intel_pmdemand_init_pmdemand_params(struct drm_i91=
5_private *i915,
>> =C2=A0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0reg2 =3D intel_de_read(i=
915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
>> =C2=A0
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set 1*/
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.q=
clk_gv_bw =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, reg1=
);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.v=
oltage_index =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, r=
eg1);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.q=
clk_gv_index =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, r=
eg1);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.active=
_pipes =3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.active=
_dbufs =3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.a=
ctive_phys =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_PHYS_MASK, reg1);
>> =C2=A0
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set 2*/
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.c=
dclk_freq_mhz =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, reg2=
);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.d=
diclk_max =3D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, reg=
2);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.scaler=
s =3D
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
>> +
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) >=3D 30=
) {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.active_pipes =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_FI=
ELD_GET(XE3_PMDEMAND_PIPES_MASK, reg1);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.active_pipes =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_FI=
ELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.active_dbufs =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_FI=
ELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>> +
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0pmdemand_state->params.scalers =3D
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_FI=
ELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> =C2=A0
>> =C2=A0unlock:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_unlock(&i915->disp=
lay.pmdemand.lock);
>> @@ -442,6 +457,10 @@ void intel_pmdemand_program_dbuf(struct drm_i915_pr=
ivate *i915,
>> =C2=A0{
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 dbufs =3D min_t(u32,=
 hweight8(dbuf_slices), 3);
>> =C2=A0
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* PM Demand only tracks acti=
ve dbufs on pre-Xe3 platforms */
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(i915) >=3D 30=
)
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0return;
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_lock(&i915->displa=
y.pmdemand.lock);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (drm_WARN_ON(&i915->d=
rm,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0!in=
tel_pmdemand_check_prev_transaction(i915)))
>> @@ -460,9 +479,10 @@ void intel_pmdemand_program_dbuf(struct drm_i915_pr=
ivate *i915,
>> =C2=A0}
>> =C2=A0
>> =C2=A0static void
>> -intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 const struct intel_pmdemand_state *old,
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 u32 *reg1, u32 *reg2, bool serialized)
>> +intel_pmdemand_update_params(struct intel_display *display,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct intel_pmdemand_stat=
e *new,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct intel_pmdemand_stat=
e *old,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 *reg1, u32 *reg2, bool seria=
lized)
>Wonder if this need to be aligned!

Yep, it looks like we need an alignment fix here indeed. I just applied thi=
s
series and the end result is misaligned.

>
>Otherwise, looks okay to me.
>
>Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

With the alignment fix, this patch is

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

as well.

>
>> =C2=A0{
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * The pmdemand paramete=
r updates happens in two steps. Pre plane and
>> @@ -495,16 +515,22 @@ intel_pmdemand_update_params(const struct intel_pm=
demand_state *new,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, qclk_gv=
_bw, XELPDP_PMDEMAND_QCLK_GV_BW_MASK);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, voltage=
_index, XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, qclk_gv=
_index, XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_pipes=
, XELPDP_PMDEMAND_PIPES_MASK);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_dbufs=
, XELPDP_PMDEMAND_DBUFS_MASK);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_=
phys, XELPDP_PMDEMAND_PHYS_MASK);
>> =C2=A0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Set 2*/
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg2, cdclk_f=
req_mhz, XELPDP_PMDEMAND_CDCLK_FREQ_MASK);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg2, ddiclk_=
max, XELPDP_PMDEMAND_DDICLK_FREQ_MASK);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg2, scalers, XEL=
PDP_PMDEMAND_SCALERS_MASK);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0update_reg(reg2, plls, X=
ELPDP_PMDEMAND_PLLS_MASK);
>> =C2=A0
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(display) >=3D=
 30) {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_pipes, XE3_PMDEMAND_PIPES_MASK=
);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_M=
ASK);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_M=
ASK);
>> +
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK=
);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> +
>> =C2=A0#undef update_reg
>> =C2=A0}
>> =C2=A0
>> @@ -514,6 +540,7 @@ intel_pmdemand_program_params(struct drm_i915_privat=
e *i915,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct intel_pmdemand_state *old,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool serialized)
>> =C2=A0{
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct intel_display *display=
 =3D &i915->display;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool changed =3D false;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 reg1, mod_reg1;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 reg2, mod_reg2;
>> @@ -529,7 +556,7 @@ intel_pmdemand_program_params(struct drm_i915_privat=
e *i915,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0reg2 =3D intel_de_read(i=
915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mod_reg2 =3D reg2;
>> =C2=A0
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_pmdemand_update_params(=
new, old, &mod_reg1, &mod_reg2,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_pmdemand_update_params(=
display, new, old, &mod_reg1, &mod_reg2,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seria=
lized);
>> =C2=A0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (reg1 !=3D mod_reg1) =
{
>> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>> b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>> index 128fd61f8f14..a1c49efdc493 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>> @@ -20,14 +20,14 @@ struct pmdemand_params {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 voltage_index;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 qclk_gv_index;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 active_pipes;
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 active_dbufs;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 active_dbufs;=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* pre-Xe3 only */
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Total number of non t=
ype C active phys from active_phys_mask */
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 active_phys;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 plls;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 cdclk_freq_mhz;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* max from ddi_clocks[]=
 */
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 ddiclk_max;
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 scalers;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 scalers;=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* pre-Xe3 only=
 */
>> =C2=A0};
>> =C2=A0
>> =C2=A0struct intel_pmdemand_state {
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 405f409e9761..89e4381f8baa 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -2696,6 +2696,7 @@
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_QCLK_GV_BW_MASK=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_GE=
NMASK(31, 16)
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(14, 12)
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(11, 8)
>> +#define=C2=A0 XE3_PMDEMAND_PIPES_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(7, 4)
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_PIPES_MASK=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(7, 6)
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_DBUFS_MASK=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(5, 4)
>> =C2=A0#define=C2=A0 XELPDP_PMDEMAND_PHYS_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0REG_GENMASK(2, 0)
>
