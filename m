Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B60A32568
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 12:51:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A9C10E86E;
	Wed, 12 Feb 2025 11:51:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XgbL3zAq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A407C10E86E;
 Wed, 12 Feb 2025 11:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739361089; x=1770897089;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DhSDFn9X5s7xmqPT9Jts2yTLpmFWffHro4MBmKX1xT8=;
 b=XgbL3zAqZsF9W/AmYEEEM0KUtBGbhfYjEOt+GeaEpkhIFjjTqi7emjK3
 TAZMw1ge8dx3muS+dM1t5zegsFc0S27Gah30mh5wqSnpPoupYBZ6okwW4
 1i7uPEV4/tMcgwIT4V6XDggty8mHTc+SK/Ki7FH+YY+zfMXU5VhsuPU07
 D7sM/GtsAVt/X28p8ptvj4tEtDNtCs9hul7kZaCqrccc2Sl3N4fhi9ZHS
 Kusqw4ChI6ZPMcJNWuk1mLuCphZmjLEGtmTfgW3JCe3o4vznVz4elhhZ/
 nn6rKfyFZSG3oGrN+DO3a11Ja1mBoVP3VTZ4NFtilsrMXgXU0AvYnQS1F A==;
X-CSE-ConnectionGUID: GWT8WiuiS0CGFT9vkAAbwg==
X-CSE-MsgGUID: SMpJ/va2RketOybgJXwMWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39897809"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="39897809"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 03:51:29 -0800
X-CSE-ConnectionGUID: jPIlUZwNQoWMlAe+x0b6gg==
X-CSE-MsgGUID: q6mf2n2zSLeUaZjNGqXqAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116905757"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 03:51:29 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 03:51:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 03:51:28 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 03:51:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nVG/Vn64Let1LmIr0lJJ/dBjrm00onawj7KOnC2CDO2yzP3wnT9fRM//mBbdkPQe7QV/hY717bKj63+8qbEEhzwqRf9hJA67ffz+OqUs/BfpzazG7f9YRfxeSoMlyChVkoZsUvN9V1WSiykfhkC9+ZIVAvFwZJxKZwExfE1F3Po2Q5aKg6Enp+g4awLSAPRvMsNsU3WsCN37SGI829gPm1tETr46Cc6WnMMBLOJJD2xeCAeoGbwvwaSbLb3RKqdBpYZx82YbWpmcgmXksFgzWOxY3OKbDN8ggX0a3PpuGAA+AXhFnoIgpqDYiywE4CJE4uJe4pdK/vQeb7Ki6szSVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DhSDFn9X5s7xmqPT9Jts2yTLpmFWffHro4MBmKX1xT8=;
 b=qqLrsBN3eWlZz7KF1gfKWcaj0d+UJ7axdsaPa2ms+b8cGRbtWFUF8sD5UutW3IzfWVrJgm1n9BAB4IDz0i8HFI5pWwhXBwk/c85E0PV9ZTA1BwMBCrI02XrqXBvyCyFX41xOsTVlRDehWuZ+kIRbiQVhhevjD8jfjyEAosKnNCy0HXX0NMy1ZG+Y1YR1ycDumIYPyLlcnGpcTYt3HD9oyz3hu2zA0yNLCJM/XkgscOOWBgcwvJz03Nz+B3K9el6fYXYPUk9abXieQflxO4O9j/12v3EGetGlL/N01R8VgbOINxhF4lHiIhsaMxXMrFns22dNnCnFatlvAvD51ZdGYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Wed, 12 Feb
 2025 11:51:25 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 11:51:24 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, Imre Deak
 <imre.deak@gmail.com>
Subject: RE: [PATCH 12/17] drm/i915/ddi: Configure/enable a port in
 DDI_BUF_CTL via read-modify-write
Thread-Topic: [PATCH 12/17] drm/i915/ddi: Configure/enable a port in
 DDI_BUF_CTL via read-modify-write
