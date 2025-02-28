Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0474FA49DBE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 16:42:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A87F10ECD9;
	Fri, 28 Feb 2025 15:42:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JQgcmUKL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F8610ECD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2025 15:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740757359; x=1772293359;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=0CGl7EtpEo3dLhMBt4PBReA443rNPt+fyKcX7A0pb+w=;
 b=JQgcmUKLMq70q/gRHfH7eX/av2DEx4ToZsjtIKAUFZCVcuGZ3gzXqu90
 n40NGEyVhunAqNUZgeWO7DwuOrQYdV/ZD2BrGgwD9rY6cW+gl2HHQWSrk
 kzl6Nj8d4XpxXU3Ifpd1zQSZ0koS7zvdGC6IogqOUdiwg6A6kNmDZplUl
 8VZT8d/htGYMA3VdA+i2FBJQEhcreq9gH57J3sk+z7IjGFObPHeuxheQw
 p2gxQEleX6C0cddrONPzrBRy/YyWCF5kQuJkDFp9JBSRgyG56fphgTNwC
 pflkkHXE7FBtvhCyb/VafWAb3HfFG4asnDx/4LHsF/nq7RgyL3f2eFcu4 w==;
X-CSE-ConnectionGUID: rGP3mY5SRfWkp0OWLgbmIA==
X-CSE-MsgGUID: Chjpwy6lQzWTjcC+fvUyww==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="64151958"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="64151958"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 07:42:37 -0800
X-CSE-ConnectionGUID: 2sIyb/GLTtGo7OeQlyKZIQ==
X-CSE-MsgGUID: q1YCnhctTceZ3UnMwX4n7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="117555051"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 07:42:37 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Feb 2025 07:42:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 07:42:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 07:42:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VqBa1Oef5oWkSK4ga7SKeX26mNhipi3ttY3OrTDnmohtZjDSzpCCGsJ5R0lWvo34lXg3ZOgq3IW67Ve06I24KYhE+yKdqgZGGAM2CKU0dhhc5W/Ez7JGQEw5A2OxdoyQwtFu94OnX1KsItc/FrKv2sipjLbjugx+gumK8+Y8KLY8LuGrOGhk1Y+RW7Ucf+NBLiATm9LJQ56kcZL/bVsN67mh+S9Ei61tqdL3oKnMlh5PTmXkdsSH2KcqIhY73wYKhCFCh4a2ODoKwL5L1BViDybFyK7W/mEoyMife0lq0AseyR1Opqyy43y9rloeyZchuhqMhq/pZ5LMGgzR1tFfww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0FseO/eSAay/Cn7ntvXSohmc7eZ8kU0l1T8MXfijD7g=;
 b=Zasi9wukoalpOy9JriCt3Hgcb6fLqMMHK5b5PZwl8vaSaF+Gvd+AyixO/ArsPxbOmeN7vC8kjXm6KCsg+W6zjI+phrV08vhdsZ3j+OM3uEMWHMl4r+xYIv5n8teRmyBeZzH2B0B3fWlRYCqsdZy9visq+ytS9Oc/ZwpH7sUREyyx+s2XOisXiYXPjysvH0QFIauo8Mwnw/wit1fkicHlJlqw09wpRSG9f6IAluU4yAnhjoZXumR/xlI9tuZdwWzY3qI5/z4dw206D465QWhzxRMQxJ8Toq9nVI+7mImDpBRin/zWCZihLv9MN4OF4Ft93hSxQvrhRg6lM7GqYNEEYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by SA0PR11MB4573.namprd11.prod.outlook.com (2603:10b6:806:98::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Fri, 28 Feb
 2025 15:42:32 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 15:42:29 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <174075171546.17587.10207720454598970256@intel.com>
References: <20250227-xe3lpd-wa-14020863754-v2-0-92b35de1c563@intel.com>
 <174072753787.3104518.3215822928540884117@b555e5b46a47>
 <174075171546.17587.10207720454598970256@intel.com>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for drm/i915/audio: Extend
 Wa_14020863754 to Xe3_LPD (rev2)
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Matt Roper <matthew.d.roper@intel.com>
Date: Fri, 28 Feb 2025 12:42:23 -0300
Message-ID: <174075734379.17587.5318707460342787657@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0309.namprd03.prod.outlook.com
 (2603:10b6:303:dd::14) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|SA0PR11MB4573:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d9ac2f6-3cd6-4900-eec6-08dd580e8235
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXJ5ZkEwR2dqNCs5S2dXU1IrSkFBcWhaaFJ3dHFYb3cwMzFVN1RtVG5SUlp3?=
 =?utf-8?B?U1JRYkN3Mmd3Z09RMStBQVdzUmlGNFFxTmhmL0NKNloyRXpLWGQxK0kvSkps?=
 =?utf-8?B?VG9YMGV5UTBxRlhqa0Z0bTlmcXdBVnlCN2c0Z21QZFNjcG9pNXRtLytlbEpK?=
 =?utf-8?B?Y0JaQm52UmRsSnJ1b3FtdWJ4am9lTGwyZUdMVXFCNlNsd1VPS0tYYzN1OVhO?=
 =?utf-8?B?ZFBzTlQrZEJNcWpSMTBtQzYyUzM2V3N0UnNsMjd6UERlTE5UaFU2TnlUV0ts?=
 =?utf-8?B?U1dXVzIrWmIveDVyaVBpQjA4TUR4aTY5ay94alRzOEhHZXY1QUNMN3RJT0ZK?=
 =?utf-8?B?VDNHdTFnLzBFcnMrOWpLNkx6dXo3em9mVTVlZHlXOTVNZlVsQk51Zi9HSDQw?=
 =?utf-8?B?WnFiTlFmcURNOEpDYlFVTDJWbFRGbUV4aWc4dzFFTUhQWnFLVnlNRTNBa2ZM?=
 =?utf-8?B?dUR4ZFl6Zkt1VDI2K1FaeVlWR3VLS1ZOMWJQdGgrV2o5T2ZJeXBMVmttUlNs?=
 =?utf-8?B?b1kwdHh6UXV6eU1sUWJ1Y2o2T2d3WDVRbG4wUnVwL3FhaXNBc3BVc3IwZi9x?=
 =?utf-8?B?ZWZWaWZQUmc0L3l4OTUveTJuaHZ3Wmx4RS9pQ2RhZTliVk16TXdrSGxpK0xH?=
 =?utf-8?B?cDRwZTdsSzRmRmcwZWtsVlNVeHNKYlMrWjlKK3Q5RWhTUWNyZE4rbTBxcFdh?=
 =?utf-8?B?U1JWZjFQOWdBSFczZkd0a2tRSGhCVEM0eWx2eDFIZTVReHFrdDEzZ0JmUzVm?=
 =?utf-8?B?NXArTFhqTzRLdTZIUjB5by9KMElTU0JzaEZSOXJpMEhJay9CVUVWN0JzV0t5?=
 =?utf-8?B?SzBDemc1WWhFRU54clEwcVNSRjRQWnRXcGc3K3pvQjgySE56SHVUUkk1K0w3?=
 =?utf-8?B?Z21xRnNtR0Fic2tlbDNLTUE5OFVLa1UrdWJSbHVVMUV5ekNUTmozTGFvOVNL?=
 =?utf-8?B?ZzRvWlhRQnI2ZXhyU05hdDQyazRVSWZRZkxmaWtQbS8zbHMxYXlvVUdGMG1U?=
 =?utf-8?B?SXV5RTlMTVJ3aE5QeEM4bXJsOGI3VFN4U1I3OUpYRTZ1Nk4rcGlJMTNheXBq?=
 =?utf-8?B?M2wyN0tNeXBJNDBOc0xKYVQ0Y25QSkFJWWJLeHludWF5NTdsdnBPNU9wcnNL?=
 =?utf-8?B?VnZlWDc3NXovZFR1aW9Dbnc0UGMxL3Q2VXdwbkNmdHg5RjZpMldKVEpDaWVo?=
 =?utf-8?B?dHlVK0hOZmV3Mm5tNEtneUwwRXlsb1ZubWkrU0YzVlJZVWJySTUwcE43UWFD?=
 =?utf-8?B?b0txYkRQcE1ZL25LSUx2QmhqbUc1SG5pY3RSdkFYQ2NrcEdCaDR2WThwV2lF?=
 =?utf-8?B?bjhjMXY5WkdkZmtYRGh1NTdjdUJLWE5pelJ6UXd1WnJabG00NXZ1QnNGV0Qx?=
 =?utf-8?B?TTZ6MnlDdi9YZ0JMM1ZhMytMdjJJU1NIWVZJUmErTkIwS2RXS2k4OXNEbHYv?=
 =?utf-8?B?OXoxcEFwL2h2bmI1NWZSNzdHaEYvRm1rRTRIZWs3eWtmOXM1akVaenJZQzIx?=
 =?utf-8?B?Z0lyeUc5QVR0Nm12YnZEYnBRZDBsZldybzRtNzVhTXNDd0VuaUFpT3JvL2Qv?=
 =?utf-8?B?NU1iQ3oxOEk2c0JSYlhJcG16R3picEpRc3ZmTWpIRUt6TkZaUWFSNHQzZjBG?=
 =?utf-8?B?WDZ2LzFPcWtzalRBK2daM0xkY2c2UUpRV1N3dVZKb1hXUndVMXNGQk1CaEo0?=
 =?utf-8?B?QkVWSzJRbkhYTEJETmkxK1lVdUIveDlhcUZYK3BqWWVHbGcwS0pRZms3SzZu?=
 =?utf-8?B?RTlJL3UyZVBMNHVtekdJay9nTVdiaTEyM0dadVFveGQ2WDFFU21lOVozK1p1?=
 =?utf-8?B?SnZ0L2Z5UVdRQ3Y0SGljdzMvcHAwTmNXWjZOVEptUE9aQ2hZUWFlSk00ek5X?=
 =?utf-8?B?RS9KNWhnVTJnWmY2SnluQi9ZWWpiYndTcDNtMFBRcW9SZ0E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTQwUkM0NjVCeTFjSlVMa1Z6aUVuQWhHK2RnczVPSEgxVWxrSFU2QkpnZW5Q?=
 =?utf-8?B?bHB2dmF6NmI5andKdjgrZlA5WWxGNW1JNFc3MXd0N20rWkl2cWlPKzc2UnV0?=
 =?utf-8?B?MDJSa3U5YVpCcUNLVTdxcXNtU3BSUW1tQVBRRTUvWEdLR3N6T29RckdueGx1?=
 =?utf-8?B?bUtKbnBuUlJXRkp4SU9qODVTWDU0ZTdDbjVMRUNkbFBYQnhCWE9RTUJUa2I5?=
 =?utf-8?B?RjZGSUc5ZVZHaG1iaW1zU3hwc2tZcUNyY09aWDBNUmpWRW4wOFFYZ0xJVDI4?=
 =?utf-8?B?WGI1ZUljNHN6d1E5dnc3aDdGYXdnWVkwZVhZMG1vVjZXZzVVdW9hUEExU3Rt?=
 =?utf-8?B?cGdFUkxydFBwSnJWZ29vVmd5L2pzYU5iZUhQdzFuTU9HSWxwdVQybjNwTGdH?=
 =?utf-8?B?c0NTR1h6b2dwZlc3N1NXWEZlQkMxV21xODdyWlFQaWU5TTR2UG9UYnl2aUVj?=
 =?utf-8?B?YjlaTHFEOTNtaU1ucWd0bWVHNDdBRS8wanhMWkI4MHRlcjZwU3JtMGdObmQz?=
 =?utf-8?B?ekxvSVFpTHBHcXNXY2creDlOK0hGd0ZwZy80UUZyd3JBdkpENWduQWNKQXUz?=
 =?utf-8?B?ZjNWSkd0RXE0UFN3VWZNaGRoUEV2bFJkSEV0NTBINzFZZHlJUTdkV3YxaHRO?=
 =?utf-8?B?N0h4RG5TS0NmNkFaN01iTzVZU1R3MXB6MWVobm9yNi9oZllwcmtISlBHays3?=
 =?utf-8?B?S1BoTStDYmswZ3RaankxWnQ4YlBuWkhGVkt2Szltano5ckJ2Rk1jcDlCcWRn?=
 =?utf-8?B?S3lhakNxcEZieC9DSnozRkkwRzhNYXhqUmltMk94cklUd1NlNWV1UGNnWUhO?=
 =?utf-8?B?eEZ5elVydG5yaU8yTEN2cWVLMWkybVgzd09qTXlDbVZYaXRMczF1MUdMRVQ0?=
 =?utf-8?B?REZCUDJTZ2s0QldzR3NMMG9jSHp0cWJpdTl4bU9zNzhTUEpkRFBBMTFyWnlP?=
 =?utf-8?B?aUNsc2QxNXhwRVRKdWtQdXpmT0xoWUJXVjhlcCtQN05RUzBuV1VuYUJpZzE3?=
 =?utf-8?B?TnhJWlgvNEQyWnM3S0tPUU1YVUlvSTBic3hBeGtMNGFvWldvVVdGYTYxbW55?=
 =?utf-8?B?ZDhjWGJiQkdKb29oZ2gvQmtpNVhWMFk2SDlTbDY5TUVZZmlDOWd6R0Y4ZWZx?=
 =?utf-8?B?WHNwQ2pxWUlPdEF3Q2gwT3dWVFFKVFdEdGxoVE5kK2VIRXhzcFpTd2l3ZHF2?=
 =?utf-8?B?MktPd2xKeW1YR1RNbDlUc3FqZjgyaHQ1WjdMckdKSGNlODZKalp3V3dub2Rx?=
 =?utf-8?B?K3ZDa3hyTGtpRndiWXBEMS9RaG9kSUxDSmFtQ2h0UEJCNStQK2xjTnJ5VFZF?=
 =?utf-8?B?bTRTUlpWc3hxM1BsSXpCRFMrVnRTQW9ZUDlYSGVud2wvOEt1SmZ5dXB2NWEw?=
 =?utf-8?B?ekFMN0VOMzY2TXc5eGFrK0Iyem5UdTI0K3ZDNUxWVStocWdoc1lGTnNTQzYy?=
 =?utf-8?B?a3IyS3NxbGx3WnF5UCt6SG9GNG9WMGtrc2hFYmNGOXBvdWtlQllyWTZjNjJx?=
 =?utf-8?B?NWh2ZWdXOUdxZ2J4ZW92c3Ezd2RzbGxFRFYrQUt6STFLc01wc0xocDBCT0ZX?=
 =?utf-8?B?dEhNdWJUOGFSTUF2R3UvYzBRQ0pPL1BISWw5Ry9FRlQ1THZHRFQzQTVqNDlz?=
 =?utf-8?B?Vkw0dmphTGl1WSt0aDluZzhEVUlmSVFVM3hoVGpwMWMzMkRoQnFoR0dBRWx6?=
 =?utf-8?B?Mm9wVWtrdTVITTc5Y3JSb2tBeGtub09qVHoyV215czQ0ay8yS042THdXQUlC?=
 =?utf-8?B?dGo5U3RjWlJSdzJWNFE0ZWgrN2pBQTRHdFZBaXNiZDdXUTNvQVlBbkorRkFu?=
 =?utf-8?B?LzdhcS9TQW9DazBFZkJNT09LbTFzQjA1R3hYbzE1UjVVTWlXOTl5dVpGTUlq?=
 =?utf-8?B?ckFEMlZMN1IvcjErUy9nNVdkdnVReU1oVFlhTUxWb0g4d1JvKytubjg2SEhh?=
 =?utf-8?B?NGhPWGJzbXdTVUdKQ0N5V253T2hvN01tWWQrVEVnSkVlYnVwRXdnQjRCeE1t?=
 =?utf-8?B?TVMwUnNmZVBoT1ZNMFFPV3VWUkwrbkR2QXZmdysxaXF4UE0xVjlDNlZCWHB0?=
 =?utf-8?B?bGowZVVPaFVnSUJaaVEybkNIUi9KOG9rRmhjM0dzVHlodjNVeTVnbkxDcTFL?=
 =?utf-8?B?RkcydjFCYWFHM1JsRklkNkg4L0JUalo2WGk3ZWE4U2hGeE9uamtWdUpNRDBl?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d9ac2f6-3cd6-4900-eec6-08dd580e8235
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 15:42:29.4923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 63UArTQSfS1EjUUlqyRbUt1G3mZLIxrTcHESPIIUoS1+pCQmJLQ/9DPEglSWwprW+Qw8f9U3aclnAmIQQbhHZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4573
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

Quoting Gustavo Sousa (2025-02-28 11:08:35-03:00)
>Quoting Patchwork (2025-02-28 04:25:37-03:00)
>>=3D=3D Series Details =3D=3D
>>
>>Series: drm/i915/audio: Extend Wa_14020863754 to Xe3_LPD (rev2)
>>URL   : https://patchwork.freedesktop.org/series/145492/
>>State : failure
>>
>>=3D=3D Summary =3D=3D
>>
>>CI Bug Log - changes from CI_DRM_16198_full -> Patchwork_145492v2_full
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>>
>>Summary
>>-------
>>
>>  **FAILURE**
>>
>>  Serious unknown changes coming with Patchwork_145492v2_full absolutely =
need to be
>>  verified manually.
>> =20
>>  If you think the reported changes have nothing to do with the changes
>>  introduced in Patchwork_145492v2_full, please notify your bug team (I91=
5-ci-infra@lists.freedesktop.org) to allow them
>>  to document this new failure mode, which will reduce false positives in=
 CI.
>>
>> =20
>>
>>Participating hosts (10 -> 10)
>>------------------------------
>>
>>  No changes in participating hosts
>>
>>Possible new issues
>>-------------------
>>
>>  Here are the unknown changes that may have been introduced in Patchwork=
_145492v2_full:
>>
>>### IGT changes ###
>>
>>#### Possible regressions ####
>>
>>  * igt@gem_exec_suspend@basic-s4-devices:
>>    - shard-glk:          NOTRUN -> [ABORT][1] +1 other test abort
>>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145492v2/shard=
-glk9/igt@gem_exec_suspend@basic-s4-devices.html
>>
>>  * igt@kms_flip@wf_vblank-ts-check@b-vga1:
>>    - shard-snb:          [PASS][2] -> [FAIL][3]
>>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16198/shard-snb1/=
igt@kms_flip@wf_vblank-ts-check@b-vga1.html
>>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145492v2/shard=
-snb6/igt@kms_flip@wf_vblank-ts-check@b-vga1.html
>
>None of those are related to this series. The effective functional
>change is the addition of the workaround for Xe3_LPD, which is not
>present in any of the platforms above.

Pushed to drm-intel-next. Thanks for the review, Matt.

--
Gustavo Sousa
