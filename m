Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E098D60F8
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F14D510E14E;
	Fri, 31 May 2024 11:50:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LEflVQLg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DA5410E14E
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717156205; x=1748692205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pSrrJdVx7t6w9gtDM5wka4QB18nr5xbUFuox6Mf9qYU=;
 b=LEflVQLgmyKKLaDXltAxfzK9qHga3oLFi5/DJ0cTdV1V8oqhxlpNEBYW
 BhGSx/fxueloZzgxVdHFP3nhhS9wPNYYd9JrUU6xzeZxLL2ufCNwRJWeo
 0gotqHe9SU0INmU2PihrJz5hqs2tam8IN28ZtJCYmeVbUokuXdjWsI5pj
 cvpk2S8GDQYo9F4Eu8J/XG1l68/rk84s7iZrDxKL4nZ1zjd/+GLevoz9f
 Ruo4ew5gOTGRvsHFqcf0sdeGHV9XPC7TpdclHykVGIsqszVl62EKBRJYh
 YO+TZtrxkJC/fDN4rTHLWUrztULLWQ4WJk67p4qE+0cpFcd07r2i9iQoo w==;
X-CSE-ConnectionGUID: aUkmr2BnTXmwkA3q7JyeHw==
X-CSE-MsgGUID: sMAjGVuoT+2BwVTPHjnq/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="31222937"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="31222937"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:50:02 -0700
X-CSE-ConnectionGUID: OeMHO1g+TqerX/efHsDoWw==
X-CSE-MsgGUID: 2kj1Fly8T7ujw9pZ1jsbjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36074911"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 04:50:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 04:50:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 04:50:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 04:50:01 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 04:50:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eWV5ur5y1UOj5o6cFCMEqFFdHDSfmiwHl9TIH09wy5YG+enZ1k/gVjo+UA6e0nMDVPexyXEz4FqMUCToZ0Q04AXN5FFs8OiHSB0PBMhvX0+Mx+Shft2QBiplk+8eezaqRPX4Gic/wo1q2QHhAECYgmk0M7yq8ktU2buIw22NqRGPOuGs317uGNBlqUBjz1C2xu9I8dW1DZUesheZL9bVWr41/GV/jOO0QQgIyJ83501Fgip2I86bIHzuZeLrmu7WEQsKzK0vHbfP78CrK7UQ1IzB5pHWxay+RHLEswm7A0wYadf7QZvJj/ksZXnzLqv40+KXf5Cg4BceSOjUVjCr0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pSrrJdVx7t6w9gtDM5wka4QB18nr5xbUFuox6Mf9qYU=;
 b=f2QQvuHb7EbFXMJ2gW636npYqvhqdmEBMBong7oYzWQsJQG1aHX1AOjLC8YH9Zu8A8WN17DgotznxMwCfvA4+0z+nC80aS60iDe5m+sl9SILYtI1iw/extX7tjSCSli0o2QZ4f8AUI+vtNYXErFwBaYSr8QONw7S9SjbC6bplGaLvOGLwR3n48fdo1XQiomD3GEqBOpVTlmasPPFtuQxYMoAyN4Y3epJX6ipi2aNq2MT/yoyJtdeJr9fMUdXV3W7BAgx8SEoakTfNsSR0kb5mHV56q53/nmJEa9QiJ6oTn5/KNrZQhgFwMqaQXybSgSE++IPegd1CU1AwTGDHHGO3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS0PR11MB7312.namprd11.prod.outlook.com (2603:10b6:8:11f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.19; Fri, 31 May
 2024 11:50:00 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7633.021; Fri, 31 May 2024
 11:50:00 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v10 1/8] drm/i915: Separate VRR related register
 definitions
Thread-Topic: [PATCH v10 1/8] drm/i915: Separate VRR related register
 definitions
Thread-Index: AQHasliyzJH1yz+oLk24kewMkOjsn7Gvy4GAgAFvcqA=
Date: Fri, 31 May 2024 11:49:59 +0000
Message-ID: <IA1PR11MB6348AB30F4F05CD617A5981BB2FC2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240530060408.67027-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240530060408.67027-2-mitulkumar.ajitkumar.golani@intel.com>
 <87o78nh0la.fsf@intel.com>
