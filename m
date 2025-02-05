Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58660A29DA0
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 00:42:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71F9010E231;
	Wed,  5 Feb 2025 23:42:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nzTGdtUZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61A4C10E231
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2025 23:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738798923; x=1770334923;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FTuTmOg6ep5fOso+K7nKez6j4ImDFxKCXsha7hgLyRo=;
 b=nzTGdtUZqzGsHEW+uNYJFj9qlkAiGRb5yqEUXgX9u6koieCFiPXj/A7D
 roiKVDTb2sHCfYxEJ3bHAl8Xb6NHCtU4EIxRSC/HYEP2dyKkVemg8BbIj
 p7v/1sg8oyWnIOCjEQHk3mdmQrRcxvS55A5ucR9+2I1TurluYCbiE8HQT
 h2qdlAzNl6U/Wm1FIZ5SGHmwgi6Vso1bDugA2vSZEmb1cOKnrNw2NKtn0
 IgyLd2F1OlunDRdJpZw54wh7kK9grNCG8H8BVCjHsGifHikPFIHf9aZbJ
 8K/opjBwAZ7zJkyUtv55P9CqDj0x/k6aduWi1gU91WSeJ97XYhOy9Yu5+ A==;
X-CSE-ConnectionGUID: sGlw3b6xTXyQrK6w0WcLcA==
X-CSE-MsgGUID: OKBs/2lFTyaAEFchDvJf9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39283139"
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="39283139"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 15:42:03 -0800
X-CSE-ConnectionGUID: DmRaSoZGTwGuYqqy8bSACQ==
X-CSE-MsgGUID: JUDAL56PSw6rAIAXC3q2WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="134282156"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 15:42:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 15:42:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 15:42:02 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 15:42:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UDPUeJEo0a6HXn8tCFjw2uy0WtoI7h3JW0NT9i2825T4eOofwZG8lqa7ErsEIYOf+lEo+r1IEsdazSJBM7VEX1sgc6Np15wnclGLVyMZfy0Dux2j6l7g61DTZu3FXhl9ag4IYQrR3DxvDFVJE4+awbfhXPGg8nM8ejAWS7WGP2vhdB8APipBDCrf0pOy7NyQw7bh8dcXNtPX4NGWN97kK/gvP0mtteS0/hsPH+jPAfve81V+1g92n08kC9R4a4i0COhG3xoQkp1StoMChrbyhufurP7njHR7yicoh+E3VxP1fkcthFhvTIf3yhcxPzT6gQPK5N9Wfm6a8Nhk0GWf4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FTuTmOg6ep5fOso+K7nKez6j4ImDFxKCXsha7hgLyRo=;
 b=f9PzFNeOqqxTNhsmrwry70ZEnHdJvXJm2rN6bziGDwJ7fkqpaqfo2X1Ms4Ge89+XGs1AOzqM2ddmBhBxDDkBLkLDc5s3OEluPBVI0VqwouHD+1PdIwj83QfHsxV/Pz4dltWIZ/n2E/yenyoFuYTjYHocMtKuyItjArzNhDi03GGtwdNDtGRQhq4mkx4Vq9lRF8o4FvKKIn+g5EcOhoCj85gUggIouVw2eGEZQw+VmHimMuADGx9bYpgwPg3CPtJWum7/dgGPW3P3wAlXLlkZe2xH0pB+RU/d9xuWCEIOQ/8GZ1XTk4xWTkZKYHTpmfIrf8fdE/CYAMvH2fRA1KTDFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by BL3PR11MB6457.namprd11.prod.outlook.com (2603:10b6:208:3bc::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Wed, 5 Feb
 2025 23:41:45 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::5b47:1b5a:71b2:4f20]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::5b47:1b5a:71b2:4f20%6]) with mapi id 15.20.8398.025; Wed, 5 Feb 2025
 23:41:45 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/dp_mst: Fix getting display pointer in
 intel_dp_mst_compute_min_hblank()
Thread-Topic: [PATCH] drm/i915/dp_mst: Fix getting display pointer in
 intel_dp_mst_compute_min_hblank()
