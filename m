Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OK/kLhwXc2mwsAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 07:37:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A8F710F7
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 07:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A62D510E10A;
	Fri, 23 Jan 2026 06:37:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HPl/NSoQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAD0310E10A;
 Fri, 23 Jan 2026 06:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769150234; x=1800686234;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=4UvvJ/0c0PnPKiaY36sVJp2W390D5MSqyQNxsHACwbQ=;
 b=HPl/NSoQYd3L9sjn7JjEKaBGFBolLvJPmUFkV3nf/8GX26OgqQFRfQOZ
 1Aa+z9FEoAYf+8RhgDA7LLgvSayEeoWK/8x2YLm16AA2RZfWXiv3ivH+T
 MhhOKPh22zSxFnLbI6+7CI1k0jV+pM+x3ul4GLwCBXncOBRG2Gq0Efk7q
 fOX0aRw7Gv6zy9J5bcp/GhBKikz3oWyOmNpxxPHuNVb8MEasHG4B0i1mN
 3WVvbvM4uH/SXo3bJQDjIQntD7pOeurClinJtihLSPwv1fXY56lDMVTfr
 GsZB4ynOJFRaNvIr5waf3R5P4qALAqqILDqUhkDUYgTDOVOyEgG9he2eL A==;
X-CSE-ConnectionGUID: FyTYmsU2S06h+HfJD3iCBQ==
X-CSE-MsgGUID: JNkSh2caQxKfKjc+l3Pv3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="70461297"
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="70461297"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 22:37:13 -0800
X-CSE-ConnectionGUID: GIH1CwgsRAytrOfKdUaGqw==
X-CSE-MsgGUID: xE0F3KTtTPa5lLelSZD7lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="206063572"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 22:37:12 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 22:37:11 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 22:37:11 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.62) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 22:37:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k5yrmIyNcrDTls2FK8zvbqaZ6IgTtBwMZE35RTnMoCuYKPeIyEzqVyQMalsr7H/Wo7cg8IyYy9AdEtxRTOnm5n0bO6O6VPCv1Gic09mVkOgN+82r5tl4N7GVgPufjPhaUr/fDcB65SxmVDZsxm+JsFYvPjtYjKg8kOGhIhfUGAxGvmLM3FyXqGMnAnDfLyMI/r31CZLq1C2N6JYYgDOX9LqBxi0dSxTH/U1Q6+H+pRHfdwsIMwG7nUB/qmIsy67qnGx7Lrk4eM6tkVGtryxs1EUdQG5nvTti1O4EnUThMpYAMy6tb8JP8QlxuFIXwVEpZo8jJi4UqYU/8SrJ9mzQyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4UvvJ/0c0PnPKiaY36sVJp2W390D5MSqyQNxsHACwbQ=;
 b=W7LbEygchSYAZPlbxkXWiy6NMxhEqfPrD6Bi9PEyvXAvj0bZS5zWuXRlvA7+3Ey8qNap6O/GRETT9blkUaehikkDlrs3/mwRZs1W542vlwxPAyud57MSRnzOoVH5Kj+tfJTnCD/jTt6OoGsCw3Y2IHQx4/ljfzx689SGIXrew9WHYorY7F93uZjaZwInvbpu6+LBO4ri5rfAbOV6vDptpkpS/UA+zCijaW5KX9tIRO0EEIa52ZmlOorDW+2oH9t6+8lD6a7IIqKK1S054S163QSWulF+jB+CgrpgAFmOlFEsXinZtJ7c1V3MTJGeIFtjDOrmpSW2XLDDyO43b2p4aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB7144.namprd11.prod.outlook.com (2603:10b6:510:22c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 06:37:04 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9542.009; Fri, 23 Jan 2026
 06:37:03 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v9 6/8] drm/i915/psr: Wait for idle only after possible
 send push
Thread-Topic: [PATCH v9 6/8] drm/i915/psr: Wait for idle only after possible
 send push
Thread-Index: AQHcc/on5ftH6wU4s0uNPVcjcUnpVbVfZdyAgAAXjAA=
Date: Fri, 23 Jan 2026 06:37:03 +0000
Message-ID: <3e45764d418ec570574bd8af6e4c33aeef7b2b8d.camel@intel.com>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
 <20251223105120.21505-7-jouni.hogander@intel.com>
 <904618e8-d4e5-4775-bc42-69cf7a7d2c34@intel.com>
