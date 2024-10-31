Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D13939B7AFE
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 13:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BFBA10E153;
	Thu, 31 Oct 2024 12:45:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UutORe8z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB0E10E063;
 Thu, 31 Oct 2024 12:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730378719; x=1761914719;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=64jjAvRrGhJJPLeX4SHvXaiU+xh5eP4KolvFKOXF1pw=;
 b=UutORe8zKuVAnviVWoB8HogM40TOgV5/Bi+21H6ybRPqQ5uX68atBCzj
 0bVkjZ55a9L/tBYiDRiNqmZeRYoFSjpxpc+68vstt2TiJx9Dce+K8I+l1
 1qyGx5yMz7E1uTum4d58rQxpPoE+hJAHQj33fFUAxZeQXOKtLxISHvmZi
 KtSMsicIZ4cdw1m4OvCz8hXlRlBXblDDXWgP29qLVbnJ89cubuBPbM757
 FxRhIqVOw7VPVFe0tQMjo2irH+/UfcgKSeP8IGIzLJ8/xZz6tXbFddYdL
 Xl0UuEIqZsd4x0j7aifNlWy79j4BP8ULcES2WAeF1/6ApK2tHVrvn8BnY Q==;
X-CSE-ConnectionGUID: 6cYoGAQLTweJHNi6b+aNLw==
X-CSE-MsgGUID: jMN4bXOaRR+Y+pk7K8KLxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="40686793"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="40686793"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 05:45:17 -0700
X-CSE-ConnectionGUID: ODpTSgicTLWU6ePbWA1NRA==
X-CSE-MsgGUID: A2iSQoMSQ1qxIhj7s53QIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82268922"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2024 05:45:16 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 31 Oct 2024 05:45:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 31 Oct 2024 05:45:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 31 Oct 2024 05:45:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hM6wfmyuMTM7+oJLcfZIH1QSmJpT9TE8kkd4rZCNN0vIHWmlf90BMIkYcAp0Sb2rBnXmIA8759ieL1uycG9scdNcAqOE+ZTy2kUkGUg4cnPfg8feJ7kdDOO62aNRjpqytHadY994jbPJcRGdjCSAQOvTDdceDrfQfiAVv6VoLsgex4KA3oZbV2dvVer9H2o+WLzwq8k/WLoHovFMMEZ40odr6GpOt7+mufSV5xqY41Wz67llMR3CmbuHuCsdyHzzDpIIzyhORRTreou2E7ORl+rZSxegf6cw1bwh9O2C282z+h3Fpp0MAhuhwQwo3nttIk/2jkhDm2WDQ3B2tgcgnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=64jjAvRrGhJJPLeX4SHvXaiU+xh5eP4KolvFKOXF1pw=;
 b=ukElOs1Un3v2wo+S98McVcfth32HYRWHI6LZLxhiqRLGL5a4pi5GgMJc/hKZCBCRNGumOzEjPV5MqnR+2RrXIsXVgIxnLoOkZPEJ0YX3JombaHdMd8oTOxGzkRrhcbpu7W31fYNMONpajeH5NvVN7GQ+QEqdvO0/L19urlp9pHuFTTi9UdLnJ7F1TCLTbTVu8aoU4M9H1TP09P+pWVZoIE4w46xNu3WsdO87K9RWD5X8y0tsY209dxxre4ufFmGXN2K912CymfeiTN7OSz1xoVMrFjBPaAQjspuZuOlFOSQYV6EW/106XKXwEi7OnaGlK/nmMZvCyJfW8DqXwItjuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CO1PR11MB5202.namprd11.prod.outlook.com (2603:10b6:303:97::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.20; Thu, 31 Oct
 2024 12:45:08 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8114.015; Thu, 31 Oct 2024
 12:45:07 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Taylor, 
 Clinton A" <clinton.a.taylor@intel.com>
Subject: Re: [PATCH v3] drm/i915/display: Fuse bit for power management
 disable removed
Thread-Topic: [PATCH v3] drm/i915/display: Fuse bit for power management
 disable removed
Thread-Index: AQHbKwWofx/eNXao9kO+ybmyX6tWgbKgfzMAgABQLgA=
Date: Thu, 31 Oct 2024 12:45:07 +0000
Message-ID: <fa0d1b8d652393dbcb0fd4d7033efbe118cb9c94.camel@intel.com>
References: <20241030195507.2753404-1-clinton.a.taylor@intel.com>
 <e62e1ab9eda0e7cb58bf132cc31dae684200c3fe.camel@intel.com>
In-Reply-To: <e62e1ab9eda0e7cb58bf132cc31dae684200c3fe.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CO1PR11MB5202:EE_
x-ms-office365-filtering-correlation-id: 8fe6d719-cfe7-4738-5d60-08dcf9a9d9d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cUpBQW1JZ1VjMEp4Vk1lQURzWmdxU0JvUEpXeEdTZHpXUG8rMWl1SmJKQkxO?=
 =?utf-8?B?R05RREp2UmZhRHRyY2J5c09zejgxNnloZWxtRW45SW5rYjYwT1VXalN4R1da?=
 =?utf-8?B?TWk0bmdHaDhQTTkrSkxsR1VkL211RDBzOWN2TUFlb2NzcWVTNXdqVWM0NHl5?=
 =?utf-8?B?WHZMbzJVWlhNSkhPRnF2TTN1V0pveFI5QWJqUXM5L0p2RzIydjJvcUs2M1Vz?=
 =?utf-8?B?bnRTMCswaUNwNG9VNStEcm1JVWdwQ2tkL3dBakFaVlM3VHM0L0hERld1a0hO?=
 =?utf-8?B?a3lqSkR0RjArTGlkNENqMjJJZFl3MTlqSmszZ1NmalExVi9DTXoyaWRPU1ZX?=
 =?utf-8?B?RHpvbExDTFJtTnVWNTRyckxTUUt1QnVIODVXTXc5ZkxBeElqb3VubWZIdlpD?=
 =?utf-8?B?a1A2VWY0MnVOYWpaYUsrQkw4R25IRHl4MFdxK2pFbE9yTkNkenZPUkV4T3E0?=
 =?utf-8?B?aU5KU094blhvVlUvR1pxVFBScHViZUc0VjZKZzZlcGxmVFFqZldjRzVsUU5P?=
 =?utf-8?B?TWZLMWdRWFBXSUNaODB1MVlrcFcyVm1SSWxNcndjYmVjcW9zbEtEUnNKOUJx?=
 =?utf-8?B?YkxlTTFsUHB6NDdUa0s2V2FjOUExZlM4cU96OFYwYjFyVzB1ODhPUGZ1UzVY?=
 =?utf-8?B?cmJGTGdEeUxtbkRRUXFNeTdQUmIyNWczNjk3bXZBTHRpZG5XekEzYVl6SEJZ?=
 =?utf-8?B?S0RENG1zMzh3YXdIdGpjNHhkRXBORDNsb0dTRk0zYTdZNnJISzU2Z2ZJYWJx?=
 =?utf-8?B?OXlwZUs0dktyelhTT2MzOUQ3aHd5WEZoVFVJQW50U2UrYmpsYkN3TlBQdmxh?=
 =?utf-8?B?N3QySzd1QWRxcnpMS0NqWWNFcU1yYzJYTVFEWi9PdzBjN3YzN1RXbE96WStQ?=
 =?utf-8?B?OEFmdDZnVmVrRHZpRlBuQ2hCRGlPMTVBOTd6Vk80dVJvdTBnQjVrSGN1eFRw?=
 =?utf-8?B?VWFBNGQyNVR0cDdyMkhVeGNqYkhVSWo2VW9QQ3pPV0tWT2RWZ3RNT0xaZit2?=
 =?utf-8?B?TTE1WW1rbmwrNTJNejN1M3JReEFJbTZJUk1FNVlHcFU0NHFhWkl1eU5UU0Nr?=
 =?utf-8?B?MXBhN3R4M0QxZmpsaVhxL1cyc3FWY3V1TmFQTzJKazJvZmFvTVE5NnJaQTk1?=
 =?utf-8?B?akJGQy9jNkRWc3FoVC9aMVlJZVg5V1doVFdzYlZYWlZyUVZHclBEaCsvdVRG?=
 =?utf-8?B?TVR0Mys0Q2czcEYxWmhOcVdneS9IV0RqaW15YUFJYVR6VklSV0JYMlZaMEJn?=
 =?utf-8?B?STQrTStwT2tJNk51eFFoZjZUbmFXVGNNaFB6NjdSYkw4cHM0RzRCQ3Izczkx?=
 =?utf-8?B?ZGdOOUFucUVxcm5yMTVudkJ5akk3TU4zNHBhWDdCM2d5WjZOQmFXeXpmcHdE?=
 =?utf-8?B?YU1hUTJCQlBUR1N2a2wwZTdGbWRUcmJMUUxWV21IQ0lhSXBDZnpPaTgrOHY1?=
 =?utf-8?B?OWs2a2twTkRRNkNqZGEyU1AxSnZoVzg4Wi9YUVlISjBqT0VZQWtvWE4wK0Rt?=
 =?utf-8?B?cllLenVUOWdKbytlTUpTeHhFN0ZxTkNha2RzZVdBazdyQWF1eFNCa29jR0FE?=
 =?utf-8?B?MndXUDY2d3lDeW5ZRFBFZU02aUliTVNLUFlZN0pkc3hyYmNWZ3VtK3Z6dS9h?=
 =?utf-8?B?L3dGRlZ2QU1tTWRrVEFBSkt2V2l1WnM4ajd1TmNsRXprclBMY2JuMHVYeVZY?=
 =?utf-8?B?REVOWU5obXdYY3U2TGNTcDhxaHd4R3ZXekk1dnZQSTBTOVQ4a0toeC9nQ1Fl?=
 =?utf-8?B?VUFvWTZ3WUY3dzJTMmNoTnBxMlZlck9GRjNSSmNYcUh6dmNwWmpSbk94NElz?=
 =?utf-8?Q?vLQMt+CyUDyRfVd9VlTFkp/PEghJxU3J2EJvQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TzdrUGUvSkNMM2NWa1hpQmZmbWdjRTV5ZUZSWEhDQmVFRmVCZVV1N1M2YUx4?=
 =?utf-8?B?MFRUcXpZWWxTWUNEV2pEWUhBT1F4VTVtQkVjM0JpRkVkZVJjTzIvdWVpNExL?=
 =?utf-8?B?WkRORHJoalBQbFZYK3VxMlZzTUJiTDFTWEkvRjV3M2ZoUENxOFQ3TXFDUUpM?=
 =?utf-8?B?aWZlb2xmK2p5VHkvdmtYTVZGMEdRcHpqS0F3aG1ISkZhZnMrWHcwYzdYZVlR?=
 =?utf-8?B?L3NrV1lYdUVlcXZnMk43QUhvaXhVQkkzMzRPRjdSOHJIV3BuSS9ycDVzbzRG?=
 =?utf-8?B?NHhjWDJpaXpMaWRDbGY1VDN5WXNSY3YycXo2L092M1NGeWZqYzR5anZ0allt?=
 =?utf-8?B?U1dYR2YvV2c4b0p1VTQ5YnlRK0VPK1YzTFJWbTlGZ2hYTkpudjFMMk5Jdkxk?=
 =?utf-8?B?cXpURjdPQTRUS2tXR0JHY1IwS015ZnlldmRIcjRHM1I0cmdsMkJIY2xXY1Fr?=
 =?utf-8?B?RTJkUzJVM21Qem1BczJBazFkVEZUUnJ0UWFQQTRoMnpVbmZxRm15UGs2WVBo?=
 =?utf-8?B?dzFUbjRQRWIzUXRIL0hEOXczWmVNRjlqanJFbmxBTmRibytvMnEyKzI0ZGJk?=
 =?utf-8?B?WGtRZWxZd1htOUZoWmxpb2hKcjBvYjMxMnpoOWlidm5CUVBXNHpmZkorY0xx?=
 =?utf-8?B?WkVZUEJsZWVOZmY2d0dVdTZxOUF1Vit0WHdDc291MnlYbytiZFdkYS8vTmhq?=
 =?utf-8?B?aVlYTlRRYUpGekozS05kU01GeU16Q2ZKTGhVMHZmVDFBSWY2TndKRWxwNW5G?=
 =?utf-8?B?K0VuV2ZrZXdDSS9JY090Y0xNMDNJUy9IVXR1VGdkM29YREJ4ZTgxMUMrUlBI?=
 =?utf-8?B?RjBOcndtdmNOS2RYQVpkNU9NV1lCcUY3VTVtb0JUdC8vNUlVRDFtSDV0S1hI?=
 =?utf-8?B?NEJmNkliMzlpQXo5ZitDL1RvRnBnRUozM0JHRWJHUlI4bW9uWnNjNU5VTjhv?=
 =?utf-8?B?YTBadnlXUDlxblJmeGNuYW9nNWhBYjhYNU9hZWhlVG5WSG1tVXNiN3c0Ykh2?=
 =?utf-8?B?K0NUQUNCejRtd0tEclFQU3Jtekd6V3JNMURLeDErQTZzaENhTnhVVG84ZXVu?=
 =?utf-8?B?MWJ4aDdvVUZTdW5WK1FhVGRBZmZHTFFXRHViRVZxci8yN2JkR2VUN3FkVHZ0?=
 =?utf-8?B?RzIxd1A1VmNrMytzZ3BvUVNnUUJmWFNSMFBvUlJVSHQ3ZGlQQzVjT2MrU2Vy?=
 =?utf-8?B?cXhKbng2WmxEd3VRUE4rN0QzN3g3UHEyd0NRU1hmVytqYUtxSnRKYVhxWXo0?=
 =?utf-8?B?N252SCtYWkVhWHpGeG5UeDNpZ3dCNk5pZnd3VUdtYlNQeGVud1d3NVB2eW1L?=
 =?utf-8?B?QWQzWnRSVFN4Q3RXdEF5YXE4VzlYMzU0NVoxaHhSR0F2c0xiaG93cFphVXUv?=
 =?utf-8?B?N1hvV201UUVtcDVBWHY5RjJwVWVDY3RsV3lzbEp3RkRIOFlQalNyaW1FV0pU?=
 =?utf-8?B?SHN3WDQ4SUNHbE9BVVQxZUN5azZJTDNiZmxtckVRc2xVZmVEUDlDdlYra1JP?=
 =?utf-8?B?a1pLQlArRWhYWkc2YVVBMWZMTUpqNjhibEEzUWducmNIZHh6SGFJK2FaYTcw?=
 =?utf-8?B?aWE3QkYyLzIwWXZjQ3h3Rk5rbW15S3ZYWjJjbCthUCt1ZWFRTFJxVmVnVmtt?=
 =?utf-8?B?Y0Y4RjJSVy9BelBBek9YbnFvQkdtalZoN3c4QTFoZEdoTndrTk5HS2E0cDVV?=
 =?utf-8?B?VUpBcWVGeGo2bUNLWmE3bXAxMDdTeGxqaldPSUNRbUhFVEYxUlpkbTJVcUNi?=
 =?utf-8?B?VG4vS1pTVTdxVEt3L3pRREJEU3hUM2tsMVRWa1haaGVOT0lldVhzUzBHdGFz?=
 =?utf-8?B?UTA4TW9PNGtPMzRuNDBFeFNFU09HOEQ4Qm1ROWZqUzdUaTJvYkd4ODV5VElM?=
 =?utf-8?B?Q2lkMW5WbFhkaFZJR2JOM3FnU3JUVFRKaHJxMFBsWWFSUnZSRUYrdlZXN3d1?=
 =?utf-8?B?SndSemZUcE4wY0cyQ0phQkh4LzZKK0lvcndHYm9kRWxaQ000NE56VnpUS0RF?=
 =?utf-8?B?VjFlQjhZZXVGUVpwa0lnZW9IUlIvWnRXMzU0Rm8xTWJyU0g4bEUyM3BqUEY0?=
 =?utf-8?B?eEQyVENpa0V3S3NoYXM0UlJvaHNsU3M5N09mQUVJNUIvVjczQldIZWN4ZDVV?=
 =?utf-8?B?Z0xnRWhyUEM0YytZYjlzYnpoVis4MGUwSDBYMkY4TnI3WjVsamg4UXhRMnJW?=
 =?utf-8?Q?5V5P8dkB1ADzavTGBWuw6x8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B71A9CA9F54B1944B942517ECCA27BCA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fe6d719-cfe7-4738-5d60-08dcf9a9d9d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2024 12:45:07.8700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sbm0JSFsj3zbOKZx+PDZI0dNQtPgr9M+LW3GvhAAki+k4BDFk8a0PADj8HEF4R2BXuCE0L4oRB0YH4yIUIDXkFg9zK7gUBTlXP1f1bWmxuM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5202
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

T24gVGh1LCAyMDI0LTEwLTMxIGF0IDA3OjU4ICswMDAwLCBHb3ZpbmRhcGlsbGFpLCBWaW5vZCB3
cm90ZToKPiBPbiBXZWQsIDIwMjQtMTAtMzAgYXQgMTI6NTUgLTA3MDAsIENsaW50IFRheWxvciB3
cm90ZToKPiA+IFN0YXJ0aW5nIHdpdGggZGlzcGxheSB2ZXJzaW9uIDEzIHRoZSBmdXNlIGJpdCB0
byBkaXNhYmxlIERpc3BsYXkgUE0gaGFzCj4gPiBiZWVuIHJlbW92ZWQuCj4gPiAKPiA+IHYyOiBC
aXQgcmVtb3ZlZCBzdGFydGluZyB3aXRoIGRpc3BsYXkgdmVyc2lvbiAxMyAoTWF0dFIpCj4gPiB2
MzogREcyIHN0aWxsIHVzZXMgdGhpcyBmdXNlIGJpdCAoTWF0dFIpCj4gPiAKPiA+IEJTUEVDOiA1
MDA3NSwgNjk0NjQKPiA+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pgo+ID4gU2lnbmVkLW9mZi1ieTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVs
LmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGlu
dGVsLmNvbT4KPiA+IC0tLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZGV2aWNlLmMgfCA2ICsrKystLQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IFJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRh
cGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4KPiAKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2Uu
Ywo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNl
LmMKPiA+IGluZGV4IGEyYWUwN2Y2ZDFiNy4uNzQ2NWUxNzE1Y2M4IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMK
PiA+IEBAIC0xNzc1LDggKzE3NzUsMTAgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9kaXNwbGF5X2Rl
dmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QKPiA+IGRybV9pOTE1X3ByaXZhdGUgKmk5Cj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChkZnNtICYgU0tMX0RGU01fRElT
UExBWV9IRENQX0RJU0FCTEUpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBkaXNwbGF5X3J1bnRpbWUtPmhhc19oZGNwID0gMDsKPiA+IMKgCj4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGRmc20gJiBTS0xfREZTTV9ESVNQTEFZ
X1BNX0RJU0FCTEUpCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGRpc3BsYXlfcnVudGltZS0+ZmJjX21hc2sgPSAwOwo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGlmIChJU19ERzIoaTkxNSkgfHwgRElTUExBWV9WRVIoaTkxNSkgPCAx
MykgewoKQnR3LCBqdXN0IHJlbWVtYmVyZWQgdGhhdCBpdCBpcyByZWNvbW1lbmRlZCB0byB1c2Ug
ImRpc3BsYXkiIG92ZXIgImk5MTUiIGZyb20gbm93IG9ud2FyZC4KClNvIHlvdSBjb3VsZCB1c2Ug
RElTUExBWV9WRVIoZGlzcGxheSkgPCAxMyBoZXJlLgoKUHJldmlvdXMgUkItZWQgYnkgc3RheXMg
YW5kIG1heSBiZSB5b3UgY291bGQgdXBkYXRlIGl0IHdoaWxlIG1lcmdpbmcuCgpCUgpWaW5vZAoK
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChk
ZnNtICYgU0tMX0RGU01fRElTUExBWV9QTV9ESVNBQkxFKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGlzcGxheV9ydW50
aW1lLT5mYmNfbWFzayA9IDA7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+
ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVS
KGk5MTUpID49IDExICYmIChkZnNtICYgSUNMX0RGU01fRE1DX0RJU0FCTEUpKQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGlzcGxheV9ydW50aW1l
LT5oYXNfZG1jID0gMDsKPiAKCg==
