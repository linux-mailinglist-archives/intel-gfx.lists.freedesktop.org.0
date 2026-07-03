Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rm4gOzzgR2qqgwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 18:15:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5147042F5
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 18:15:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MbHLLBoo;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9910710E631;
	Fri,  3 Jul 2026 16:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05A610E631;
 Fri,  3 Jul 2026 16:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783095352; x=1814631352;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EzHguerxNBd5D24TQnOsO8zOTH9SsdnWs27ZloDnI+Y=;
 b=MbHLLBoo+8QpyonAEvzt9n+58sK18KBAA9GmtLCNdEyESPdLUPMXNaYg
 UQcV8P9W2ogSKeV/Cbhd+3NXBy/kEaSU+QRyriP1kWoIwwdHm9nHjMVet
 z5HAjtseKF4tOcJuf4jTMgLS+PFnzjGfhc/n1kOGWG2VLywZnZYEeOSEe
 QtE7rGeAVLTbp1IPgGvB9VMCT+HW3lGj8qLSEEJXq/6Q15QGjjjtJg642
 ejtUR2R+E/n/PB09yT09QEa5fBLKQiICDhHjCKNcndzg11PGufrY6R1D9
 RxSj5MvczRPWFmw0v1hBGpfoBfi+Z7kFYG8QMKz0mipeNTwgucO2/otl/ Q==;
X-CSE-ConnectionGUID: 6T14BjfaRpObc/zxrBD98g==
X-CSE-MsgGUID: yWxTMMkjSN2E1QSB/6DrCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11836"; a="95226442"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="95226442"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 09:15:51 -0700
X-CSE-ConnectionGUID: kPUPLwQsSIaJ7vDkKPwjCw==
X-CSE-MsgGUID: OApjiDahQZ2bP2FwYUbopw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="246773660"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 09:15:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 3 Jul 2026 09:15:51 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 3 Jul 2026 09:15:51 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.43) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 3 Jul 2026 09:15:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uq5mWmx5h/tvg7Cnh0wjqSEnlr671MpWkqNI0Ld9H+5w8kB1j1hmr7UGVPfqN1Q+gPsLSHJBXstV6qOX6etpfelJMu2Fb+XL4iAkimVJWMiKo6BBIs9AV+57zYKzleKMkYKdM9GGvx4oLoxiALRjQ8VDLU9o2DsrZe15ViZ6qCqlqghoq6c9UwPiRxmACQUuRZ7MTjH7IROYnYK4FlS/9+O5qIPNqOonhdijbKg7P7ZitwJdZ1PFu2PuhuiVuOm078+tsKIWcFC0+0NF4wBi41z90zxchqp96XWZ11JiNpYnuAalEkcnW5+MXUG+414qwgBeccYzdu/HuxUBJrBcxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EzHguerxNBd5D24TQnOsO8zOTH9SsdnWs27ZloDnI+Y=;
 b=w6u81j1HWvzDeq8qHJMWZiNTpeYjvfQhpJMAKruMDUOJtkxoYalbPPxo5lGQyCi6M3uOathcFNdXfYurlKvj/MybLmG7aAyAClTJNK9NZvKDqhxc1ocou0iYxFaWktPOjENceLvI6ppbbhkT7CBR43burvChGiB2f5UUA0CE8rptwELan8P4ef3YErjKQefiEq452fB8ZJbc7oib3RkKUVNppVk49vW2iuSJBVcOQE7KLN4UcB1Oz2byh/LpzyT5PCTc0XTnGU43KFYRhB41Rgphil0sNPvxb6lhnajU6iJSV/6bswN1lUrRJBEVm5U2gxPd8qstHnqAqTe0PpokEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by CH0PR11MB8088.namprd11.prod.outlook.com (2603:10b6:610:184::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Fri, 3 Jul
 2026 16:15:42 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%3]) with mapi id 15.21.0181.008; Fri, 3 Jul 2026
 16:15:42 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?utf-8?B?SnVoYS1QZWtrYSBIZWlra2lsw6Q=?= <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] [RFC]: drm/i915/display: Fix NV12 ceiling division for
 bigjoiner case