In-Reply-To: <904618e8-d4e5-4775-bc42-69cf7a7d2c34@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB7144:EE_
x-ms-office365-filtering-correlation-id: c01bb5ae-6643-4300-f6c0-08de5a49d23c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RGEranhVQXFBeEFZR29iOWdVSHVnMkdoZUhnUnRJaFNaMk5vSU5ucmZDMm5J?=
 =?utf-8?B?N3JKNUxzL0lFWU8vWnhSMXBSZTl3TVpyOUpoR0xQRUxhL1NzSHhacXVlZGJ1?=
 =?utf-8?B?bWN2T1lzK2l4VkJya0RndTdJYUxCQURxMm1JNkRjUCtmUmNRMDFqWmNwZW5V?=
 =?utf-8?B?cGM2eU8zNHF5ZTEySHBFVFNRZERGZHJDQ1BJcjdUZm1IWXl1Z1BGOHBtaTFx?=
 =?utf-8?B?NndXQ1QxRzluOWRtR2d3OUpZTTFSS3VVZ2xJbXkzMkZWNUhBSERVbndScDNa?=
 =?utf-8?B?bmNEOW5KMGhQOGozQkJsQzl2dUVEa0libmlVSlVlbHhRdm5NY2NaRmNKUFJw?=
 =?utf-8?B?c3dYMDhoeEZsWklxamtMSW1aYnlsSFhHamZqbHM4RmxOOUpaa2t5NXhUZDVY?=
 =?utf-8?B?TFZ5ZVhnelhBQmUzRjRPbFoyYTJSSGQrdVV5Q3F0MzhuMzUrVXpoOFhJKzBp?=
 =?utf-8?B?M1cvYW5EcVhGYVg4U2g4dmp0QzJVYmhUdUVaOVVsS1JqWmNvWlFPd2xGY3Uy?=
 =?utf-8?B?c0I2a2dXY0hLTG85dWxtcklqamtYZ1orcytYQ0M5RkI0N3lhbEErUWZ5QVZl?=
 =?utf-8?B?d3EvSG9Va3ZNbzZlQlZ4UVpsdXhCU213d0xLTWIvVlAvTWdINjhGenJBN1RP?=
 =?utf-8?B?L1pyY1dlVi96VTdQZFh4WVRCRDZNRWtSSWFMVm8wemhtcUpUaFBXUXFZQWRt?=
 =?utf-8?B?cVRqR1N5eGxWR2Fja0RzbE9NYVFiYkl6QW1qRFgwL2hxeXAxY3l0citMSjdj?=
 =?utf-8?B?WXJTcWZ0andXZGU1cmoyWlhlcWM0ZGk1MHVZRnpPbGZHbjlQZ2N6dUJYaGpV?=
 =?utf-8?B?KytFdnA5T3Z0YS9ZMHlGV29QcmF3WXlGN1ZxYkVrYTR6U0ppZElkeDNaTEJx?=
 =?utf-8?B?ZGFKam5tdkZrSGFKdi9tSDMyaWdXc2p3YTZPOHZOZ1h5TVZrbDZ5MTFldXBD?=
 =?utf-8?B?UituN3RjZnp1dVgrOG5rNnpyMjVuZldtellsWE5rSUV2dzFtMUtxd2dMR00y?=
 =?utf-8?B?OW55TlNsZWU3dzA1UEE1UTNFSVh1aFp1RXJ4OU1XdEJPb29XWVVna3AvcXp4?=
 =?utf-8?B?THhwU1VNOVJKVlgveGluQmMwSmlBbTljdnBDUlNrZGh2bDd6YnV4eTZYOVZ2?=
 =?utf-8?B?Z01DdUxDVndGQWtBUWxEcFdEMlR2QTVvVk9UVzNvUVd0ODUwYm5OMGlWVjF5?=
 =?utf-8?B?bHV2YUpJbGc3SGY5OWdDVGY1Uy9rRXNRejFaT1BheGI1ZW9iRjZTZmR6SkFj?=
 =?utf-8?B?RDZnaEllYSsraTk2TjNnUEdudHIwOEtPYVpITG54NkI5VlZrZHR6dFEzUW5h?=
 =?utf-8?B?eXE5WThSWlV2Z2RObUp4RGt1SktndWJMcU5aVEF1eUM3Ti9kRlkzUVByMTds?=
 =?utf-8?B?WXZvVXhlc01KNUluejJobnI5OHMyMjJaMG52Q1B1TmVsd1lPNy9vSjc1aEl5?=
 =?utf-8?B?NUNQdjBqeDRIdFd1VFMrSjhXUk1ENmpGNXhHcXR2N0dNUUs4VXhtTVR0aEZj?=
 =?utf-8?B?VERvYWU2T3cyMUs2aFA3VUQrNkFUTXVQa2NNU3pZMk45TzNkd0d5RTg1VDRr?=
 =?utf-8?B?bm9ZRURkc1RhMXVwcitSYnh0RW9qQTlXWE1yTVNKbzJQeVVIMGdwbG0vTXRW?=
 =?utf-8?B?N1lHMzVRVlFXYnQ0RUFES0FoMTdCdHBHeTlnSHh1UDNxSEQ4dHZKSGxWWVZR?=
 =?utf-8?B?Vk16VyswQU1KU2orOUdEWG53NEpCQnQ2alhjcTYyWG9UaWNtS3dUM3YyM29v?=
 =?utf-8?B?SFZaNkdveXBReXZYeWJXQnZrZjZpRiswa3FEWEU2Q0VueTFKZmxxbWpZOGxL?=
 =?utf-8?B?Q3RQZlFVeTJwYUtUVldzbXBtRi9aMHFEZnNSWURzMGozeHN4NlJmVlFMTURp?=
 =?utf-8?B?YVJrWnNXdmNkM0MvekJTNjE2dk5tRG5iaStVaHRZQlVoNTB4d0ZVUkpERTVF?=
 =?utf-8?B?MGdZSFV5em9UR2J0WEFTWDlwNFltT25nWVpySktpZm5wTkFWRE4rTnVIa1lY?=
 =?utf-8?B?VUhhTU5ZY1QrNnZVMmI2V2MycDk5N3hIbkNlV1BGWUQ1bVVHSGZJZ3FjK3Yr?=
 =?utf-8?B?cVhwRERaenFTV21FL2prRXJIZTZITFRuWG85UUxvYjRHM0ZObVNOZ0k2Y1Ez?=
 =?utf-8?B?NmQ2VGNNMHlzei9VTERJamUyYkFnNW1JVnNhY0RPK1B5SDQxd3cvU3ZIbGNz?=
 =?utf-8?Q?+2N5kfJSIeSHhMmgD4zTpjI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b3RoRGowc1AwNTZYZTdJaDBjekQxcjFtSEVQN0lRbU5qVEhRdnREejltK0Ur?=
 =?utf-8?B?eGJ6SXZ3WEhpMlBWR0tSZTM5NFE4Q1hTUTlIbGhVWGRjL1hxampONXVUM2ky?=
 =?utf-8?B?OWtlUkdZWXUvdytvVDlhNTUrdVZzM09OTDJUUk9YZEZ6eFhkeGFMUUVQZU9r?=
 =?utf-8?B?QXVPeUxoOG9wTG5EMUU2WktaQllvenRzdU95Ti9uMGhwR3JiaVh2Z3hmU0E2?=
 =?utf-8?B?blhrbkJRUEV4SnUxdjNGbDJVNVRkUURQMnhKanhLUUVkY0JNYURZT2VYanht?=
 =?utf-8?B?aUU4b1diYzhJVHdKN2NoWUF6YWRiWHQwS04yQWk4R0VWNTNKdm4rSjYvZTli?=
 =?utf-8?B?N3QweC9JM003UHk4MjV2Y2hIMGMrNFNCcjQ5aWNWQUdTYlBtS2tuVnZ5Y3Fm?=
 =?utf-8?B?cXZMeWJaVDNJSVIvVVd3OEJlV0pCaGdjVEdBRi8xdktGamhZamNBZEdoemU3?=
 =?utf-8?B?TkRMekQyMk5ORCtXNlVQMnUvbnN4MFBLWjZFU256ZWpGdjYrRDlrQ3ZvWUc0?=
 =?utf-8?B?dlJDOEFiMmg3MVBVTXlhSzNSTzB0U2dkYzU4SDcrbURranRCQUcxS1UzM2pI?=
 =?utf-8?B?UGRLNE05Q0tQYmdVeWxVeUlXempjbDYrblRuQzRjMGpLd003bUVSWStpM1hY?=
 =?utf-8?B?bXdZOUdqTVl3L3FRbUpEVUtrcjdPbWtHSlNGMlA3QndQZGNMZ3FzZXdQbFdZ?=
 =?utf-8?B?Y0tZVzUvcnRTbm1nUXUvQm5kT212TGVUeXA1aEZTd3htK3ZhV2FzaTVvK0pD?=
 =?utf-8?B?aERFVkhpRGdzMDYvY0h1eFJpaFQ3ZW9FU0pFNHh4ckhqbGViT3VQZ3pxSVh1?=
 =?utf-8?B?NUs1TzZhT2NSeW1PZExiR1JLcUN4b01mZ25aQjd0N09JN2J5aXJqL3JBWXpW?=
 =?utf-8?B?eXhkWjhFdThPTEZsMEcxWUUzNHVJaXdIT3Nla0hvK1RsL3AybXdsUU5LdVRL?=
 =?utf-8?B?dHpRSmRKYzF5ZmQvMFRQblByNk0rYVE3Y1VwR242Qmc5bzhXVEhvOGxnUSs0?=
 =?utf-8?B?My8xdndzMmRFVnB3VzlkRWlCUzBwbDQ0Tnl5RWNGV3U0OTF2ZlppVWUwaitF?=
 =?utf-8?B?aE5HMURHcW9kZktxbkxwdTNTRWFtT0dXSFBieW9lSG1rSlJESzc1dHczeU5j?=
 =?utf-8?B?a2FCWlNFRFl4dThrTDBYTnl5UmJ4Sm1YM28rQ0FsSUlJbUI0bFNBTVFhelVL?=
 =?utf-8?B?cHNRNWRpU3dsSXk4V1NxcTVubXluZVpBVTlUZXRhYXdvbUsyRVNPcm9VRnN5?=
 =?utf-8?B?MVZ3M0tKMlhzakNvbXd2djVyZVE3SjBqeVRWaTUwNG9Ya3hSeXdhK1ZvRXg5?=
 =?utf-8?B?V3ovbXJYNGp3Wm00ZDFhcUxEWGo5Ynlud2dpb3A0c0MzU2hPV1RjN1hCbi84?=
 =?utf-8?B?YzlBZXRIMll2aGhWTmRyU1JYdWVYVWZhOEtlSFBOZE4xUW5renVCQnNWa2RZ?=
 =?utf-8?B?Y1N6S01DMmlGSzVvQWpjWHRMNFkyZTlHYnpxOHVNNTYxbno2VlZ0aE1WNmFl?=
 =?utf-8?B?Qk8xWFdVSlhPdWg3alQ3b01oNGhnL0YyR1JZdkZZTTJYWktpVjRFM3BLNHkv?=
 =?utf-8?B?N20vRFl6a3NjazJaZDRrWVBRb2M2MVVILy9lQTZUajJWd2NEcmZjZ3pCa2JN?=
 =?utf-8?B?NmVTQ3VsZTM4THBPYjRkVFZuTGJxSjUwaUhBVFFiWmp3WENwTXJvRDVyenZn?=
 =?utf-8?B?QVJrWXdiTU5HM2xxOUFHbUJxeGRsQUxUek91ODhlUXB2NjgrcFZ6cTdtUDM5?=
 =?utf-8?B?VmhBSjhidXNITXBuekFteFRFL3Q2UGkwb29wdzBWaHRkNlZFY1BGeWU2bHB4?=
 =?utf-8?B?ckxRRXFKQkgzTGlRa1JiRXdkQXYwTzNIV1RTNStncFE3Q212REpMdUZuZndY?=
 =?utf-8?B?WUNLRVlDc3p1bU5mK0wrbDE4a2VNM3Jrd1hoTDFzdjhvSkZ1clN6Tm5yZzJY?=
 =?utf-8?B?R09JM1FGa0JEZ3pxZ202aXhxOFgrUllKVDVPdmdyN254U2FOTHZNM2IyVzh2?=
 =?utf-8?B?MFNyK1Btb3lRdkZpS0EwMG5WNGdlV2dOOUcwVy9nUUQ5eXNDUlE2d25ic3lI?=
 =?utf-8?B?WCtIaFRrZW53aUZvRWJQUVpSOU5DYzVNcnBtMk91OXN4ZEJUY0hGZmZVOXFK?=
 =?utf-8?B?VVArN0V1MlNyTDE5S05TWVNrWFFlaDVVYmcxMUN5SFBlVlhzeGo0Wk9mOWVE?=
 =?utf-8?B?WTZndXJQbzg3OTBiWjJIVXViZlQyaXpmdG0rTjZQRUpMUG9aeFBTU2dXUElF?=
 =?utf-8?B?ZzZkQTJRZjdqSEZFQnRYNnNCbjJBMVE2bVVQSjlSTG5TUldDVWJpZmdHM3RH?=
 =?utf-8?B?QVhTdFZFY3VrNDkxTGIyQnQ2SGhPeDJseHkrM2Y5U0liUFM5ZkVJSUNHVlVJ?=
 =?utf-8?Q?NX98hOLR6Zt7TA1qsaHECic1bTvxBKuEgKAOd9EclfkuO?=
