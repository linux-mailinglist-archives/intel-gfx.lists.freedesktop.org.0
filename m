Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 384909940B7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 10:12:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E556C10E48D;
	Tue,  8 Oct 2024 08:12:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h7SDuOD2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59E3B10E48D
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 08:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728375170; x=1759911170;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ISI3oF26AXr1DuG27C91ussZi3joVnI1uc3U9RqBY70=;
 b=h7SDuOD2FcD65LWxsSfI9FbeWPxZa59PH6j/H288T+rJGsSaeALC0juO
 um1R57MF4SAx7rGzrzL7ntoli7zPKgqKsFBD6gnck79h/kT2nZXRF8CbQ
 WOXm4gT3mti+n+HgQeGiD7PzsA6vnBY6Xo9BRusuhUKu6FczTcFQLY1Hy
 xidIp0mCi0QlrXnMeOEbNk1x3o9mTHuofUw31SLNvPPcYX+8OmeQkXShM
 jsAEuY3BB5izIPhoYM63R800sOswnze9IhzvCE5wTcIn4sOc5Hnl6L6UK
 GVSJMKL/tFEXfpTUp85/ciKnW3+xmrT7AFGSVnDZ6OuwbSWcjBlQ4r79V A==;
X-CSE-ConnectionGUID: PjoVGoKxRSuBTtOx8zDGKQ==
X-CSE-MsgGUID: 6DZakR09RHmy33gzydKJ1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27642894"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="27642894"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:12:49 -0700
X-CSE-ConnectionGUID: AID/R61XTfWTDxeVY6YQ0w==
X-CSE-MsgGUID: xI+53RiySgeDDRiObzGG+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="106602653"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 01:12:49 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 01:12:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 01:12:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 01:12:48 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 01:12:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k5sAm7//umn2yZdHs93JXDd4i/WkcizvMItKs4Lwr5a6L/cI5oAwEQfDEel2qB6jFFrd8LeBk/h2yg1InsLFIfGa/2GIHAnRbdVVw+TXaWv1MpIhF21xnO+lbBI740Bo6Pa+lmuYFQ/DZpIg0oLCNv/VbZCgjmIZHgenDRuubrVBrSWV/3uQj8VyQJ9U+Qot1kKn1CH1px22RoKyI4OO+dG5Uw5+dmXnYh97rfhV4Lx4zv3JqEWZ8WPYvIb7wOzyrq5EEYKXzjtIAuf/o3JM0Yd85YkQuwnZ+CbAxZLyWJSysB4EVwHwi2fsSCf222keLsbSbzOvZEDsFaIERp32vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ISI3oF26AXr1DuG27C91ussZi3joVnI1uc3U9RqBY70=;
 b=r9jbh56cfcdV1hJXpb3/TJ3rNOUcbSaw1wlaCr7e87Fk9axt2l+rdIIrOzBV7OIRJGjqIAp0koDbutA4oXQkiw507L3JidlJng7+GjAd54Zr42IT3GH7baLEndl69l/yw4KhjMn+yGKsMmCKgluPFS80N007nhi0SBwdIJ6fH7ipzmeNNLs/20L9BlY+vUf82wLqF5yfCqqrXv8HHhKXByCwHAT28L4pVrlzDBGRb45Txxgc9whc6JW15B4ctDz7m+WcQNRjeAebag2XuZIRS09/y34Rfo+nu3BPrOYYQC0Dvr31YioTC0j58G5pB6X/ODrn/ZqJ4pO+1xHZJVKtxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8026.23; Tue, 8 Oct 2024 08:12:46 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 08:12:46 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Implement Wa 14019834836
Thread-Topic: [PATCH v2 2/2] drm/i915/psr: Implement Wa 14019834836
Thread-Index: AQHbD+A01NGfHGl+Fk+juSQ9EZlNCbJzZrmAgAktPIA=
Date: Tue, 8 Oct 2024 08:12:46 +0000
Message-ID: <70fa8d99524c4e331cd0942a4e10819bbfd60eaf.camel@intel.com>
References: <20240926064759.1313335-1-jouni.hogander@intel.com>
 <20240926064759.1313335-3-jouni.hogander@intel.com>
 <MW4PR11MB7054D9AC5CE7A6BF7FDE646DEF702@MW4PR11MB7054.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB7054D9AC5CE7A6BF7FDE646DEF702@MW4PR11MB7054.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW5PR11MB5931:EE_