Thread-Index: AQHbeCWcKvRPcEUIY023JDEesTod3rM5XrYA
Date: Wed, 5 Feb 2025 23:41:45 +0000
Message-ID: <16754ee4cd21d99c1e81c5953134b496dd07630f.camel@intel.com>
References: <20250205232855.3017421-1-imre.deak@intel.com>
In-Reply-To: <20250205232855.3017421-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|BL3PR11MB6457:EE_
x-ms-office365-filtering-correlation-id: 819765a2-de11-4a2f-926f-08dd463ea697
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?KzVzNTZ5Mks2NTh6a2t5MlRmOVJQbEZmR2Q1dnIvMEhoYXNEUGZYbGVqRitN?=
 =?utf-8?B?MVpjNUJBMW1LOHVYTHZMQ0F0ckZ0OHo4WG5KcGJuMThUcXlmaXE2VFI5YlZD?=
 =?utf-8?B?clNaRGN2UTBTaWdDSVlPTUdIaVFuc2h0cVYxV1Rvczc5Zk90bFg2WUNDWmkz?=
 =?utf-8?B?OVVheW4rYkZwbk1rZHpiRzlpcTJXRmNEQ0ZaUEJtYjFCcjZ2WnppV2Z6RFRq?=
 =?utf-8?B?NGhhYmV0cTUyUm9KMkgxb2MyaFMySzRQZmVSV0dQaXJLZGNQK0kzSFFwMFQ1?=
 =?utf-8?B?L0dGTHBHZFFlR3ZZWm1WRVFLU2VvUUlaUWdoNzFBbUs1K2xjSk1LT3pjYkZX?=
 =?utf-8?B?aCtzUS9EQ0p6NGNnZTViTVVKUGVFeE9EeU9wZjJwQWtmeElWYTBBL2kvbWFC?=
 =?utf-8?B?TjVVRDRHSnR4MHoxS3V3Sy9KZW0xdFdWeGFPQjdFWDcreEJaa3FEbzVjQlVs?=
 =?utf-8?B?OE1jQ2w5R2hyeWhaV2FoNjlFUkM0M1p6c2JveUFQQ3BZOVkyaVVYRmZ0SXJQ?=
 =?utf-8?B?aTZiMmFzQWFzNjhtTVJhckdvdncyWllCUWRNZWFtQlJId24zK3A5UWEvTi9L?=
 =?utf-8?B?TFRYMG54UXNRcm1yTmJ2dVQzZ2l4M2RMZStBZmphamlVSUYxaDBOd2FCYUNJ?=
 =?utf-8?B?dkZLaWhmVHFBeDQ4bFdCUFNBMkFoTXU3Ym5ORkZEa3VXMmUxbmlhOENYVXFE?=
 =?utf-8?B?b2tISDJub3FWdVhVSXp2UGFhek1VRG1OdEYyWlRJS1hVNmY5anRpa3BqM1dx?=
 =?utf-8?B?dlNuTytNUjUrL1FDWjQzUkdoYTk2R2JjeG5VMURQUWVrWVFKZXNUdTJaaGg1?=
 =?utf-8?B?d1dHcytmNFUrZUw2Mk9MV1NaeXZpRGUrTHpEY3Y1cUxLWlYySW5BRk9HZnZq?=
 =?utf-8?B?akdkSFRXL1BoeFBOckppMlk2T2FVVzlrYUxJMVNac0VobmppUXlLYUpXSVBn?=
 =?utf-8?B?cE53UmFjKzdlYVRPbkhNaGp0N2NNanVEV0tHRUM1eS9ITCt3WlV0NmpNRTFK?=
 =?utf-8?B?V1BEOGVRUm1MKzBWYlhZZVBhZmV3b242RDB3WmpQQWV3NWxtKzBsSUxxS1Rj?=
 =?utf-8?B?UnhzSDdKcnQwQWw0N2RPZlhkSnU5OVJRZ3cwL0pQM1pBbXJaVTNUTWNnYlJ4?=
 =?utf-8?B?cDB6RXFqUGxzY25hMVpETm9SdEZ6aWs4YVZiUy9JTnU2TUdYOFlLSTZicGN4?=
 =?utf-8?B?NnMxd3lzNldrT0FuVEQ1K1NaVTNIRHI0dytyVk1xdjJCTkh0R3Jsa2p4NDV4?=
 =?utf-8?B?YVE0NDQyTlM0R2l6VmVOMjdYZG8xUXR1Ri9NRmk3V1FGTU9STlhCTkRjdXY0?=
 =?utf-8?B?dGR0cDFKUmNZY0pRV0JuNk9SZjhwckFXNkI2U0lQQ3VQaHZHUEtmMThUd1FD?=
 =?utf-8?B?NzlETzNJeTg4VE1jOXR0ekFYZFpjSndSUTV2b1Z0NFg3eW92b1NzVEpQTG9Q?=
 =?utf-8?B?UER5YVZ2MHpIV09SOFBjYXVNVjJnVWlzZlkxa0FlV2RydWp2SHlIVkRLWDRO?=
 =?utf-8?B?RHlZTnpObmtSbUc4M1M4cHQrdGRNa1NKUFZKd3AyUENBRUkxL0hqdTVmUW9k?=
 =?utf-8?B?VGhRV2xMT2lkWWh4L1lKTFFLS0kyeDRva1RQdE9XeDZrNDJwLy9UZGpVRDVE?=
 =?utf-8?B?TnVITEVtS2xIdHhsMWJYQzJ3cURQS3kxRTQydHRuUDk0b1hUWmNJU01EWHdC?=
 =?utf-8?B?WmlhU3BlY05vcTA2a1RhZDM4VHdEWFBVMXNRVEJzcVloTzZVR212ZzhmYU9a?=
 =?utf-8?B?YnFpV0pqQ0lPUDFaanNXTU9jdGc0VGxlQWdldHBhNjNmWTZOV2RQVVJONHda?=
 =?utf-8?B?MEJIRVJ2MHFyYXlVb09HenBaOUlBd2dmSG4yMUhVM2syVnFhdERlNDNNVnc5?=
 =?utf-8?B?RVk1U2lyK05JZGMyazUrTGZFaG1nd0RLYjFkQUNxTEVobmd1c05HOFJMUGpT?=
 =?utf-8?Q?wy1WtqztyePFp3Ezy+8q8HduCBwDzAHd?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2J2bWhvenhjb1UyakRpMjBOZUhQNTlVQVI1SmVzak8wamVWRGIxMnF2Nkd0?=
 =?utf-8?B?bTFzMGt3TGRTNzBOM3gxNWR1Lzk4OVFsdzhuR0NuS09rNWZacVhDNmFJN0pY?=
 =?utf-8?B?OE1teXoweDB1T2VLT0kremNkQno2dUpYNHZlRHJTdmZUVkVqUlJ2dDA0QWJw?=
 =?utf-8?B?TDZJeGRORklkL043RzJCMmJSbUhOUjB1akpnVHdLQTZzYytrbzJvNWllaExY?=
 =?utf-8?B?ejR0ZFJ0dkU0NlVUcWxKUUxNTTJUaDZUTUFjLzE3Wm83cVYwc0xwVSs2ZkdH?=
 =?utf-8?B?cWhYMDFKZGpkSVQ2SDArYlNLWDVjWXZZK3BkSEZVK0dqNVhaTHV6bU1JS2Rv?=
 =?utf-8?B?WlBONWhpaWpXNiszT2Q4MDBweXlheUZ5WEN6eCtVSTA2Zi83TmpnMGxoSTA0?=
 =?utf-8?B?S0FHWDBTOUFUWjNNQW9HMEZDVVdjdGh4MTF1NXpQWFp3SmFMV09QUVNpV0Jw?=
 =?utf-8?B?TXlPMkF6eVUrQVViSWkwYmRMNjdqaUEwTDdNMEc2UUw5QjZ0SGcxck5DZU9G?=
 =?utf-8?B?OEU5Z2twQ3RUaWdIWUJxTEJHb1ZJNXA2ZXp6T240Y29DcHJTdkRTM3VtVkY2?=
 =?utf-8?B?RFF5VjBTbG9QdCtiYmJHNFIwd3FqWXYrUXRURGtLWWJhdUVrTUJLNURoaEdI?=
 =?utf-8?B?YnRuWktDN2FLaGtSMkJocFQwSFRhcFJaOWdoOGxHTTVPU0VhL0kzZXYzbTJK?=
 =?utf-8?B?NGJEOUxzTDBHSDFQQ0xBOVZtZENERHNoYkNmeUM2THNteWdybkpHd25nTkEz?=
 =?utf-8?B?UjZxajRJYy8xamJUWUhyQnhETkVaY09YWVZlWURtUGFlZEJCV1RSWWJidEtQ?=
 =?utf-8?B?V09kK0NRSUZIZzQ1cHpuSjV1T1ZDU0lERDRMOHdXU0ZUSUxqTVYySVRpOXBn?=
 =?utf-8?B?V3czY1pKWS84bXlrSEEzWEc3UDRXVFkyMHBFS2VQMlJpNkxPWExGNlNIZ0dN?=
 =?utf-8?B?ZGNqSmQ3NlNxN1JsM2ppVUQ3b29STUlQQThJcFp5ZDRqbEtXRGVhMElqZUxi?=
 =?utf-8?B?WWpVRGoyYWxxbklOQlViVU1MWUFESWttdVJzUGtFTEMvb2prNVlMSmR0SWk2?=
 =?utf-8?B?WGxDdjdaZUtrTVhydW9ta3JCTGczd21ReWM3bTd2VXAyT3J5Z05HVnNOOTZm?=
 =?utf-8?B?dW9NSW5XclRmcDVkWWplWDk0R2krNUFOcHZHcGdPVUc5aS9VN2t2OEZzSHJz?=
 =?utf-8?B?bTV5S1NISFJjTVA5S2NYNXdkS29LVW12NmsvVktOZmtGKy9kdU9JSGJJMDZy?=
 =?utf-8?B?eG1BVW1rcVR3WHJSaytoNHBBSGV6TEhUT3NWVnd2YVY5YUplcjlwTXNhOEs0?=
 =?utf-8?B?WjVlNWJYZVdOT2txaEo1ZXBjT3VHYTJqbXVRT3BOOXJlZ0tac00yUDJrUkcy?=
 =?utf-8?B?UDVDajJ6a1ZiNlJFaFdYK2RUYTZCVExKUThENmxLa1dSc2h0WWtnZDlBSlhZ?=
 =?utf-8?B?VVJJQnRvck1oc0NuM2VPMy9JQmViK2dxeUdjRDNzblJOcEsrejB5MTh0dEN5?=
 =?utf-8?B?NDJmVzZkbjFSOFJpWlFWSnQxOGhieSt2K2VsOGdSb3FBajh0TjJTeHhodzBa?=
 =?utf-8?B?U0pyNE5OeW43VUtHV2JYT1g0OTNJWTlSNGdJbzdJZ2JnNXpTZVZKNnZsZ05T?=
 =?utf-8?B?QzkxTG1DcGo0eWE5RkZLblE2SlhoSU1yOXNUbTlTM1NkMmQ5ZGlmNVJxL3Er?=
 =?utf-8?B?dndsSlhkdm1KSVlRL2t2RDhTWXdhTCtnbkhaZHl1OTFpQjVjRXVEYzV6QUxJ?=
 =?utf-8?B?cURYdlZ2em1DVHNQOXRVaUhiTVpWd0k2WERtK1RHaUJOZnY4ZzV4NHZRV3hq?=
 =?utf-8?B?bDZXNlJld3hWcGdkRlF4UlJYcFV2a3pUbWVnWjdzT0FhWkFxWkN4bG8wYkZv?=
 =?utf-8?B?WmdicG8zaXluRzc2U1BGRkpFRzNCdGNuanRjYlE2SUpVc3dDQVd2NlVHcUl6?=
 =?utf-8?B?ZXREcnBvMDZJVGlETjM3RENOSkxLbHZYQ1RTNktONFN6dE1CT0pTV2Nla0dJ?=
 =?utf-8?B?UmhxK2xWY0VnQ1JaSG5tMHdodkRNRWx0THI4Z0hSeE9xMlpVWDFrZUl4MzlK?=
 =?utf-8?B?SHRDK01JYUFmMk9oY1BiNnhRSFErQ2FRMDFhUFR6VnZJT2dPaEhSOStkK2hi?=
 =?utf-8?B?b0UxVi9FNmVXNG1Hdm5SZUNuVE5qRzVaWWJCRS9ka0pzbzJrbkdUWndYdHJh?=
 =?utf-8?Q?0MiCiVmlTBENiB1uf0psWbQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <71BFE8A71E022642BE16F745D20C8DB1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 819765a2-de11-4a2f-926f-08dd463ea697
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2025 23:41:45.3054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bhgfLRpCasnbh0B1xE8m282LGXbLCRJDcLKApWAjCfX+tWvLFtwUYO1M7iD4qVgNJf41kmjFaPJnU05OE6GEOGY4LbnQju894n4MJzKasVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6457
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