x-ms-exchange-antispam-messagedata-1: rojPK7EhjwN0xUx4nHCh9bllQ47P3sHQ6kY=
Content-Type: text/plain; charset="utf-8"
Content-ID: <989BD2C6AAAB21448E26AF65BAFAF143@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c01bb5ae-6643-4300-f6c0-08de5a49d23c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 06:37:03.9132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v+WxL6F8sB0J8RNAi8r4ix6FfzkjsIiVaQ+xliEckWwdSvVNq1mS0CIMdb9NoBehLAnlzeSL7t8rEKz/7HZsuK0B6CRPX/V6saApUMsNUQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7144
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 28A8F710F7
X-Rspamd-Action: no action

T24gRnJpLCAyMDI2LTAxLTIzIGF0IDEwOjQyICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDEyLzIzLzIwMjUgNDoyMSBQTSwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0K
PiA+IFdlIGFyZSBwbGFubmluZyB0byBtb3ZlIHVzaW5nIHRyYW5zIHB1c2ggbWVjaGFuaXNtIHRv
IHRyaWdnZXIgdGhlDQo+ID4gRnJhbWUNCj4gPiBDaGFuZ2UgZXZlbnQuIGluIHRoYXQgY2FzZSB3
ZSBjYW4ndCB3YWl0IFBTUiB0byBpZGxlIGJlZm9yZSBzZW5kDQo+ID4gcHVzaA0KPiA+IGhhcHBl
bnMuIER1ZSB0byB0aGlzIG1vdmUgd2FpdCBmb3IgaWRsZSB0byBiZSBkb25lIGFmdGVyIHBvc3Np
YmxlDQo+ID4gc2VuZCBwdXNoDQo+ID4gaXMgZG9uZS4NCj4gPiANCj4gPiBUaGlzIHNob3VsZCBi
ZSBvayBmb3IgRnJhbWUgQ2hhbmdlIGV2ZW50IHRyaWdnZXJlZCBieSByZWdpc3Rlcg0KPiA+IHdy
aXRlIGFzDQo+ID4gd2VsbC4gV2FpdCBmb3IgaWRsZSBpcyBuZWVkZWQgb25seSBmb3IgY29ybmVy
IGNhc2Ugd2hlcmUgUFNSIGlzDQo+ID4gdHJhbnNpdGlvbmluZyBpbnRvIERFRVBfU0xFRVAgd2hl
biBGcmFtZSBDaGFuZ2UgZXZlbnQgaXMgdHJpZ2dlcmVkLg0KPiA+IEl0IGp1c3QNCj4gPiBoYXMg
dG8gYmUgYmVmb3JlIHdhaXQgZm9yIHZibGFuay4gT3RoZXJ3aXNlIHdlIG1heSBoYXZlIHZibGFu
aw0KPiA+IGJlZm9yZSBQU1INCj4gPiBlbnRlcnMgREVFUF9TTEVFUCBhbmQgc3RpbGwgdXNpbmcg
b2xkIGZyYW1lIGJ1ZmZlcnMgZm9yIGZpcnN0IGZyYW1lDQo+ID4gYWZ0ZXINCj4gPiB3YWtlIHVw
Lg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgMTMgKysrKysrKysrKy0tLQ0KPiA+IMKgIDEgZmlsZSBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBpbmRleCBj
N2NhNGY1M2I4YjguLjFhY2E0ODAyYjdkNSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gQEAgLTczMzMsOSArNzMzMyw2IEBA
IHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19kc2JfZmluaXNoKHN0cnVjdA0KPiA+IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqDCoAkJaW50ZWxfcHNyX3RyaWdnZXJfZnJhbWVfY2hh
bmdlX2V2ZW50KG5ld19jcnRjX3N0YXQNCj4gPiBlLT5kc2JfY29tbWl0LA0KPiA+IMKgwqAJCQkJ
CQnCoMKgwqDCoCBzdGF0ZSwgY3J0Yyk7DQo+ID4gwqAgDQo+ID4gLQkJaW50ZWxfcHNyX3dhaXRf
Zm9yX2lkbGVfZHNiKG5ld19jcnRjX3N0YXRlLQ0KPiA+ID5kc2JfY29tbWl0LA0KPiA+IC0JCQkJ
CcKgwqDCoCBuZXdfY3J0Y19zdGF0ZSk7DQo+ID4gLQ0KPiA+IMKgwqAJCWlmIChuZXdfY3J0Y19z
dGF0ZS0+dXNlX2RzYikNCj4gPiDCoMKgCQkJaW50ZWxfZHNiX3ZibGFua19ldmFkZShzdGF0ZSwN
Cj4gPiBuZXdfY3J0Y19zdGF0ZS0+ZHNiX2NvbW1pdCk7DQo+ID4gwqAgDQo+ID4gQEAgLTczNzUs
NiArNzM3MiwxNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfZHNiX2ZpbmlzaChzdHJ1Y3QN
Cj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgIA0KPiA+IMKgwqAJCWludGVs
X3Zycl9zZW5kX3B1c2gobmV3X2NydGNfc3RhdGUtPmRzYl9jb21taXQsDQo+ID4gbmV3X2NydGNf
c3RhdGUpOw0KPiA+IMKgIA0KPiA+ICsJCS8qDQo+ID4gKwkJICogV2FpdCBmb3IgaWRsZSBpcyBu
ZWVkZWQgZm9yIGNvcm5lciBjYXNlIHdoZXJlDQo+ID4gUFNSIEhXDQo+ID4gKwkJICogaXMgdHJh
bnNpdGlvbmluZyBpbnRvIERFRVBfU0xFRVAvU1JERU5UX09GRg0KPiA+IHdoZW4NCj4gPiArCQkg
KiBuZXcgRnJhbWUgQ2hhbmdlIGV2ZW50IGNvbWVzIGluLiBJdCBpcyBvayB0byBkbw0KPiA+IGl0
DQo+ID4gKwkJICogaGVyZSBmb3IgYm90aCBGcmFtZSBDaGFuZ2UgbWVjYW5pc21zICh0cmFucw0K
PiA+IHB1c2gNCj4gPiArCQkgKiBhbmQgcmVnaXN0ZXIgd3JpdGUpLg0KPiA+ICsJCSAqLw0KPiA+
ICsJCWludGVsX3Bzcl93YWl0X2Zvcl9pZGxlX2RzYihuZXdfY3J0Y19zdGF0ZS0NCj4gPiA+ZHNi
X2NvbW1pdCwNCj4gPiArCQkJCQnCoMKgwqAgbmV3X2NydGNfc3RhdGUpOw0KPiA+ICsNCj4gDQo+
IElmIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHk6DQo+IA0KPiBGb3IgRml4ZWQgUlIgY2FzZToNCj4g
U3VwcG9zZSB3ZSBhcmUgaW4gUFNSOg0KPiBTa2lwX3dhaXRfZW4gaXMgc2V0Lg0KPiBUaGUgcG9y
dGlvbiBhcm91bmQgdGhlIFNlbmQgUHVzaCB3aWxsIGJlIGxpa2U6DQo+IA0KPiANCj4gLWRzYl93
YWl0X3ZibGFuayB3aWxsIG5vIGxvbmdlciB3YWl0IGZvciB0aGUgdW5kZWxheWVkIHZibGFuayAo
d2UgYXJlDQo+IGluIA0KPiBQU1IgYW5kIHNraXBfd2FpdF9lbiBpcyBzZXQpDQo+IC13ZSBzZW5k
IHB1c2ggLT4gdG8gdHJpZ2dlciBmcmFtZSBjaGFuZ2UgZXZlbnQgZm9yIFBTUiBIVy4NCj4gDQo+
IC1BZnRlciB0aGlzIFBTUiBIVyBpcyBzdXBwb3NlZCB0byByZWNlaXZlIHRoZSBldmVudCBhbmQg
bWF5IGJlIGluIA0KPiB0cmFuc2l0aW9uIHBlcmlvZCBzbyB3ZSB3YWl0IGZvciBpZGxlIGRzYi4o
d2hpY2ggaW50ZXJuYWxseSBtYWtlcw0KPiBzdXJlIA0KPiB0aGF0IHdlIGFyZSBvdXQgb2YgUFNS
KQ0KPiANCj4gLVdlIGFyZSBub3Qgc3VyZSB3aGV0aGVyIHdlIGFyZSBpbiBhY3RpdmUgb3IgaW4g
dmJsYW5rIHJlZ2lvbiBhdCB0aGlzDQo+IHBvaW50IG9mIHRpbWUgc28gd2Ugd2FudCB0byB1c2Ug
ZHNiX3dhaXRfdmJsYW5rLiBUaGUgc2tpcF93YWl0X2VuDQo+IHdpbGwgDQo+IG5vdyBub3QgY29t
ZSBpbiBwaWN0dXJlIHNpbmNlIHdlIGhhdmUgbWFkZSBzdXJlIHRoYXQgd2UgYXJlIG5vdCBpbg0K
PiBQU1IgDQo+IGluIHByZXZpb3VzIHN0ZXAuDQo+IA0KPiBUaGVuIG90aGVyIHN0ZXBzIHdpbGwg
YmUgc2ltaWxhciB0byB3aGF0IHdlIGhhdmUgYmVlbiBkb2luZy4NCj4gDQo+IElzIG15IHVuZGVy
c3RhbmRpbmcgY29ycmVjdD8NCj4gDQo+IFdoYXQgaGFwcGVucyB3aGVuIFBhbmVsIFJlcGxheSBp
cyBpbiBwaWN0dXJlLCBnaXZlbiB3ZSBjYW4gaGF2ZSBQUiANCj4gZW5hYmxlIHdpdGggVmFyaWFi
bGUgUmVmcmVzaCBSYXRlIHRpbWluZ3MuDQoNCkkgZG9uJ3Qga25vdyBob3cgaGF2aW5nIFZSUiBl
bmFibGVkIHdvdWxkIGltcGFjdCB0aGlzIHNlcXVlbmNlPyBzZW5kDQpwdXNoIHRyaWdnZXJzICJG
cmFtZSBDaGFuZ2UiIGV2ZW50IC0+IHBvc3NpYmxlIFBSIGFjdGl2ZSBpcyBleGl0ZWQgLT4NCndh
aXQgZm9yIHZibGFuayAtPiB3YWl0X2Zvcl9kZWxheWVkX3ZibGFuayAtPiBjaGVjayBwdXNoIGlz
IHNlbnQuDQoNCkRvIHlvdSBoYXZlIHNvbWV0aGluZyBzcGVjaWZpYyBpbiB5b3VyIG1pbmQ/DQoN
CkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gQW5raXQN
Cj4gDQo+ID4gwqDCoAkJLyoNCj4gPiDCoMKgCQkgKiBJbiBjYXNlIFBTUiB1c2VzIHRyYW5zIHB1
c2ggYXMgYSAiZnJhbWUgY2hhbmdlIg0KPiA+IGV2ZW50IGFuZA0KPiA+IMKgwqAJCSAqIFZSUiBp
cyBub3QgaW4gdXNlIHdlIG5lZWQgdG8gd2FpdCB2YmxhbmsuDQo+ID4gT3RoZXJ2aXNlIHdlIG1h
eQ0KDQo=