In-Reply-To: <87o78nh0la.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS0PR11MB7312:EE_
x-ms-office365-filtering-correlation-id: 5743b4bc-138d-4862-3e87-08dc8167ccf0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?dmVwZGVwMGhENDNCamxxeFJobGdzeUUvd3F2MllxZ282TkM3NWhCdVZlWDdY?=
 =?utf-8?B?WFRGWjQ5TG1hYVJ4N3R3OTEyczBrd250Uk5rVFVjTlZqSElLVDNHaU12OFJ6?=
 =?utf-8?B?SWtBZDNtVnVlL0dIMnRQSHBvd0FUQUtYZTk1LzFZU1IwSE52SU42VXA0ekxW?=
 =?utf-8?B?Q2lsS05NMmgzQ0tNSXhiTVBaVDFaWGE0RGNZS2NaWC84dVU1c3c2d212RVls?=
 =?utf-8?B?MzdKczBsbmNWSHg5SENIRzUxZTBNa24zR2FnM3RpYWhpZ054QUxVKzJibHVw?=
 =?utf-8?B?VXFsQU9mSmpJYnVEYXFFZmR5S0hKWUV5WmM3a1FUUFVzdXErQ0RER1ZvRnhT?=
 =?utf-8?B?L2V6Q1I1YUx6NjFqUCtDT2lrYnd2R0xQL01MMWUzV0JwdnlRNjduRVBEQXJD?=
 =?utf-8?B?WTZnV0RtRDZwdWlDWTBJVlIva3MxYWdHckZPKys5ckk3UlB0aVpqaHAya3VU?=
 =?utf-8?B?U2h2cTRWYThDcG9nWE5QY0wyNTNIWE1idnA2TWZxak5ucEhlMllpMzRhMUpa?=
 =?utf-8?B?dGtmMy9VMzBOeXBQU1Q5TVRnL0Z4YkE5SWpHdzJHQ05rYVV2Ly96eERjb1NO?=
 =?utf-8?B?MkVDemtvSnhhZmh2VkJFeXBka1dTdW9SSnBmR3JJMXZkOVN3U3RqdEFyVjdq?=
 =?utf-8?B?Rjd3TUx2eDREOHNUMEl3OVgwWTdNczNvRWtnS2VocGJ0Y01XWGtMQUdiV0Ja?=
 =?utf-8?B?K0g2REYwN0Y4eWQ3WTYrY1pOTEJ1dGcxeGVBM2tnREJCbzRMdy9qUHhMSW1G?=
 =?utf-8?B?QnM3Mnd3dGtZZ3Fkb013SUVlaENSZjIwZ2sxZmRsbXU4dk45QkJMS0RQNlgv?=
 =?utf-8?B?czNGbmRWUnh0VnBSZitldXZ2NjA3azM2MGZKZDRseGRuT3lIc1IrKzZWMXQv?=
 =?utf-8?B?ZE1YQlVNTFk1V1pLamkvejVoaXZycU5yeFJLd1A4V0Y2ckJHVVBwZzF5c0ly?=
 =?utf-8?B?Wnc1UXBBVE1YekpLL3E5UXRVbko2dndXYVdYZkxZZE1WNEFoMU91WVNlTDNF?=
 =?utf-8?B?eEtKenc1Vmh2NkVUWlp5QVNQa0FMWHUwSUhreWtMRkkySmhlelhkQnlrR25Z?=
 =?utf-8?B?cW5TUGd4bnpXa3VPZXpFWUdBYzA2U095WVp3cldwZVlpUGhQWXBsUU9qejFl?=
 =?utf-8?B?V2pxNkJzWTJYWVRsMUlSM2hBMDUwNXZPM1ZlTjNwWEF0SjlwVnBLRDVDZEND?=
 =?utf-8?B?RDFxWFFhbXI4MlVSY2EvOFJEaWc5bXhHMXNyd1VNYnJSajVYdDJpeTcwcmJB?=
 =?utf-8?B?QkorTktQeHVYL0F3SzF6NC90T3dhT2l4N1N0by9Sejd5aThMbTRuMUVZRVVG?=
 =?utf-8?B?ZXNZVW5lU25kVnMvS0VLKzFOaHdFUTZSWEZ5RTg5c0QzZEdHMDZ6VGNTZk16?=
 =?utf-8?B?VThIU0NZUEM4UDBwSS9GVWIzd1U2ZkRsZnBIc2xuWExqSk8zcVJoU05zNnRW?=
 =?utf-8?B?d29URGtYU28vc2N1djZnOE1kQlRvOGYzdVBuQnRPSW5hRzJrOUNXNzdoMHUx?=
 =?utf-8?B?UVovZk4yMS9TclV5VWMyMjdDRUJXT202MWVhVGxTYVgzRGZWemhySGJ5dlgr?=
 =?utf-8?B?azZjWnd1SzBQNmdNWG1TQkJqMEt5SHVYbVZRcEx6ZG1sdU1Wdys4bDgwRUNq?=
 =?utf-8?B?MDJkTGN5YlVBTTU2YW1EOVVqZ0g4RGFLdnNySUY2MXRoNXVNdS9QSFhOak11?=
 =?utf-8?B?MG01VW5CbW9KbzMvOEdDL0xwc3BjZkNodnlqT3ZtOXlWTU9kVTJXMFhoRmli?=
 =?utf-8?Q?d1hMmQGKeI9xNFlAhJmdZ0jDP226c2E8xRRSN0/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dnNDb0hLNUY0aWhnc3FCeFVNaGNJTGFqd0JOVkY1dTVxZ3IraDdPUGZ3RFp6?=
 =?utf-8?B?ekVnK1NWeExIOUI2eHZzNDR0eWpjQzQ2c0NqVUQyd0NBdzZJZ3VXT0Q4M0R2?=
 =?utf-8?B?TkhsWkRKWUthT25qR0Fhc0VZc2R0eHZDV2NqanZSejNpUFIzMTNGcG1UUkdi?=
 =?utf-8?B?UmRCbW56ZU1acDhNTGNyZDZxWmRhTG9vK3Z1Nk5ZOXRhc05QZUliQXJVdFZq?=
 =?utf-8?B?UlBRSHlwbnBPTXBwRi9qd1VrRnJweUtZZXIyUnI1OWZBUDIvcnZpRVdQN3lT?=
 =?utf-8?B?MERvYjFFMEEyRll6T1ZCdUVPQ3dSbXdzWG5LcmFPTWhDSlhqQkp1OWpsMVRo?=
 =?utf-8?B?Sjk0OTYrSFJlYUM0bXJGVG5CMU0zdyt1U3FwbzhVV1pqdy92OUdyOVhNeGdS?=
 =?utf-8?B?ZTJLVm1qb1NwcFREeHc1TU1iSzQzQ214amlxdmE0NmtLcGpZYmc2UXpKNTZR?=
 =?utf-8?B?cGFOK2pnQ0tURy9HcythWDFTWDMvdUZCWjB1L2pJUnhwVlNmK0JoemdCelVj?=
 =?utf-8?B?K2VhVFNlZUpTWmJ4bVpteFdUN2dvQmFwVUpwc2lsek9SSTNWb2RUTnJkald4?=
 =?utf-8?B?S3p0YUNSUTljRWdyN0JBUU9ldmxObTdrOUNHTnE2c1lJdi93TE45NVJoeVE0?=
 =?utf-8?B?YXVYOUFYRDZJbFB0UVhXclB1OUc0ZEtZSm5jeXNRd1ZMYm9vTmZydnVTSExE?=
 =?utf-8?B?aDFGME1jNnB6VUxBY1pMUnZCM0FRNUQ1R1ZvbjU1RHYyTTZQVDI0aTc4K1Bh?=
 =?utf-8?B?NEpmU3M5S2hTRXU4NHpxeFU0QWpqMlpsR0V3aXhDWEVIM2JQYkxvTWZwWHFw?=
 =?utf-8?B?UzUwbnZYa29tTUtrRU5rOWJlN2RPREl2alRHZ240ZjZ1Tm9LckVUS0pwSk8v?=
 =?utf-8?B?QUd0aWlrdGdaWXI2QVVBcThhUFNxUXhYL0dMM0RxbEE5aGJvQU5lRjZWTzNU?=
 =?utf-8?B?WUZDU1ltanpLQkx2TjdmMnF6M2xrcW1HUjZ5WEp4ZnZWcjRIcHo0REt3L1M2?=
 =?utf-8?B?K3F0aFg3bmV0TlpZdmRmVVh0bUhBQ0RKSWliNkdublJGdTdKWmFrV1BONzMw?=
 =?utf-8?B?YmFCV3g1QUg5N1FKZWFmY0tYZVUreTFta25PcUN5ZTBrbk9rNXZtSlo5dTFK?=
 =?utf-8?B?cXlNeitNaUFYRHZuYmlEOXQ1T1d2VkxXZkYzM1QzWCtZOGJ3aWkzb3U1T1Ft?=
 =?utf-8?B?ZC8zcnFvSmJZL2IyQ2xXRGhySkhEVEtRa1N3eDd4TW44Nk9PSVBRWVNFb3o3?=
 =?utf-8?B?ejg3K1VqV1RFOTBjUTYvcVRzWnZSMWgveXpFVVllME5WaVJSNldVa2lndzB2?=
 =?utf-8?B?WHE2bzJGdTJ4ZXNZaXAvZlFLQmRaNkttQ3pWUy9jTVgrSUVaaGZCZ2IyTktJ?=
 =?utf-8?B?aFNRbElSaFdLaTJPUlAvZ2d3UWNkSFFhOWhmd1A3QzRxRnd5SXE0ZnFpdllX?=
 =?utf-8?B?SnFGelpNNmUwS242WHVTU1lvY3lhUTdLU2pzVjl5dElpVUdDV1N5VVMrMDBj?=
 =?utf-8?B?aGdCd0ZLY1VuRVRnakY1aXJYWFg1RU00MUx0dVZDL3JUZTZHNkhza3JBYWsw?=
 =?utf-8?B?aWd4ZmhDZTZaZEZFeDNwWE5qRlJVdC92WXVDaWphNEgzZXJYTEQ5TnhJQjRU?=
 =?utf-8?B?QnkyUm80ZEZOckprbXVNTmJhdmU2UDhQNHBQamgxUC95cDBmRjhxcVQ2VDJy?=
 =?utf-8?B?cUdmZmt1d2FyRnk2UjJDRGtTYUQ4VHFodHBzTVRPVis2YXpSYzU2MkU1MXpU?=
 =?utf-8?B?Qm80eTJGYTlwN01XS2FsR0c2MVBBSi9VRGtJYnI4bFRrNEFVYjZOcDJMOVd2?=
 =?utf-8?B?WUJTTlE0b1pEbnBBcEhaUzczcTlPbVJQQWsrQlJQc1NoVnRPdFFTaTNpRVpD?=
 =?utf-8?B?TUVLdkx4bEJFUDR2WFdJNE9aMTUxbVVRTTdJMkVJWmxyZ0oyczBkakpvUTU5?=
 =?utf-8?B?RWtqSWNRNlJ6NGFOUUUyd1R2dStwVW03YTZrUzdnYlAwdUx5RHBJN2RkcU9L?=
 =?utf-8?B?VUhQam82elEybmxwMTM5S1JBOHhpamNmS3pXUE51VjMzc2hvUXI5ZksySU13?=
 =?utf-8?B?d0hQbnBsWlhRNW1tM2xTYWJsNkxHTzZBSi9FZUJLb0ZoS2tsNUIzVHplZHNE?=
 =?utf-8?B?cGRSL21zYnovVnpYNWJSbnUyUG1hU3FCZjdwZDAydHd4TmpZbUhRNFlTQkhj?=
 =?utf-8?Q?7JSQAgYd60TrNA3OPy7hYrs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5743b4bc-138d-4862-3e87-08dc8167ccf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2024 11:49:59.9390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ej3xkJjk+e6PeIQ7MDp6Ubzb1e0THbdAv3E28wR91HjCkhjbE85/O4qHGQQxsEdf8/dyPUibuNV2cKpyfvw1JnXULp2uXn6Yz48cS39/Xas/mOrnJlaFdzbz3ypR8Q0I
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7312
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

SGkgSmFuaSwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEs
IEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE1heSAzMCwg
MjAyNCA3OjE5IFBNDQo+IFRvOiBHb2xhbmksIE1pdHVsa3VtYXIgQWppdGt1bWFyIDxtaXR1bGt1
bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgTmF1dGl5
YWwsIEFua2l0IEsNCj4gPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBS
ZTogW1BBVENIIHYxMCAxLzhdIGRybS9pOTE1OiBTZXBhcmF0ZSBWUlIgcmVsYXRlZCByZWdpc3Rl
cg0KPiBkZWZpbml0aW9ucw0KPiANCj4gT24gVGh1LCAzMCBNYXkgMjAyNCwgTWl0dWwgR29sYW5p
IDxtaXR1bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0KPiB3cm90ZToNCj4gPiBN
b3ZlIFZSUiByZWxhdGVkIHJlZ2lzdGVyIGRlZmluaXRpb25zIHRvIGEgc2VwYXJhdGUgZmlsZSBj
YWxsZWQNCj4gPiBpbnRlbF92cnJfcmVncy5oLg0KPiANCj4gQnV0IHRoaXMgaXMgbm90IGp1c3Qg
bW92ZW1lbnQuLi4gdGhlcmUncyBhIGJ1bmNoIG9mIG90aGVyIChtb3N0bHkNCj4gdW53YW50ZWQ/
KSBjaGFuZ2VzIHRoZXJlIHRvby4NCj4gDQo+ICdnaXQgc2hvdyAtLWNvbG9yLW1vdmVkJyBpcyBh
IHBvd2VyZnVsIHRvb2wgZm9yIHJldmlld2luZyBjb2RlIG1vdmVtZW50LiBJZiBpdCdzDQo+IG5v
dCBqdXN0IG1vdmVtZW50LCB5b3UgaGF2ZSB0byBmYWxsYmFjayB0byBtYW51YWwgcmV2aWV3IG9m
IHRoZSB3aG9sZSB0aGluZy4NCg0KSSBoYXZlIG1vdmVkIHRoZSBWUlItcmVsYXRlZCByZWdpc3Rl
cnMgZnJvbSBpOTE1X3JlZy5oIHRvIGludGVsX3Zycl9yZWdzLmggYW5kIHJlb3JkZXJlZCB0aGVt
IGJhc2VkIG9uIHRoZWlyIHJlZ2lzdGVyIG9mZnNldHMuIEhvd2V2ZXIsIGlmIHByZWZlcnJlZCwg
SSBjYW4gbW92ZSBvbmx5IHRoZSBWUlItcmVsYXRlZCByZWdpc3RlcnMgZm9yIG5vdyBhbmQgaGFu
ZGxlIHRoZSByZW9yZGVyaW5nIGluIGEgc2VwYXJhdGUgcGF0Y2ggc2VyaWVzIGxhdGVyLiBQbGVh
c2UgbGV0IG1lIGtub3cgaWYgdGhpcyBhcHByb2FjaCBpcyBhY2NlcHRhYmxlLg0KDQpSZWdhcmRz
LA0KTWl0dWwNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogTWl0dWwgR29sYW5pIDxtaXR1bGt1bWFy
LmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jICAgICAgfCAgIDEgKw0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zycl9yZWdzLmggfCAxMTcgKysrKysrKysrKysrKysr
KysrDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8
IDEwMCAtLS0tLS0tLS0tLS0tLS0NCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMTggaW5zZXJ0aW9u
cygrKSwgMTAwIGRlbGV0aW9ucygtKSAgY3JlYXRlIG1vZGUNCj4gPiAxMDA2NDQgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnJfcmVncy5oDQo+ID4NCg0K