Thread-Topic: [PATCH] [RFC]: drm/i915/display: Fix NV12 ceiling division for
 bigjoiner case
Thread-Index: AQHc/0/c4aKoeW67b0GDEiyXb4pIYrZb51CAgAAoP3A=
Date: Fri, 3 Jul 2026 16:15:42 +0000
Message-ID: <PH7PR11MB825216B25018B09F3D5D554789F42@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260618181837.687302-1-vidya.srinivas@intel.com>
 <26ed323d-c0f5-42d4-b736-de7efcf893d7@gmail.com>
In-Reply-To: <26ed323d-c0f5-42d4-b736-de7efcf893d7@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|CH0PR11MB8088:EE_
x-ms-office365-filtering-correlation-id: 90c2726f-f51d-4158-c362-08ded91e545e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|22082099003|18002099003|11063799006|4143699003|38070700021|6133799003|56012099006;
x-microsoft-antispam-message-info: MQ88a7rqM38lOucRwnt1yYXPD38nQ0K8nJY0B1euEt2BRKrrey6ye786SW2TPjdgMopVdGd+imFr2aQu72JTwtfe12O0cbjsptVAFLzicj0aUB6vKR6/iT4OcHEPpU5ufH9nv6W379t5LlAQ9vklDVqWltqr7/8MsQboA9IcsYWGDtUhyytq/xZB2pfb2l1ulxYytvNft1bGrSmD6mpilRbMoQK9HQhDD86CK8dms0Nik7T51zTzSnfrpR0poB1hW76zDeGdU4RrPYE7rRa29s1Ii6qm+o/N0Fg7voo3auZBnKCm9Xb5O49oFga+MygN1c+moPIS20/AzxH0NZT4ajDe7HxRlp0kE/1X5rmpftD4rTiLQkcdxCzunHuSd3buhEmyUbsDFuGrfnx4H/V7qyCZY8GHV5Nsd9K5WrE/PlmDru0Bk9CE3GPZJrYUlJw2ScT1GCZEbuvS3BX+YHznK0GYvjw5kPkSJvrdYaSI+Kl+CmIuachTLKwjEpxwyqx+ek4EivhWbTW50BtgvkteOQ8zSYQDEd7Ef0CFALfGURomyXbci0d5m1hjpcp9dqL83kyR2n+N58Oxgv5JWsAafKdbhnNdWXo2p6d0zGM17XqEFtdvfkjv79oavilTFQ6inB4JwYPW9T7KRN+HS/g9VkdHdIQnCNFIZQcOsosEEHn7oz0huSSOAQ/upXphZHFMDgalcy10bvMYceHjwDKbESE5rKFNv01VGdb2DL1kP/Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(22082099003)(18002099003)(11063799006)(4143699003)(38070700021)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWhxejdDY3VpUDkyMDdFVUhITzBBSWFtM1VyQUZSd2x6eGN6OUtpR1UyUFZ1?=
 =?utf-8?B?cUlSS3g0SWdWWGJnZ0JMZC9XMHBwZzNUZ3BxN01ucTRxM04xM1FRQ2R1WnFU?=
 =?utf-8?B?QURtVkpIZjc2RWVXQjVITXB3aGhsN3NoVjYvVGc3aHY3MXRsZzVpS2htd3Vu?=
 =?utf-8?B?QXpXN3dHOHdlL2Ywa0ZIM0VhQkkxcWliUEp2WDUwZWc5REN5MFBEdENibGlu?=
 =?utf-8?B?VmhxYUpoOVJpdkhXMWZhOFFabWYwTWZ1bCtCQWppZy9MTWprejdYOU53MUYz?=
 =?utf-8?B?Z2dnRzI2NE91cUJybkl3NFFpWmlNTWRuWE83bW5laDNyNGEzS2FTMFNRa3Ax?=
 =?utf-8?B?YmdaMCtSVFYrcGl3UldNcnBWMjd1SmZKV2F2ZFBCL2IvSEh3WHBwUzAvRTlZ?=
 =?utf-8?B?eUh4cXljSGdxU0d5eHNMYUxLWGtMNFVoTFlUM2Fyci9Tc2E1SUF1RGpHdkNJ?=
 =?utf-8?B?a1UxU0l3djNDcFdTTEhhU0NGRmNwSHVCNHJGeEJQNlFKeSt1L1lXUzFPWFlF?=
 =?utf-8?B?SnduUXhRaW5rcCtOdFpVc0lnTHhObUZnTFVzYVVLOGlRYk1yVkpISktMSVFZ?=
 =?utf-8?B?dS9OSkpHS2x2c2hnWjJJWmJZUDZRRU9XYUVLdVRlQnFYbFB5OFFzV1FlK1lU?=
 =?utf-8?B?WUxVQUppUjlwUHp5NWhVQktSU1BKZmF1UzJCVktvcGxvdlFuWE9NT1hzVk8w?=
 =?utf-8?B?V2kxU1hmcnA2NlBPMVo5L2twSzJrYjZJTXk2Q1dTMlJLTjkySTIyRHRwcXNj?=
 =?utf-8?B?YmVua0YyanNsa1pYb0ZjM2VOUkp3WVNvRkJya1l5KytyU1pISlNySmNFeFNt?=
 =?utf-8?B?NFNPOXg4d1lBenA0UFdWbHZQYTVjQ0pTMWNsTFZHK1BYUVluc3g4WDRXZmlY?=
 =?utf-8?B?YngzN2FCeGJVT2p3ckZtUHk2bTFGNWJFSEJjU0M1ZVR4bGxZVE1vdkt0Ni9O?=
 =?utf-8?B?L1pqWGNGdEEweURqdFpGYUVWR2VkOTRudDF0c25UNDhqaUdUYXJ1RGEvOFFG?=
 =?utf-8?B?ZnAySm8va09MN09qUVpGeG4rODJyM3N6U2h3OHprSlAzRUNrUlEveUxXTTJk?=
 =?utf-8?B?bVQ5OUhKUnBqWUZyenhMN0RoNDlrbnVpV3JDM05LKys4c2NERUVjcFQrVGFw?=
 =?utf-8?B?VU01QUxMZk9WcDZobWFxUUhIVjlLcC84SGpKQTA4Uk1lMVpxa0VBc1RUc1Zs?=
 =?utf-8?B?R015WjVlZFNpYU81VnZldVUxZG9aL2FXSzZkMUlIR3ByaGxNN1FpRUFTR1Vw?=
 =?utf-8?B?R2t6MnZrSmdFUGVvS24xbDVIMnBWOEpyYTBNVDZyME5UcXVGejVOYWwreWEy?=
 =?utf-8?B?WU11WUFBZlVXT3ZyR2R5NjJaNHFzYkhGeVZmeGhuMThkc3J5SzYyaUExczlD?=
 =?utf-8?B?RkJtYURnS1RoZXFqeU5WQ2pNa0Z0dGUyZDZxTXE5Q1ZBYmNXZE93dVhFRVVN?=
 =?utf-8?B?YVhQQytxZzU2QXNXYW50aTQ1SXIzWk8wRXlNSVhra3JybmdlbEU5S3pmVjJ4?=
 =?utf-8?B?K0w4ZDZ1bm1DS01udzI3cS9ad3J2RmlzN2UzSWZOdVJWWVlTYVlkRmpkU0RD?=
 =?utf-8?B?UTgwODV2OGRPQXJxWENVaGxKNENsdGRLRFJkcXZ2Q1EzSHYxQXJqdDNBcmtO?=
 =?utf-8?B?RmZ2bjZEMmp5TXVMQTlqdjJianNLZE9qeExJR0pFb0wwajZzSko0M2dEazJ1?=
 =?utf-8?B?V1ErdVVRRmhJSkJnZ3dESkdLV2FKTXBYQ2tKVWozS2YyRCtNUFd6OE02cnZV?=
 =?utf-8?B?YXlyK2xvSndXaG8zU05JOW5rQUtCK1RvVDhpWk0wNHZUcStiS0V2Wm9mNXJS?=
 =?utf-8?B?Nm5reFlLRlJMdStva1hENkVjeDFoMkJhYmlrbHhOc3ZFeHBYSlpobmZ0L0t0?=
 =?utf-8?B?VC9kUWt0cCtFN0F4K2p2MDUxR3pZL2twRnZZWng0RUtrdVlrZXNrdW85U0hp?=
 =?utf-8?B?UmJ1MEgvYWxiREdZRWZ4UDN4cGJMc3BRbXp4UWR3WWhSN3ZPQU5iRjBoQ05N?=
 =?utf-8?B?eHhaV0N5YnViWElSbE5NQTk3aFFWQU1BSnMwb2tBb0VCRjhKa2NiOXlFNmtH?=
 =?utf-8?B?OHpJN29wZjIxTFNwY3RWT2ZlbkkrNlFFdzdZcjJRa3lIM2V0Q1NVNk8zVDRL?=
 =?utf-8?B?Y1dpVnc2SU9ieWJUbUNGd2pFdmlNenllQnFQYWJUa0VXUFhNcmszSFBhakI1?=
 =?utf-8?B?SE5pUUwrVUpLd3hORy9kSDBKbE14S25td2NxNjBEeS81ZXI4MEIxZE03bWRh?=
 =?utf-8?B?TnJ6bkJqTG1oQVorY2xkbjBmWHNEV1N0b01KcVVUM3dlU3QvcTZTOHE2WVpX?=
 =?utf-8?B?aGIvbjJXUDBmNVJ1V3Y0YjFoQ2FJQkJwOFFkSm9Rb1VtVURVcCtZUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LcIGE6b7fernDzL/NAWPv/G/Yu9wGQZcCpb8yX+phqrOime+KHGbXn74LtLyb4m8KgLs3PvwqR/fDP2C56oqRYHpRIXoYuXIBqJzSeNPO7ekZHum7kpOQJk1kcB7OK7XoRPHa7Tp2Gxx1KOsMGDKmtP2/aIXCkr3TFs+yroJKfWCWsDMCMiGN14aX72jLq9scpflQrlFIFcRJp925fAB5d+4V3jbFuq9p31RYFo9Pp4Sxzd1HFfA+9S+uPgWQzKwS/hP2zcQRdMJSJZulPUJspBxjnGkIi6Y6xQveMOxUjcVMcwusE6kSM+CT73Vx1ZKDR6FHwJY8X55+W13dE19Cg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c2726f-f51d-4158-c362-08ded91e545e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2026 16:15:42.0570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YaNXaR+vsB2xrGk7TsbO1/1/yvlOaImm7yUWu/qt9jWk83rjqe//JE/Tg6JwnrwMCLzutJLh8a0nW9nb/K/XRNE/A6LxOt35g9S+XUAkUHA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8088
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E5147042F5

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSnVoYS1QZWtrYSBIZWlr
a2lsw6QgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+DQo+IFNlbnQ6IDAzIEp1bHkgMjAy
NiAxOToyMQ0KPiBUbzogU3Jpbml2YXMsIFZpZHlhIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+
OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gW1JGQ106IGRybS9pOTE1L2Rp
c3BsYXk6IEZpeCBOVjEyIGNlaWxpbmcgZGl2aXNpb24gZm9yDQo+IGJpZ2pvaW5lciBjYXNlDQo+
IA0KPiBIaSBWaWR5YSwNCj4gDQo+IGFwb2xvZ2llcyBmb3IgdGhlIGRlbGF5ZWQgcmVwbHkuIEkg
dHJpZWQgdG8gZG8gdGhlIG1hdGggYW5kIHNlZW1zIEkgZ290IGNvcnJlY3QNCj4gbnVtYmVycyBh
cyBleHBlY3RlZCB3aGF0IHlvdSBzYXkgYmVsb3cuIEkgY2FuJ3QgdGVzdCB0aGlzIGFueXdoZXJl
IGJ1dCBpdA0KPiBzZWVtcyBjb3JyZWN0IG9uIGNvZGUgYW5kIGlkZWEgbGV2ZWwuDQo+IA0KPiBS
ZXZpZXdlZC1ieTogSnVoYS1QZWtrYSBIZWlra2lsYSA8anVoYXBla2thLmhlaWtraWxhQGdtYWls
LmNvbT4NCg0KSGVsbG8gSnVoYQ0KVGhhbmsgeW91IHZlcnkgbXVjaC4NCg0KUmVnYXJkcw0KVmlk
eWENCg0KPiANCj4gT24gMTgvMDYvMjAyNiAyMS4xOCwgVmlkeWEgU3Jpbml2YXMgd3JvdGU6DQo+
ID4gQ29tbWl0IDE2ZGY0Y2M2M2M1OCAoImRybS9pOTE1L2Rpc3BsYXk6IFVzZSBjZWlsaW5nIGRp
dmlzaW9uIGZvciBOVjEyDQo+ID4gVVYgc3VyZmFjZSBvZmZzZXQgY2FsY3VsYXRpb24iKSBjb21w
dXRlcyB0aGUgVVYgKGNocm9tYSkgc3VyZmFjZQ0KPiA+IHN0YXJ0L3NpemUgYXMgY2VpbGluZyho
YWxmIG9mIFkgcGxhbmUgc3RhcnQvc2l6ZSkgZGlyZWN0bHkgZnJvbSB0aGUNCj4gPiBVMTYuMTYg
Zml4ZWQtcG9pbnQgc291cmNlIHJlY3RhbmdsZToNCj4gPg0KPiA+ICAgICAgICAgIHggPSBmcF8x
Nl8xNl90b19pbnRfY2VpbChmcF8xNl8xNl9kaXYyKHNyYy54MSkpOw0KPiA+DQo+ID4gRm9yIGEg
c2luZ2xlIHBpcGUgdGhlIHNvdXJjZSBjb29yZGluYXRlcyBhcmUgaW50ZWdlcnMsIHNvIHRoaXMg
aXMNCj4gPiBjb3JyZWN0Lg0KPiA+IChVViBzdGFydCA9IGNlaWxpbmcoaGFsZiBvZiBZIHBsYW5l
IHN0YXJ0KSkuDQo+ID4NCj4gPiBXaXRoIGJpZ2pvaW5lciArIGEgcGxhbmUgc2NhbGVyIHRoZSBw
aWN0dXJlIGNoYW5nZXMuIFRoZSBwaXBlIGJvdW5kYXJ5DQo+ID4gaXMgYSBmaXhlZCBpbnRlZ2Vy
IGRlc3RpbmF0aW9uIHBpeGVsLCBidXQgdGhlIHBsYW5lJ3MgcG9zaXRpb24gYW5kIHRoZQ0KPiA+
IHNjYWxlciByYXRpbyBhcmUgYXJiaXRyYXJ5LCBzbyBkcm1fcmVjdF9jbGlwX3NjYWxlZCgpIG1h
cHMgdGhlIHNlYW0NCj4gPiBiYWNrIHRvIGEgKmZyYWN0aW9uYWwqIHBlci1waXBlIHNvdXJjZS4g
Rm9yIGEgMTI4MC0+MjQwNyB1cHNjYWxlZCBOVjEyDQo+ID4gcGxhbmUgY3Jvc3NpbmcgdGhlIHNl
YW06DQo+ID4NCj4gPiAgICAgICAgICBtYXN0ZXIgc3JjOiB3aWR0aCA9IDEyMDQgKiAxMjgwLzI0
MDcgPSA2NDAuMjY1ODk5LCB4MSA9IDANCj4gPiAgICAgICAgICBqb2luZXIgc3JjOiB3aWR0aCA9
IDEyMDMgKiAxMjgwLzI0MDcgPSA2MzkuNzM0MTE1LCB4MSA9DQo+ID4gNjQwLjI2NTg4NA0KPiA+
DQo+ID4gVGhlIGx1bWEgcGF0aCBmbG9vcnMgdGhpcyB0byBhbiBpbnRlZ2VyIChzcmMueDEgPj4g
MTYgPSA2NDApLCBidXQgdGhlDQo+ID4gVVYgcGF0aCB0YWtlcyBjZWlsaW5nKDY0MC4yNjU4ODQg
LyAyKSA9IGNlaWwoMzIwLjEzKSA9IDMyMS4gVGhlIFkNCj4gPiBwbGFuZSB0aGVuIHN0YXJ0cyBh
dCBjb2x1bW4gNjQwIHdoaWxlIHRoZSBVViBwbGFuZSBzdGFydHMgYXQgMzIxKjIgPQ0KPiA+IDY0
MiwgcHVzaGluZyB0aGUgY2hyb21hIHJlYWQgb25lIGNvbHVtbiBwYXN0IHRoZSA2NDAtd2lkZSBj
aHJvbWENCj4gPiBzdXJmYWNlIG9uIHRoZSBqb2luZXIgc2Vjb25kYXJ5Og0KPiA+DQo+ID4gICAg
ICAgICAgW0NSVEM6MzgyOnBpcGUgQ10gUExBTkUgQVRTIGZhdWx0DQo+ID4gICAgICAgICAgW0NS
VEM6MzgyOnBpcGUgQ11bUExBTkU6MjY3OnBsYW5lIDFDXSBmYXVsdCAoQ1RMPTB4ODEwMDk0MDAs
DQo+ID4gLi4uKQ0KPiA+DQo+ID4gVGhlIHNwZWMgIlkgcGxhbmUgc3RhcnQiIGlzIHRoZSBpbnRl
Z2VyIHBpeGVsIHRoZSBsdW1hIHN1cmZhY2UNCj4gPiBhY3R1YWxseSBwcm9ncmFtcyAoNjQwKSwg
bm90IHRoZSBwcmUtZmxvb3IgZml4ZWQtcG9pbnQgdmFsdWUgKDY0MC4yNykuDQo+ID4gQ29udmVy
dCB0aGUgWSBwbGFuZSBzdGFydC9zaXplIHRvIGludGVnZXIgZmlyc3QgLSBtYXRjaGluZw0KPiA+
IHNrbF9jaGVja19tYWluX3N1cmZhY2UoKQ0KPiA+IC0gYW5kIHRoZW4gYXBwbHkgdGhlIGNlaWxp
bmcuIFRoaXMgaXMgYSBuby1vcCBmb3IgdGhlIGludGVnZXINCj4gPiAobm9uLWpvaW5lcikgY2Fz
ZSBhbmQgeWllbGRzIHRoZSBjb3JyZWN0LCBpbi1ib3VuZHMgY2hyb21hIG9mZnNldCBmb3INCj4g
PiB0aGUgZnJhY3Rpb25hbCBqb2luZXIgc2VhbToNCj4gPg0KPiA+ICAgICAgICAgICAgICAgICAg
ICAgICBiZWZvcmUgZml4ICAgICAgYWZ0ZXIgZml4DQo+ID4gICAgICAgICAgbWFzdGVyIDFCOiAg
IHg9MCAgdz0zMjEgICAgICB4PTAgICB3PTMyMCAgIC0+IFswLCAzMjApDQo+ID4gICAgICAgICAg
c2xhdmUgIDFDOiAgIHg9MzIxIHc9MzIwICAgICB4PTMyMCB3PTMyMCAgIC0+IFszMjAsIDY0MCkN
Cj4gPg0KPiA+IFRoZSB0d28gaGFsdmVzIG5vdyB0aWxlIHRoZSA2NDAtd2lkZSBjaHJvbWEgcGxh
bmUgZXhhY3RseSBhbmQgdGhlIEFUUw0KPiA+IGZhdWx0IGlzIGdvbmUuDQo+ID4NCj4gPiBBc3Np
c3RlZC1ieTogR2l0SHViLUNvcGlsb3Q6Q2xhdWRlLU9wdXMtNC44DQo+ID4gRml4ZXM6IDE2ZGY0
Y2M2M2M1OCAoImRybS9pOTE1L2Rpc3BsYXk6IFVzZSBjZWlsaW5nIGRpdmlzaW9uIGZvciBOVjEy
DQo+ID4gVVYgc3VyZmFjZSBvZmZzZXQgY2FsY3VsYXRpb24iKQ0KPiA+IFNpZ25lZC1vZmYtYnk6
IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4g
ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgICAgfCAzMyArKysr
KysrKy0tLS0tLS0tLS0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwg
MjAgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ID4gaW5kZXggYWQ0YmZmZjY5MDNk
Li4xNjRiN2Q2MWM5YTMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+IEBAIC0yMTI2LDE5ICsyMTI2LDYg
QEAgc3RhdGljIGludCBza2xfY2hlY2tfbWFpbl9zdXJmYWNlKHN0cnVjdA0KPiBpbnRlbF9wbGFu
ZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+ID4gICAJcmV0dXJuIDA7DQo+ID4gICB9DQo+ID4NCj4g
PiAtDQo+ID4gLS8qIERpdmlkZSBhIFUxNi4xNiBmaXhlZC1wb2ludCB2YWx1ZSBieSAyLCBzdGF5
aW5nIGluIGZpeGVkLXBvaW50DQo+ID4gZG9tYWluICovIC1zdGF0aWMgaW5saW5lIHUzMiBmcF8x
Nl8xNl9kaXYyKHUzMiBmcCkgLXsNCj4gPiAtCXJldHVybiBmcCA+PiAxOw0KPiA+IC19DQo+ID4g
LQ0KPiA+IC0vKiBDb252ZXJ0IGEgVTE2LjE2IGZpeGVkLXBvaW50IHZhbHVlIHRvIGludGVnZXIs
IHJvdW5kaW5nIHVwICovDQo+ID4gLXN0YXRpYyBpbmxpbmUgaW50IGZwXzE2XzE2X3RvX2ludF9j
ZWlsKHUzMiBmcCkgLXsNCj4gPiAtCXJldHVybiBESVZfUk9VTkRfVVAoZnAsIDEgPDwgMTYpOw0K
PiA+IC19DQo+ID4gLQ0KPiA+ICAgc3RhdGljIGludCBza2xfY2hlY2tfbnYxMl9hdXhfc3VyZmFj
ZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKnBsYW5lX3N0YXRlKQ0KPiA+ICAgew0KPiA+
ICAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShwbGFu
ZV9zdGF0ZSk7IEBADQo+ID4gLTIxNTQsMTQgKzIxNDEsMjAgQEAgc3RhdGljIGludCBza2xfY2hl
Y2tfbnYxMl9hdXhfc3VyZmFjZShzdHJ1Y3QNCj4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0
YXRlKQ0KPiA+ICAgCWludCBtYXhfaGVpZ2h0ID0gaW50ZWxfcGxhbmVfbWF4X2hlaWdodChwbGFu
ZSwgZmIsIHV2X3BsYW5lLA0KPiA+IHJvdGF0aW9uKTsNCj4gPg0KPiA+ICAgCS8qDQo+ID4gLQkg
KiBMTkwrIFVWIHN1cmZhY2Ugc3RhcnQvc2l6ZSA9DQo+ID4gLQkgKiBjZWlsaW5nKGhhbGYgb2Yg
WSBwbGFuZSBzdGFydC9zaXplKS4gVXNlIGNlaWxpbmcgZGl2aXNpb24NCj4gPiAtCSAqIHVuY29u
ZGl0aW9uYWxseTsgaXQgaXMgYSBuby1vcCBmb3IgZXZlbiB2YWx1ZXMuDQo+ID4gKwkgKiBVViAo
Y2hyb21hKSBzdGFydC9zaXplID0gY2VpbGluZyhoYWxmIG9mIHRoZSAqaW50ZWdlciogWSBwbGFu
ZQ0KPiA+ICsJICogc3RhcnQvc2l6ZSksIGkuZS4gdGhlIHZhbHVlIHRoZSBsdW1hIHN1cmZhY2Ug
cHJvZ3JhbXMgKHNyYyA+PiAxNiksDQo+ID4gKwkgKiBub3QgdGhlIHJhdyBVMTYuMTYuIEEgYmln
am9pbmVyIHNlYW0gbWFwcGVkIHRocm91Z2ggdGhlIHNjYWxlcg0KPiBjYW4NCj4gPiArCSAqIGdp
dmUgYSBmcmFjdGlvbmFsIGx1bWEgc3JjOyBjZWlsaW5nIHRoYXQgZGlyZWN0bHkgd291bGQgcm91
bmQgdGhlDQo+ID4gKwkgKiBjaHJvbWEgb25lIGNvbHVtbiB0b28gZmFyIGFuZCByZWFkIHBhc3Qg
dGhlIGNocm9tYSBzdXJmYWNlLg0KPiA+ICAgCSAqLw0KPiA+IC0JaW50IHggPSBmcF8xNl8xNl90
b19pbnRfY2VpbChmcF8xNl8xNl9kaXYyKHBsYW5lX3N0YXRlLQ0KPiA+dWFwaS5zcmMueDEpKTsN
Cj4gPiAtCWludCB5ID0gZnBfMTZfMTZfdG9faW50X2NlaWwoZnBfMTZfMTZfZGl2MihwbGFuZV9z
dGF0ZS0NCj4gPnVhcGkuc3JjLnkxKSk7DQo+ID4gLQlpbnQgdyA9DQo+IGZwXzE2XzE2X3RvX2lu
dF9jZWlsKGZwXzE2XzE2X2RpdjIoZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLQ0KPiA+dWFw
aS5zcmMpKSk7DQo+ID4gLQlpbnQgaCA9DQo+IGZwXzE2XzE2X3RvX2ludF9jZWlsKGZwXzE2XzE2
X2RpdjIoZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0NCj4gPnVhcGkuc3JjKSkpOw0KPiA+
ICsJaW50IGx1bWFfeCA9IHBsYW5lX3N0YXRlLT51YXBpLnNyYy54MSA+PiAxNjsNCj4gPiArCWlu
dCBsdW1hX3kgPSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMueTEgPj4gMTY7DQo+ID4gKwlpbnQgbHVt
YV93ID0gZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTY7DQo+ID4g
KwlpbnQgbHVtYV9oID0gZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+
IDE2Ow0KPiA+ICsJaW50IHggPSBESVZfUk9VTkRfVVAobHVtYV94LCAyKTsNCj4gPiArCWludCB5
ID0gRElWX1JPVU5EX1VQKGx1bWFfeSwgMik7DQo+ID4gKwlpbnQgdyA9IERJVl9ST1VORF9VUChs
dW1hX3ggKyBsdW1hX3csIDIpIC0geDsNCj4gPiArCWludCBoID0gRElWX1JPVU5EX1VQKGx1bWFf
eSArIGx1bWFfaCwgMikgLSB5Ow0KPiA+ICAgCXUzMiBvZmZzZXQ7DQo+ID4NCj4gPiAgIAkvKiBG
SVhNRSBub3QgcXVpdGUgc3VyZSBob3cvaWYgdGhlc2UgYXBwbHkgdG8gdGhlIGNocm9tYSBwbGFu
ZSAqLw0KDQo=