x-ms-office365-filtering-correlation-id: 184d86e2-6eff-4fff-68c1-08dce770fe41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NmRoVE5wYVNhZTZnaVlMcWxnSWpCS2EvYWlQSGFlcStKUmNZSEVuOWhONkdZ?=
 =?utf-8?B?TFYxZ3BHMUlNb1oyNWUxVTRBU1F0M1hobDFSU3YrVmk4MzFXb3RRa21ZeTJm?=
 =?utf-8?B?K0phUEtwWHhiOXhwRFBHZWxucSs4dTBMaHplTlEvOE83SlBIVStqT2VSaGl6?=
 =?utf-8?B?dUVwUkMwbVNHcVBEWnNiRkJoTnlBSlVxVVh2aGJLZWFDY3Z1VzNqMEF4Wnhr?=
 =?utf-8?B?QU5jOFdERGZwa1VRbVBySEdhZ1U5UG9tNW15WW40VEdPekJWaVV6UmZ2STdI?=
 =?utf-8?B?R3M4WlI3alVMMktxeGZvQXdPdWRyRlVqS0Q4OFZRbTZYdEpSNHQzTzVONDho?=
 =?utf-8?B?UE1UKytudFpxS1dQaVl4dHVFWFF0K0FFZnA1WWhzSSs3aTk5MjEzZmdjUEZH?=
 =?utf-8?B?OHhNcE53bG1lUStORlo2bWZPc3JSL05DdGFLbnREN1lmYW5oV2FLYTVkUlNu?=
 =?utf-8?B?WDJxdDRzaCtCSVlrbWR3aUJrRTBINjVQbFhndFl6VFRIWEFTTjJiRlpsamly?=
 =?utf-8?B?UG8valJLeDFiOTFGZllvZHQ1RFBJTTFwV2FadjYwVVgwMnJMaW81QW83ZldK?=
 =?utf-8?B?MkxoYlNsSi8yUHBBeGdVTjdDbEZOcFFiVDZLbklUcU1vS3F4SG1UUXZkQTMz?=
 =?utf-8?B?eXZRNURWVUxaVitDWmlxTGp1OGxlMWJMUGFrUS9EV29KRmwrSHU5cEhzV2do?=
 =?utf-8?B?WlVsNW1aZnB3d2RXOHZtUm10VnpRTy9NN09pcVZTY1lBYUg2bjFmMFhzRmcx?=
 =?utf-8?B?TlV2YU0xdmx0YVJSZDFJUjVsMWk2Q3ZoK0hvQjhLaWVSa280RWxkN1hVMjhY?=
 =?utf-8?B?ZXV3T0NCRHQyOFNwcUdxQ2NyMjhxKzAyMWQrZlR4UTgwQUVlc051c2tMaFcw?=
 =?utf-8?B?ZVdPc1FtR0R6U2JQY0xYQ3VGcGdJS2xYbW80MGhDeXVRZ0pOenc3bkc0WURT?=
 =?utf-8?B?MDZZaTV2clFHeWhWMXNxN09CVVR3cWJFcFRzaG5vdm16cG9QVlRxdC9Qbzd6?=
 =?utf-8?B?WWNrOFVGWU9JajBPN1JpdzNkVlJKY3VnSmNlN2lvcjhYUVdEQktTNUJDbEJ2?=
 =?utf-8?B?UEhwalZvNEhIYjZCNjZ2bTRYOUVWTlBYbFU5cXUzVnFhVG52YnlTR1F1T2F6?=
 =?utf-8?B?SWhUc2RlZlFRTDVmcDhsNVA3TEdOUm5MeVhDOTRLbytQLzdqeGdpSTZod0l4?=
 =?utf-8?B?ZmxOMGFtRFJ1ZzhOa29ycjRwNUtqSkpiM09DRFc4WEpUU1ZVb3c3aDdPMm5Z?=
 =?utf-8?B?Q3lZd1hOODJFS1Fvb1BGRXZjQ3c0WHVWZHNkY2pwNWZCdUhTN0E3WGVZdHhw?=
 =?utf-8?B?dExiQzBpeDVFcVlteG5idHpNSTl5b21iL1ZWa1BkRWRjYWo2UzFML01xd29m?=
 =?utf-8?B?Q0JiL2tnYWlVaGkvdnY0R1lsdlkreWhoanlFdVpIZ3BobUZxZFFHL2p3UHZu?=
 =?utf-8?B?UkJrVG1pVGVEL2c5TlAzMGVnSWhVMGgvSmJTbS94SDM5SXdzbXdPQkFnS1lU?=
 =?utf-8?B?SXI3U3RFN0hKSTVjWWlWdzZ1WDNndEJZWjdKelR2N3ZQMnNTMDRoUWVMNGNr?=
 =?utf-8?B?Ym5VUVEyZlhxbTZZeGhkblZDaEY3OXFsNkRCanltMHNEN3pqWXl1UWJVblVj?=
 =?utf-8?B?SWZMR2Q0QVNhemthaU9kK2crNWY1L3VTVXRPdjkzRFFib1dtd1lqNEFPWitm?=
 =?utf-8?B?b0xsZitldUxucDNMWFNFdG5pdm80WlZSaTYremYxR2N2R3FQQ2JYNkp4SUJT?=
 =?utf-8?B?aHVKZzVuMjBxKzdSRFBUdlNGQ2dvYjRERnBJNVN0L3QvVzV1Q3Q5ckxaUTli?=
 =?utf-8?B?ZG0xbS9wSGZNOGNKaWs3Zz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHE0WVB6RUdPU3lNeWdLYWNXVG9jVlpwbXdoV0RMMWZVRmdyd051TThqY2dp?=
 =?utf-8?B?dGFGQjlpcm43OUQ0b3kvNEtnd0IvazA3T3dPUXhhRFRIK0FsN0R3RWg0NnMw?=
 =?utf-8?B?Z2lOQUExbE1hc3VXNHQyK3R5dzVGV1lGTDU5ZTNMS2d0L1h3RDZkdWxNSTBx?=
 =?utf-8?B?ZDdnam5xQWJ2ZVFCSktWa2xqVDkwMCtoTnlRVStNWjFPUjJDZytTSnhOc1RI?=
 =?utf-8?B?VjMzeUpra3JnaTc2Mm5XUkRNRk1hMUl1dEtMR0hkUFQyd0dOS0VPeTU3cmp1?=
 =?utf-8?B?dll0ZUNEc2NwbjRZQWJlR2EvM2ZCZUdPWE9QdmVGQ1ZuZGgybDdxUlhWMCtE?=
 =?utf-8?B?ZFdidSttZjVIUm1vYlVuRjZiUFlJUXF1bFlYeEoxMVR2eXhsTXdpb1pERGhq?=
 =?utf-8?B?K1BiWSs0L1FDNUxmUloyY2FxbzFPcExxTDBlNzZMaW1aeEpTS0VYVHdUbUUx?=
 =?utf-8?B?cWtZYkpadDVtZzBuWm0waCtzV2dmY3Axb0pFQ243UGY2ZWxCOWhsY3phUHRT?=
 =?utf-8?B?VDRDSWJBRHdvUDhYTTBma2VwWVR2Yzd0aXhDSkhBM2MvZXRzQ0RZMFhWMy9m?=
 =?utf-8?B?SmpRVFZ3QVdZQzI5OEQxa3F3STJUWFgwd0RaMXZRUThwaVo5RVlENWpJTGJW?=
 =?utf-8?B?bFJzS0tSSEw0VExZeEpvQ3d3R0oxNWx0b2hFeFcyTTFUbzh0YkkyQzRUMHRG?=
 =?utf-8?B?M3BDNi9vM2lwWm5lWFNZcCtTdmpvQmlmZ2VGWkJZMmZiZy9lZEtQcmtuMEYw?=
 =?utf-8?B?NmNzQVE3RCtrUFoyNTJlZm1tV3A5WTlEYXlaZUlSN2FvZU1mTnZXbEwrM2hL?=
 =?utf-8?B?Vkx3c1Y3Rm10VElEYW5PWDBQYXZsOFM4bjZ5UXErbkx2RU1yc28yNlE0VDZK?=
 =?utf-8?B?Y0xJYk56QVYvdDNhMXhZOC9UMnpjWWEyOXArQS8wNElJYmp2UTUxK3Q4VWhB?=
 =?utf-8?B?Y1B6cXdLU3EzNjJRdWR0ekh5L0hqSmNlUWJ2YVhua3VzVXRDbVFSUDRhMUxL?=
 =?utf-8?B?VU5rM2R5VE9LbUdnNjAzNS9sVTlGcU9aU2Qwd1p2eGZidjNOUmxoZWY3MkNr?=
 =?utf-8?B?My9pY0FJOG55ZXozY09WVlFzUXVuSE9MMGJ5NDJYNU5tWHc3bkdRNWFxWWxX?=
 =?utf-8?B?NERmUlF1L1dFaGx4cGV3UUZVUEZzM2pKV05JN0tBWWl1R3IzdWhlMU9LcDhy?=
 =?utf-8?B?L3p1SXNrWGdWTklRRFR4RE1wWjVRTzdGNVVpc05KOURkWTlFa09LVG1qMHR0?=
 =?utf-8?B?OFNvME84dWM2cWN1VGx3VlMzQ1kxd3p4ZVpDc2Z3OXRtSmdCVDdDaG9zak9G?=
 =?utf-8?B?RmZxMFExTEl4WG5pNXZMLzVTcmNDL2o5UmptL1BuVkhrV1ZNVk1CNDV2NWF6?=
 =?utf-8?B?OG9SdHN3U0R1QzBVVVRzSDJHeGxyNWhRVGgyUWdkVUdtWGo2ZTdqaHdDdGUz?=
 =?utf-8?B?cEc2M0lLdmxDbDVFVzhBNWVVL3huREdoOVdibk9OY3M3anNyelQ3eVRHSkxu?=
 =?utf-8?B?S2tLVUloWnZic1o0WkRma2xDS0FXOTFNVmgxUWJSYjVUSURnTEo1dXYzWC9I?=
 =?utf-8?B?UVU5eVk3eHFDNzFHQW42UjJVcllkanVuVlViNnh1UkY4Q2xnODRFbXRISktD?=
 =?utf-8?B?TGplVzN0M1Z0V0FnWGVLd2x2OS9UKytnd3BXR00yU3gyODNxbmpOVUhja1kz?=
 =?utf-8?B?d3EvaTVDVnVwQTdtckFjRDViejFjeGxlQ0RZaFJBVm5MNk1SNTNHWDVFSlR4?=
 =?utf-8?B?K2NNblZSS2dTNFpaYnNMUG5ibXNobEMvS0dnRURENTZDVkIrZzlEREdMenFI?=
 =?utf-8?B?THZVektLTGFKU1h1djMwYWViVS9EUU11RkFkY2RRZDVDOWRPNURta24wRUF1?=
 =?utf-8?B?dGlDVkh0Z3BBN3h5bk0wdlk4Sm5hQU53NmpqMHNGV0c2MFViZnpOZEplOHdw?=
 =?utf-8?B?MGduaWN1S2VCZ2NmZEpuZTBPcG9mdWtDdVAvSTJHMEJFd0dZcGVpdVhRY1RF?=
 =?utf-8?B?c2RvZ1ZEaFNkU1dMbWRHU0dzc3kwS29aMDhVY0pVQ1daYk9qc1B6RjJBN0dE?=
 =?utf-8?B?S2E3Y1NPUjZXb25EYnp5emlpaXhhcERoa0xKTUd6M3NyczJ6TXgzY09IWlhH?=
 =?utf-8?B?cnNraW1iRlNEalpSbVpoVEpvN2x0MGR0K0gzdmdvN005UmpmVVVWckkxczg5?=
 =?utf-8?B?eFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FB344374CA51F243B50C8B4453B851A5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 184d86e2-6eff-4fff-68c1-08dce770fe41
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 08:12:46.7411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p5OX56Wad9JQlJ1s1i7VKSvPO2GGg7t3ecw9PEB/kmXRym9fwaQSnkbjfvsB6mCP+gHcHHkNQkFt37R0sF5px2gkHtwqMdHdPdbD5HPWFOc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
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