Thread-Index: AQHbcoi4vsoQjeBkWUisZJyKjeFpFbNA6dUAgAADSQCAAraPUA==
Date: Wed, 12 Feb 2025 11:51:24 +0000
Message-ID: <MW4PR11MB70548821C459FED2BCE0F441EFFC2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-13-imre.deak@intel.com> <87v7th3byd.fsf@intel.com>
 <Z6pEfGyXnoVtNqDv@ideak-desk.fi.intel.com>
In-Reply-To: <Z6pEfGyXnoVtNqDv@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB7579:EE_
x-ms-office365-filtering-correlation-id: 1700354a-56f2-477d-48fe-08dd4b5b93aa
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cVB4U0xkbXVDOGYxbHhQRXZRTzMrUWIwVG5KV2svazJtaDlMSWhONXVKSlc0?=
 =?utf-8?B?dTJwQlNlSHowcDEwai9zNEVwNDR6Y3k2dDFYV3ZRVW9mNHFOZ29zMzkzSTUv?=
 =?utf-8?B?ZVQzeUx0RFRHamdsNEtpRS9aa1FKT3ZHd0RYdjhuSkF4Y21kVkRPM3gxM1Js?=
 =?utf-8?B?V09ETCtITVVFNlVKdXpKTTJmQjVZMUF0MlZhdmlxbnVSWm1ZWEs5Qm1mOTU3?=
 =?utf-8?B?VlVtNVZWU0owVHNMVHQrai9YNXBkUmVNK3U3VnNMY3Y5SXlhN2F1cWVOS2U5?=
 =?utf-8?B?MUdKZkZvbVR3aHZZY0RySk5GWFFOVGRYczBaOG0vb09rMlNWMENkY1dSdVhj?=
 =?utf-8?B?NWphRDlhMmlXWlBUcVRrMjVISnNWM3JvNzdXNHZVSE9FMFdJUXlPTU11RGdY?=
 =?utf-8?B?Q01DOFptOFg2QjgzZ2MramxRL1VQNHdKb2VTbzhxcjlaRGpqVlpsSStjeGFi?=
 =?utf-8?B?QVM3cklrSFROWWdja2NhVG5rMHB2cEs5VDRhSHFFSmI2cVdkazZqWEN2VG9C?=
 =?utf-8?B?N1NaVnVOam43bWlMSk1oU1Vock9ZMGRFNXg3RGRnN2xicmRjRzZsb2llZUUz?=
 =?utf-8?B?aXR1NXJKa3hnZzFUMDg4aStLQVJ0YjBnQUFTY0JKVjJkUGZGajJ1dG9SVlMw?=
 =?utf-8?B?Q1k0UXRyR2FaSXZzYjJPcHpaUk9aODJuVVQwQmd0dm5oaGY4ZVR1UGhNQ0FN?=
 =?utf-8?B?VVJEUmZhUWlxYVVCV1BQYkFrdVRhZ1Y1L3hlYzAzcmpMUUxEUkV3c0Nua2VS?=
 =?utf-8?B?VDhMcGhPelRLZzFnZ1F4UFRLMmdKSlJwWTI2MnQ4QXg2VWFJYnhKYUk2dklJ?=
 =?utf-8?B?RDJSellaV0JlSHVaay9OZ1VtV0MxdXpSZVNnNVdNOWNOTGQ2Q3d2b2JEbGFC?=
 =?utf-8?B?c1d2bDNGL0V1MHUyRkl5S0IvaGpqMjRuMXViVlZZY2tWaWk5bDREYUF3cWhy?=
 =?utf-8?B?cnZFU0dqbXQrdnNFM2FJbi9hdVViWXFUWG8zZnpzSjd6eWNtZnBBU1VqRFln?=
 =?utf-8?B?UHVYbFZ1MjRHSmZaQllyRWhKeUZIbUVBdldVNkk1N1FQUWpJZ2x1RnFYSWNV?=
 =?utf-8?B?RFFNTVJIMmZDYitKbkIzVGFVODRJeWdyV0VDemdYcHkxa2gvdVZTb01ncCtG?=
 =?utf-8?B?aFNCUzdkK0tKdTF1T0xuWFVuUVpiQlphOWNGRlhaKzJYcHJ5UWFlWk01WlN4?=
 =?utf-8?B?R3Y3YTdGWm9zQVVGMTVmeHFhaUNScFN1blRoTmhqT3lXNUcyWGlhWnNCOXNB?=
 =?utf-8?B?aUs2anBJdmhqUHp6Ym53V0NUVHVWNkxyVU9WRU1DM0dUR1gvakZQMmkvaEZa?=
 =?utf-8?B?UmJtZFdnd1VScU90ZnVYcVhQQ3ZJb3R4ellheHVNOUlLdit0NDJGMDVqR0tl?=
 =?utf-8?B?VEd4UkczQUpDOE1zVGtnV3BhVkdpYWVjWkQzYno1Z3ErM3ZnaC9LWlZqc1Nx?=
 =?utf-8?B?R3VGa1pNR2FUNjVYWDlWMTNuNVpTK0pDYS95NHVZbXRWQXpDcVg2amRtUE5h?=
 =?utf-8?B?MjQwWkIwLzNLVllOM09kbmNHNGtsWFhSdUZta3dXd1Z1am03NElaWUpMTEtX?=
 =?utf-8?B?cEZzS3hOWEk3MHl0ZTFIbmMzZjJKQjFmK3dXYlVyZHRkVGF3Mk5xenBBY1l4?=
 =?utf-8?B?b3dabWpuZzlINDBkVllORWlBRjkxOEFGVEU2bVJNRUFrVVhZa3E4L0FqNHh6?=
 =?utf-8?B?ajZwMzRsRkhVWWZBc3FwZ3dBVVJKVTBiTmNvNjZ2dWhDYmRHNVluYzlpKzBn?=
 =?utf-8?B?VDdMVjlQa3did0N1TXpqTi9CU2t1YkdvOXNQSXZYZFRDNkFLdnF6U2ROaUUy?=
 =?utf-8?B?bXRxN1hXZERkUHZuL0EvREIxQmNsVlpLbTZ6WUw2V3pUcStTOHVvNkRzbUxw?=
 =?utf-8?B?QVlhV2lhNVNPbkptdENaUGlrUVQrUWpnUTM2R3lOK0gvYzhpam8zcWR5STRz?=
 =?utf-8?Q?+bAyD22jiPNboY9wLIGiD8dkhUTpFstO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VVZyb28wNVVtbVdrM3ROcEsxd2JCRXZHU0Q0dFZ4TEdCYnRSTGV1K25EVmtC?=
 =?utf-8?B?d201aEQzalAwSG1MSkhBdzhHNWFoZFcxc0hZQW1xaC90cHlJUlcwR1p3UWtO?=
 =?utf-8?B?cElkYnhLbjhqWVQ0bnFma0hRUThMRkpPamlMZWxwYUNlUTA5VUh6Z08xSVNI?=
 =?utf-8?B?SkN4ZmQyODVRT05obFVQSlFqZE5tR1Zqbm5mMm8zMFdJdDRXMTBjZmN1TDdC?=
 =?utf-8?B?NEtmbk15RWNSemkvQVo1K1F4bDdtbmUvbHFCWUUwdmlPS2dDcDFQSlZTT2J6?=
 =?utf-8?B?MVVvOU15TVVSVmVFZ2oxOU52ZE5YT0d0VTNRbjlhNEd4WVdUM29lR004QWFU?=
 =?utf-8?B?Q3hhZlhqUk5hd0l0MTVGeTJLOGIwZ2VpdUl1RnNMMFhMeW90alAyb0tZT2dx?=
 =?utf-8?B?bmxvQVBQVkdLejFXZGJWMm95djBDSVl4d1ZyU3dpK3BKbXhLaXNnR0ZMVU1Z?=
 =?utf-8?B?SHU0WkNJaGcvandubEorM3lwNlNhZ09PZ3FhMFpaTGt1amgyRkJ3UUs1YW9j?=
 =?utf-8?B?YjdSS1VGMjlyVFlidTNzditHUEQ5bU51NjJTaG5weDVvZVZ6YitSQlRNMXBV?=
 =?utf-8?B?ZGRZOTlrdi9RNS9FWVZkVytxNENBb3JGZmlqSG1jdHVNYkpaNVh2c1FZb1lL?=
 =?utf-8?B?WHBoN1E5V2ttQTNvNlVXbDBoNkNpc0RWc1Z4NEU2eWdPY3FwSWRCVnlqelJJ?=
 =?utf-8?B?MlNKZDhVejRXVGtaNXJDNnhtV25iTVorbjZ1ZzZiNGVMbWNETVRHRW1VcTUz?=
 =?utf-8?B?MXp1TFZ4Qm42ZlREWUlwTkpaRmxzdGxKSWtLajNrT1EwNHBULyt4U1RoeERV?=
 =?utf-8?B?bER6T1FUanh6K1FWR0JBcXd3NlErcjl3MUZXSGNFTTcyTHl4RkdNcEpZbE9u?=
 =?utf-8?B?T0JyQWQxbXg5bTdWMW5aWHFvU09lNDYzV0lBTWwwVFNwRjBqWGNJanl5TlVD?=
 =?utf-8?B?RmIyL0FrTjRvclgwejVaLzdrZzJCQThkZ0NzMXpyZ0JCRmIrdDg0RDJXYndJ?=
 =?utf-8?B?S3ppZ0R1RlQ4NnJxUW1zSTlKQSt5SSt0RjVqRTA5VXZhYmM4QWhDZHRFR2FS?=
 =?utf-8?B?Z0JHWk56MzNrK3ZPWDAzOVhFbEtYbWQrWlFpYWdXaUM0ZkM0dGlaL1BDN2lp?=
 =?utf-8?B?azY5ZXNBc09aUDMzamVOYno4emtzU2lIalQzNmhUajZSMTljL2lXdlJ1UzBh?=
 =?utf-8?B?NUFhUWxWeTlQS2txQ24zTFRiY1VvaDRBQVVRRFRYUU5aSlRzWkFiSGpNMzA3?=
 =?utf-8?B?a0hTSVNTZkNQVTlSaTJHOXN2UzRPYThPNWg5aDVIb2pVNTNZSmZqWmNxeGlz?=
 =?utf-8?B?SDVmbUZUQ2dQRkE2ZlozVDFFcldhSi81ZkJ4a0Z0TTFhSFlVTS94ZjFNVXpN?=
 =?utf-8?B?b2tRYnJTa254MGRzOFkrL3FZR0M3cWxIQi9CWWtNS2ZqT0Mrb3JySDBVMmZu?=
 =?utf-8?B?aHJuN052Q0RwNVdkeFJrSXZqejVTYjNJd1UvN2RRaFczVElxVFVBT1lURGlS?=
 =?utf-8?B?akgvME1pY3NIdHlCNTdBUGhvT1J2NjhuTmtCZkxYK0dwU0ptN1pqWGdNVUdO?=
 =?utf-8?B?dmlPY1JHcG05a21EdnJPNVRJejk0bVJJSmpwemdxUnR5a09oTnlkUi9Na0ZI?=
 =?utf-8?B?b3N2T0Q2QW15dXRjd0FxZWR1VEJsbG5YZm1QdjZVVDFzWVZOQXpsbGxneDJJ?=
 =?utf-8?B?d2pyUXlBalVSejBaMlQ5YU8rYU4zVGxHM3VtdDBSUG9nbTY0QnZ4V3ZEaXlT?=
 =?utf-8?B?TWFSdHZ5VHVLY3B2RGJaUGdTa1c1RU9ZSWZzY3JSM09POHVxZTNvMjZKYnFj?=
 =?utf-8?B?bjVIR0Q3bytwbGo3OVpETFVxd3lNeHAwaGpIc3drZzNZQWI3N1VRT3E0L0hP?=
 =?utf-8?B?amp5dkZvRCtLcWt6MTlWSkJKZDVESlg2RU1EMWg4SlBLL3NNREQzNVFtQXJ5?=
 =?utf-8?B?Z0xxeDhFbUlXc2QvM0ZybEtkZkw4UkQ1S25DVlFUVWw1djBqRVpmK1paOGEv?=
 =?utf-8?B?K0hWZStCOXNaMXpYbnhFRCt3aTVxdUt4ZEkycmQzUzViODIyU0g0NDVYUmJz?=
 =?utf-8?B?UXlTd29yL2VyL3J4ZWgyQmRJbHNIRmtjdTJnQXhDOTJvejNOa2p3Kzc5dU0v?=
 =?utf-8?Q?xFwR1QUrdYBZNjNmAbdh65o1R?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1700354a-56f2-477d-48fe-08dd4b5b93aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 11:51:24.7724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zwuoGC55GxAknDRq6vTHpXO1V4jr3bza0zyV7/CLpm5JA9lJq1Qvf9nkWcGxoEdlc/PIyHN71Xy2L7WeJ2jOGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7579
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBNb25kYXksIDEwIEZlYnJ1YXJ5IDIwMjUgMjAuMjUNCj4gVG86IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IEltcmUgRGVh
aw0KPiA8aW1yZS5kZWFrQGdtYWlsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCAxMi8xN10g
ZHJtL2k5MTUvZGRpOiBDb25maWd1cmUvZW5hYmxlIGEgcG9ydCBpbg0KPiBERElfQlVGX0NUTCB2
aWEgcmVhZC1tb2RpZnktd3JpdGUNCj4gDQo+IE9uIE1vbiwgRmViIDEwLCAyMDI1IGF0IDA4OjEz
OjE0UE0gKzAyMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+IE9uIFdlZCwgMjkgSmFuIDIwMjUs
IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gPiBGcm9tOiBJbXJl
IERlYWsgPGltcmUuZGVha0BnbWFpbC5jb20+DQo+ID4gPg0KPiA+ID4gVGhlIHZhcmlvdXMgZmxh
Z3MgaW4gRERJX0JVRl9DVEwgbXVzdCBiZSBwcm9ncmFtbWVkIGF0IGRpZmZlcmVudA0KPiA+ID4g
cGxhY2VzIGR1cmluZyBhIG1vZGVzZXQuIFRoZSBleHBlY3RlZCB2YWx1ZSBvZiB0aGUgcmVnaXN0
ZXIgYXQgYW55DQo+ID4gPiBtb21lbnQgaXMgY2FjaGVkIGluIHRoZSBpbnRlbF9kcDo6RFAgdmFy
aWFibGUgYW5kIHRoZSB3aG9sZSByZWdpc3Rlcg0KPiA+ID4gaXMgd3JpdHRlbiB1c2luZyB0aGlz
IHZhcmlhYmxlLiBBIHNpbXBsZXIgd2F5IHdvdWxkIGJlIG5vdA0KPiA+ID4gbWFpbnRhaW5pbmcg
dGhlIGNhY2hlZCB2YWx1ZSBvZiB0aGUgcmVnaXN0ZXIgYXQgYWxsIGFuZCB1cGRhdGUgb25seQ0K
PiA+ID4gc3BlY2lmaWMgZmllbGRzIGluIHRoZSByZWdpc3RlciB2aWEgcmVhZC1tb2RpZnktd3Jp
dGUuIFNvbWUgcGxhY2VzIC0NCj4gPiA+IGxpa2UgRDJEIGxpbmsgZW5hYmxpbmcgb3IgdGhlIHBv
cnQgZGlzYWJsaW5nIC0gdXNlIFJNVyBhbHJlYWR5Lg0KPiA+ID4NCj4gPiA+IEJhc2VkIG9uIHRo
ZSBhYm92ZSB1cGRhdGUgdGhlIHJlZ2lzdGVyIHZpYSBSTVcgZHVyaW5nIHRoZSBwb3J0DQo+ID4g
PiBjb25maWd1cmF0aW9uIC8gZW5hYmxpbmcgYXMgd2VsbC4gQWZ0ZXIgYWxsIHRoZSBwbGFjZXMg
dXBkYXRpbmcNCj4gPiA+IERESV9CVUZfQ1RMIGFyZSBjaGFuZ2VkIC0gcHJvYmFibHkgdGhlIHZv
bHRhZ2Utc3dpbmcvcHJlLWVtcGhhc2lzDQo+ID4gPiBsZXZlbCBzZXR0aW5nIGlzIHRoZSBvbmx5
IG9uZSByZW1haW5pbmcgLSB0cmFja2luZyB0aGUgcmVnaXN0ZXINCj4gPiA+IHZhbHVlIGluIGlu
dGVsX2RwOkRQIGNvdWxkIGJlIHJlbW92ZWQuDQo+ID4gPg0KDQpSZXZpZXdlZC1ieTogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAZ21haWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDIzDQo+ID4gPiArKysrKysrKysrKysr
KysrKysrKysrLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KPiA+ID4gaW5kZXggZGRiMTgyNTUwYWQwZi4uNjRjNDI1MDVmMmFkNiAx
MDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gPiA+IEBAIC0zNTksNiArMzU5LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9pbml0X2Rw
X2J1Zl9yZWcoc3RydWN0DQo+ID4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ID4NCj4g
PiA+ICAJaWYgKElTX0FMREVSTEFLRV9QKGk5MTUpICYmIGludGVsX2VuY29kZXJfaXNfdGMoZW5j
b2RlcikpIHsNCj4gPiA+ICAJCWludGVsX2RwLT5EUCB8PSBkZGlfYnVmX3BoeV9saW5rX3JhdGUo
Y3J0Y19zdGF0ZS0+cG9ydF9jbG9jayk7DQo+ID4gPiArCQkvKg0KPiA+ID4gKwkJICogVE9ETzog
cmVtb3ZlIHRoZSBmb2xsb3dpbmcgb25jZSBERElfQlVGX0NUTCBpcyB1cGRhdGVkDQo+IHZpYQ0K
PiA+ID4gKwkJICogYW4gUk1XIGV2ZXJ5d2hlcmUuDQo+ID4gPiArCQkgKi8NCj4gPiA+ICAJCWlm
ICghaW50ZWxfdGNfcG9ydF9pbl90YnRfYWx0X21vZGUoZGlnX3BvcnQpKQ0KPiA+ID4gIAkJCWlu
dGVsX2RwLT5EUCB8PSBERElfQlVGX0NUTF9UQ19QSFlfT1dORVJTSElQOw0KPiA+ID4gIAl9DQo+
ID4gPiBAQCAtMzcwLDYgKzM3NCwyMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfaW5pdF9kcF9i
dWZfcmVnKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ID4gIAl9DQo+ID4g
PiAgfQ0KPiA+ID4NCj4gPiA+ICtzdGF0aWMgdTMyIGludGVsX2RkaV9idWZfY3RsX2NvbmZpZ19t
YXNrKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4gPiArKmVuY29kZXIpIHsNCj4gPiA+ICsJc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGVuY29kZXIpOw0K
PiA+ID4gKwl1MzIgbWFzayA9IERESV9CVUZfUE9SVF9SRVZFUlNBTCB8IERESV9BXzRfTEFORVMg
fA0KPiA+ID4gKwkJICAgRERJX1BPUlRfV0lEVEhfTUFTSzsNCj4gPg0KPiA+IFRoZSBjYWxsZXIg
b25seSBzZXRzIERESV9QT1JUX1dJRFRIKCkgZm9yIGRpc3BsYXkgPj0gMTQuDQo+IA0KPiBJdCBk
b2VzIGdldCBzZXQgZXZlcnl3aGVyZS4gRm9yIEhETUkgb24gZGlzcGxheSA8IDE0IGl0J3Mgc2V0
IHRvIDAgKGlnbm9yZWQgYnkgdGhlDQo+IEhXKSwgb24gZGlzcGxheSA+PSAxNCBpdCdzIHNldCB0
byB0aGUgYWN0dWFsIHBvcnQgd2lkdGguDQo+IA0KPiA+ID4gKw0KPiA+ID4gKwlpZiAoRElTUExB
WV9WRVIoZGlzcGxheSkgPj0gMTQpDQo+ID4gPiArCQltYXNrIHw9IERESV9CVUZfUE9SVF9EQVRB
X01BU0s7DQo+ID4NCj4gPiBCdXQgZG9lc24ndCB0b3VjaCB0aGlzPw0KPiANCj4gSXQncyBhbHdh
eXMgc2V0IG9uIGRpc3BsYXkgPj0gMTQuDQo+IA0KPiA+DQo+ID4gPiArCWlmIChkaXNwbGF5LT5w
bGF0Zm9ybS5hbGRlcmxha2VfcCkNCj4gPiA+ICsJCW1hc2sgfD0gRERJX0JVRl9QSFlfTElOS19S
QVRFX01BU0s7DQo+ID4NCj4gPiBERElfQlVGX0NUTF9UQ19QSFlfT1dORVJTSElQPw0KPiANCj4g
VGhpcyBzaG91bGRuJ3QgYmUgY2hhbmdlZCBkdXJpbmcgY29uZmlndXJpbmcgYW5kIGVuYWJsaW5n
IHRoZSBwb3J0Lg0KPiANCj4gPiA+ICsJaWYgKElTX0RJU1BMQVlfVkVSKGRpc3BsYXksIDExLCAx
MykpDQo+ID4gPiArCQltYXNrIHw9IERESV9CVUZfTEFORV9TVEFHR0VSX0RFTEFZX01BU0s7DQo+
ID4gPiArDQo+ID4gPiArCXJldHVybiBtYXNrOw0KPiA+ID4gK30NCj4gPg0KPiA+IEkgZG9uJ3Qg
a25vdywgdGhpcyBwYXRjaCBpcyBpbmNyZWRpYmx5IGhhcmQgdG8gZm9sbG93Lg0KPiA+DQo+ID4g
QlIsDQo+ID4gSmFuaS4NCj4gPg0KPiA+DQo+ID4gPiArDQo+ID4gPiAgc3RhdGljIGludCBpY2xf
Y2FsY190YnRfcGxsX2xpbmsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+
ID4gIAkJCQkgZW51bSBwb3J0IHBvcnQpDQo+ID4gPiAgew0KPiA+ID4gQEAgLTMwNjIsNyArMzA4
Miw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2VuYWJsZV9kZGlfYnVmKHN0cnVjdA0KPiBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLCB1MzIgYnVmX2N0bCkNCj4gPiA+ICAJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGVuY29kZXIpOw0KPiA+ID4gIAllbnVtIHBv
cnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7DQo+ID4gPg0KPiA+ID4gLQlpbnRlbF9kZV93cml0ZShk
aXNwbGF5LCBERElfQlVGX0NUTChwb3J0KSwgYnVmX2N0bCB8DQo+IERESV9CVUZfQ1RMX0VOQUJM
RSk7DQo+ID4gPiArCWludGVsX2RlX3JtdyhkaXNwbGF5LCBERElfQlVGX0NUTChwb3J0KSwNCj4g
PiA+ICsJCSAgICAgaW50ZWxfZGRpX2J1Zl9jdGxfY29uZmlnX21hc2soZW5jb2RlciksIGJ1Zl9j
dGwgfA0KPiA+ID4gK0RESV9CVUZfQ1RMX0VOQUJMRSk7DQo+ID4gPiAgCWludGVsX2RlX3Bvc3Rp
bmdfcmVhZChkaXNwbGF5LCBERElfQlVGX0NUTChwb3J0KSk7DQo+ID4gPg0KPiA+ID4gIAlpbnRl
bF93YWl0X2RkaV9idWZfYWN0aXZlKGVuY29kZXIpOw0KPiA+DQo+ID4gLS0NCj4gPiBKYW5pIE5p
a3VsYSwgSW50ZWwNCg==