VGhhbmsgWW91IGZvciB0aGUgZml4Lg0KDQoNClRlc3RlZC1ieTogS2hhbGVkIEFsbWFoYWxsYXd5
IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPg0KUmV2aWV3ZWQtYnk6IEtoYWxlZCBBbG1h
aGFsbGF3eSA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCg0KT24gVGh1LCAyMDI1LTAy
LTA2IGF0IDAxOjI4ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRoZSBNU1QgaW50ZWxfY29u
bmVjdG9yOjplbmNvZGVyIHBvaW50ZXIgaXMgTlVMTCBpZiB0aGUgY29ubmVjdG9yDQo+IGhhc24n
dA0KPiBiZWVuIGVuYWJsZWQgYmVmb3JlLCBzbyBpdCBjYW4ndCBiZSB1c2VkIHRvIHJldHJpZXZl
IHRoZSBkaXNwbGF5DQo+IHBvaW50ZXIuIFVzZSBpbnN0ZWFkIHRoZSBjb25uZWN0b3IgcG9pbnRl
ciBkaXJlY3RseSwgd2hpY2ggYWxzbw0KPiBzaW1wbGlmaWVzIHRoaW5ncy4NCj4gDQo+IEZpeGVz
OiBhNWViZTAwYzJhY2UgKCJkcm0vaTkxNS9kcDogR3VhcmFudGVlIGEgbWluaW11bSBIQmxhbmsg
dGltZSIpDQo+IFJlcG9ydGVkLWJ5OiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFs
bGF3eUBpbnRlbC5jb20+DQo+IENjOiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVs
LmNvbT4NCj4gQ2M6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBT
aWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAzICstLQ0KPiDC
oDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBpbmRleCBm
NThkNTZhMWVhMDNhLi4xZDQzYzI1NzRlNjE2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gQEAgLTIxMyw4ICsyMTMsNyBAQCBzdGF0aWMg
dm9pZA0KPiBpbnRlbF9kcF9tc3RfY29tcHV0ZV9taW5faGJsYW5rKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLA0KPiDCoAkJCQkJwqDCoMKgIHN0cnVjdCBpbnRlbF9jb25uZWN0
b3INCj4gKmNvbm5lY3RvciwNCj4gwqAJCQkJCcKgwqDCoCBpbnQgYnBwX3gxNikNCj4gwqB7DQo+
IC0Jc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSBjb25uZWN0b3ItPmVuY29kZXI7DQo+
IC0Jc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGVuY29k
ZXIpOw0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxh
eShjb25uZWN0b3IpOw0KPiDCoAljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0
ZWRfbW9kZSA9DQo+IMKgCQkJCQkmY3J0Y19zdGF0ZS0NCj4gPmh3LmFkanVzdGVkX21vZGU7DQo+
IMKgCWludCBzeW1ib2xfc2l6ZSA9IGludGVsX2RwX2lzX3VoYnIoY3J0Y19zdGF0ZSkgPyAzMiA6
IDg7DQoNCg==