T24gV2VkLCAyMDI0LTEwLTAyIGF0IDEyOjA0ICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6Cj4g
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogSG9nYW5kZXIsIEpvdW5pIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gPiBTZW50OiBUaHVyc2RheSwgMjYgU2VwdGVtYmVy
IDIwMjQgOS40OAo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENj
OiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IFNvdXNhLCBHdXN0YXZvCj4g
PiA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkKPiA+IDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+Cj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMi8yXSBkcm0vaTkxNS9w
c3I6IEltcGxlbWVudCBXYSAxNDAxOTgzNDgzNgo+ID4gCj4gPiBUaGlzIHBhdGNoIGltcGxlbWVu
dHMgSFcgd29ya2Fyb3VuZCAxNDAxOTgzNDgzNiBmb3IgZGlzcGxheSB2ZXJzaW9uCj4gPiAzMC4K
PiA+IAo+ID4gdjI6Cj4gPiDCoCAtIG1vdmUgV2EgMTQwMTk4MzQ4MzYgdG8gaXQncyBvd24gZnVu
Y3Rpb24KPiA+IMKgIC0gYXBwbHkgb25seSBmb3IgZGlzcGxheSB2ZXJzaW9uIDMwCj4gPiAKPiAK
PiBMb29rcyBvayB0byBtZS4KPiAKPiBSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4KClRoYW5rIHlvdSBNaWthIGFuZCBHdXN0YXZvIGZvciByZXZpZXdpbmcg
bXkgcGF0Y2hlcy4gVGhlc2UgYXJlIG5vdwpwdXNoZWQgdG8gZHJtLWludGVsLW5leHQuCgpCUiwK
CkpvdW5pIEjDtmdhbmRlcgoKPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzNgo+ID4gKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGluZGV4IGYzZGIwZjk5N2Vm
MzEuLmVhYTNkZDQwZWZjOWUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCj4gPiBAQCAtMjYxMSw2ICsyNjExLDM4IEBAIHN0YXRpYyBib29sCj4gPiBw
c3IyX3NlbF9mZXRjaF9waXBlX3N0YXRlX3N1cHBvcnRlZChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQo+ID4gKmMKPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiA+IMKgfQo+
ID4gCj4gPiArLyogV2EgMTQwMTk4MzQ4MzYgKi8KPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9wc3Jf
YXBwbHlfcHJfbGlua19vbl9zdV93YShzdHJ1Y3QKPiA+IGludGVsX2NydGNfc3RhdGUKPiA+ICsq
Y3J0Y19zdGF0ZSkgewo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRp
c3BsYXkgPQo+ID4gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsKPiA+ICvCoMKgwqDCoMKg
wqDCoHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOwo+ID4gK8KgwqDCoMKgwqDCoMKgaW50
IGhhY3RpdmVfbGltaXQ7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+
cHNyMl9zdV9hcmVhLnkxICE9IDAgfHwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0
YXRlLT5wc3IyX3N1X2FyZWEueTIgIT0gMCkKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqByZXR1cm47Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+b3V0
cHV0X2Zvcm1hdCA9PQo+ID4gSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQyMCkKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBoYWN0aXZlX2xpbWl0ID0gaW50ZWxfZHBfaXNfdWhi
cihjcnRjX3N0YXRlKSA/IDEyMzAKPiA+IDogNTQ2Owo+ID4gK8KgwqDCoMKgwqDCoMKgZWxzZQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGhhY3RpdmVfbGltaXQgPSBpbnRlbF9k
cF9pc191aGJyKGNydGNfc3RhdGUpID8gNjE1Cj4gPiA6IDI3MzsKPiA+ICsKPiA+ICvCoMKgwqDC
oMKgwqDCoGlmIChjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmhkaXNwbGF5IDwgaGFjdGl2
ZV9saW1pdCkKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gPiAr
Cj4gPiArwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2tfd2l0aF9wc3Io
ZGlzcGxheS0+ZHJtLCBlbmNvZGVyLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGNydGNfc3RhdGUtCj4gPiA+dWFwaS5lbmNvZGVyX21hc2spIHsKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0KPiA+IGVuY190b19p
bnRlbF9kcChlbmNvZGVyKTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgJiYKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCAm
Jgo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9kcC0+cHNy
LnNlbF91cGRhdGVfZW5hYmxlZCkgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEueTIrKzsKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiA+ICvCoMKgwqDCoMKgwqDCoH0KPiA+ICt9
Cj4gPiArCj4gPiDCoHN0YXRpYyB2b2lkCj4gPiDCoGludGVsX3Bzcl9hcHBseV9zdV9hcmVhX3dv
cmthcm91bmRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlCj4gPiAqY3J0Y19zdGF0ZSnCoCB7Cj4g
PiBAQCAtMjYyMyw2ICsyNjU1LDEwIEBAIGludGVsX3Bzcl9hcHBseV9zdV9hcmVhX3dvcmthcm91
bmRzKHN0cnVjdAo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIElTX0FMREVSTEFLRV9QKGk5MTUpIHx8IElTX1RJR0VSTEFLRShp
OTE1KSkpICYmCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtPnNwbGl0dGVy
LmVuYWJsZSkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+
cHNyMl9zdV9hcmVhLnkxID0gMDsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoC8qIFdhIDE0MDE5
ODM0ODM2ICovCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0g
MzApCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcHNyX2FwcGx5X3By
X2xpbmtfb25fc3Vfd2EoY3J0Y19zdGF0ZSk7Cj4gPiDCoH0KPiA+IAo+ID4gwqBpbnQgaW50ZWxf
cHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+
ID4gLS0KPiA+IDIuMzQuMQo+IAoK
