Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A45B071E3
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 11:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39BB910E76D;
	Wed, 16 Jul 2025 09:37:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dSUjGffG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8AA010E75B
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 09:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752658645; x=1784194645;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=76ae803wvoEIrNNHOjGik9UJjBmXmn6yDoajx7joz9k=;
 b=dSUjGffG5DZ/bRuBKiPuS4pROx2YY/330BrgnxGpBUJqX5TKPVjHd2uH
 Tl3ADJuHWBLOgSKkdc/bWvKjEfudNG8Pk51OApFkaxUUb8PfTQd1QWYRF
 guq1jgeh5oxb2Ew0W5kqgltSBVCv4qrN92Im75c0+muCxRpAb47pWShNr
 E/Xl0xL4jqfzrK5M+MbrOEILTJTX7DnUZDRdt33hi/VrThGIJC4wCA4mM
 eheyjPlucBfUUfg9YzeTePAYMCjsPuzXA/wO460OOEsLPNq9yD/j3LUOS
 vsIpWEUMIlRhvMFGn32pnV3Pl0zeb9NIWznLaTaSUMRvGYwaGJXcamrWj g==;
X-CSE-ConnectionGUID: 4y3L+YWcSsOkmnaEHZskYw==
X-CSE-MsgGUID: J6+KcvJ3QpeKcmT19N/2HA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="54110533"
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="54110533"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 02:37:25 -0700
X-CSE-ConnectionGUID: +DVxiYndSQKN5Dh9qx8fXQ==
X-CSE-MsgGUID: Hpm1bHOHR4qfYP2xyzs+yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="157950102"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 02:37:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 02:37:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 02:37:24 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.49)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 02:37:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vUBnrVlRtBsl+ovmF3xqChFw3TmqMZQm4lVBplXaeJmz4l0b+EFAF8wOwbW0p3fmne4BdPKdz4FobjDfxEYNX7Ch2ui1egQxl4nrRp/n/Y3gTbm9CwLCJ6B9wKhkLCeFo+ulWCzosOgxpjJrrMlmoAw0F7XC6P1suxQCSyzPSYQd5oI16tJ1FhP6rQGHLo2aB5Qdjsdd07UwzuVSDooH5XSwF57lA51pGkTKpRtK0DnZQMRLxV1Or61vuRM+ULZaAHK1vlNSW8Fo5ygWTSaUR9eIEsVpoLWBkrin48ww4oIcInOseazQAbGs/MQz35sa9nPRRhmyvHPdejwv4wZ/9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kssvhJl4qf1vkTnT/x9nfM/Jx9Ii/VtvY4T8mCf/w3g=;
 b=GUKYRwXGdFaCqxsK/WjJkiY3PKaBjZWnAunzRf5nUXDBgu1Z+hrWYriWNVkiakLIkTaeKLwnWZxGX6zLxAR+xmhXawjvecTrFuRWfsEYsCCX8oW8sADjiaR/aOU3d3IuTbtTfwMsVoprPvxOrlyx4RHeeLDATZ7rquwx6UZkpXlMit6iplGNZE+t7XljuwHkqu4M7W0KjKMHHQLJF2lRCiTzJyaZh8uumblP7Zh2L7m1GFfS0qyd76MP3Zf1LYK6cVBQJq76ffiBnoG58q7x6E10/hKpnOnSCXleOKqAx5xwE5/2ySXM5TckzDaEEElQHYlibmtlLYbwEQ4VVcAjSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by BL4PR11MB8869.namprd11.prod.outlook.com (2603:10b6:208:5a8::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Wed, 16 Jul
 2025 09:37:15 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Wed, 16 Jul 2025
 09:37:15 +0000
Date: Wed, 16 Jul 2025 09:37:09 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH 1/3] drm/i915: Refactor eb_relocate_vma for clarity
Message-ID: <20250716093645.432689-2-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: VE1PR03CA0010.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::22) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|BL4PR11MB8869:EE_
X-MS-Office365-Filtering-Correlation-Id: b76826dc-d611-45a3-86df-08ddc44c5999
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cGRQN2RjbmNGeTZvR2gwc0VHWWlPeE4rdHJTb0RuMFJRSHZkbERwbm1ZVzB0?=
 =?utf-8?B?dnAxVXExRHk4dmxCNmdjcVpKL3ZwYmQweWpwN2tzcTRPUENZZ2k1djNoUFM4?=
 =?utf-8?B?dVpWNkpuVjdkZW5NbHV2dGdHa2IyY2ZIZ1lwamxZd1JzSEZ2NTIvazVManE3?=
 =?utf-8?B?R0tOZ09hWUpjUUpIVkpIdmZJcVMrSG10QmNOb3JSRkJoWktJcnlXZ0pzbHBi?=
 =?utf-8?B?Y243dm9YamN0andTcEIvOEx3YVIrczlIc3plUXNWSTJtNFpYWEhGQyt6THg1?=
 =?utf-8?B?WjdwY0p6a1Nzd1FUNjYyWlFuejZqY1pweFo2Z2NZbFMvMEhVQmVPdkRGanp5?=
 =?utf-8?B?NzhGMlVKVjlHZVFFYkd3LzY1aFNneWlXVGptWXgyVUp0VHVJVVpqdXhpL0t1?=
 =?utf-8?B?ZU5QWHVmNXY0bHpNdE1ZVUpsdXEwREh0elh2cFBGSXRzTUh4Y1ZoWUVJYVJF?=
 =?utf-8?B?ejFmS0phakloOE44QjhlcWY1KzgzMHZOd24vZGd1Y2crMDl3WXJHZ1V4Z0k0?=
 =?utf-8?B?UXYzNW5HdW1mNFRZaDBMZi9DNThoVTV2WWxuRjZNVUg5enR0S3M2M0IvRFdP?=
 =?utf-8?B?OHhMM296eDk2MVdsSmcvZXh4aTRRemxJUVpGTGp3S1c3MUh1VURLNSs5Nmo1?=
 =?utf-8?B?aHFpNFVpMXpTL1l3TkdZSWVHYzlhcWJWSWRvR21WMTVoenR5bTZzc0FBNm1m?=
 =?utf-8?B?RFJOZk9VSEQzdlg2eThCRmdRM2oyRjVGLzQ3WHNQZkhTbmlEM01sZGJZMW1S?=
 =?utf-8?B?TnJuR05Cam1RUzhrc2dLSjdOSDB2R25wME9xemQ2cXdHMG9VR0Y2SkwvcUZE?=
 =?utf-8?B?R0JwUXVlam01VlYxNndSYXB5U0F4ZWwvMEdUbStTbUtSSldDOVljZDhHeisv?=
 =?utf-8?B?UnF3Tkcxck1CRDBobTdLODJ3WmhITndlNnlnSjZGUFlibDhEWFQzNk41U1hN?=
 =?utf-8?B?ZGMzZ1VXc1ZVMDltZVFqUVdtSlFNTVViWmJJUFJnT2tvQ2Z1RmxMUCtUUytl?=
 =?utf-8?B?dnpXSkNEKzJKQ1lpaHVqN3VtNXZGKzBSZjhkZDRkZnRxSFJrd3VuY2loMWxv?=
 =?utf-8?B?Q1BpSURMWW1KMFhnN3M1d2NXUnlYNkNCcFMzcktxTVRXcTBoeXFWQUpiMEdk?=
 =?utf-8?B?MEYzaDVZVG5JOGNEYlVsSEpMdzc3Y2haNkEvNVFuSjdUNHJZK0dyMUJlNWc4?=
 =?utf-8?B?MUtmNEk0U3hiNGRwRGhVaFA0a3pnT1QrRXFMR3I2ZUFGUnluWkxUN0hlWHdB?=
 =?utf-8?B?eGtxeGZ3SFpBU24rcW5TVCtDd1RwaWpvYTQxaVlxeXJPVU90Q3VIWlJKbFJB?=
 =?utf-8?B?UW45VFNPU1VWRVJFVzVudmNwRmxnUFd5Y2xzTzhSYTRjVGxjRVZKOG9MRThB?=
 =?utf-8?B?NTh5S3ZhVnRtQlRiUlo5RzZtZ2JwVEl1NXJtbkZTSTZOZ2wzRm1lQTFaN1pq?=
 =?utf-8?B?bVdvQTBXUllQdG9HaW9DemJjZWZ0VzdSQmQ3MW9IUEFuSDJ1aitjUEVlTFht?=
 =?utf-8?B?SmRJQ0NFcCtDckJIM1JzZnRCODJHeS9oSENGOTRHWExyOEtyOGxMVXpIZDV4?=
 =?utf-8?B?U0FFZStkejJEWllnd0xyaGY5bjl4TkRFWnI0SG0zUDVvL0E0YzlnTU9vYzhy?=
 =?utf-8?B?Q1c2UlprTHAwWGlPME5CTDZyb2VOUFFJYkt5VlI3aWlMK0p5a3FxT2VnendW?=
 =?utf-8?B?em4xRTBnc2xZaDRoeGx4MWpyNnNiT29jNm9KSXQ2eTUyUHpDdFZuZURtRnBN?=
 =?utf-8?B?bmJhRGV2emlIUXovRHJ6Z0RBMHdJWmNzV2Y4bVdqU1o4bjladzc3U0UzNWs4?=
 =?utf-8?B?UFJualpVTGJROStpMlFLdXUvT1Yvd0tRbjA4SklLT3RncHE2Q2xza0pNdjVL?=
 =?utf-8?B?NXFkbi9mUnJZWmw0QXpkUUo3eHgwVlQ3TjY0YkJpQ2xHSWJJR3J1TDk1SVhq?=
 =?utf-8?Q?dOPE4FkiX5c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUVzNldLM1NybnB6VHNRam1BcnNBMExsc0JJYUlncVN5TGtVNGgwS1FtVmR2?=
 =?utf-8?B?VnYwNkppaTc5TGw0aXRMYkpWNjRONzZ5aTlRNnlUbktCd2ozQnE5enJDVVZi?=
 =?utf-8?B?eG5Td253MU9xYk4zTkxvU3huNUdKTnZDb3VBSjJyK1cwTVgxTExTeHZRL0Jv?=
 =?utf-8?B?NTErZy83YkFGUHJ2UEdYQUxCVWc0R3BQaHdWSktwcWc2N0xEQjVQMU02dVFm?=
 =?utf-8?B?TEV6cm9oa0ZCZGY1ZjVMSDRVVStJMXRwM1poTXlESWY5TlRUdnJpcFo0cDFN?=
 =?utf-8?B?TkhWYmRseWI4N1hGclZTZVk1RTBpQmI1ZlpiKzl6Z2Rud05hWmRmTE42cEo0?=
 =?utf-8?B?aWJVMnJUUHpuSVc1SXVzUlRWdGY0alQ1TDUwcWxjRWUzdnlJUUVSM2hDelpm?=
 =?utf-8?B?aW40NWhrVElHM0tzM0hNWEsrYXFFRndGaEtoMjE5VFhtT3o2c3ozaGtRVVhv?=
 =?utf-8?B?L2xTL2dBMmdZQ1VIbFEraEFlNDRlZVI3NkZwOUllN0RKMkdZZzZBT3JuR3BF?=
 =?utf-8?B?Zk9jQkJXU04rZ3ppemgwelVwcmxoT2lTK2lxYVdRSVFLeUlYM1FnZUpuMnZH?=
 =?utf-8?B?d2w1cWtybHJXYlJVemEvcllUblpiUWVhK0VTaE9zOTdmQnpNdFZoMk9RNXdC?=
 =?utf-8?B?WGo3c0Fab2xYeEVDL21icmZCTDlzdm0wejVPY0NFZWVBTUZSUXhONCtjZHJy?=
 =?utf-8?B?WncvdnpGRWRORzdoTmZDYU1Uei9BT3B4MEV1eWdSTnhUY0JxZFVwMWhHRUMx?=
 =?utf-8?B?cUlYNXpNTFJjcWxyMGoyckZmR0FsNXlCTm1oL2ZGVFdhV28vVXA3Sy9jbGta?=
 =?utf-8?B?eTBSUVNGV0VtaHI5Mkg1TEVrQmJTWHdJeFU0M2RjUDNKU1VUazNLRHFGRHBZ?=
 =?utf-8?B?NTRWYUxWaks3R0tsdFB1LzBUMFNlcTdFcTh0ci90MWdZSzNTL2JVYXRUUjky?=
 =?utf-8?B?Mnd1QzQ1bGFBbVRzOXliell6U3BIMFNpMnIyTGI4ZVM5YTdhbTZGbHd5bjZv?=
 =?utf-8?B?S3cwWWZmcmRreEdRWGZya1F6RmJJci9hT1g3cHFVcThRdDlHSE03Y2ovUVoz?=
 =?utf-8?B?NUxWT2dDYW1RU1dkRk81R3FoQ2tMeVZ5UGFqcWFRcGQ2ODBFclFMbjZ1bDdQ?=
 =?utf-8?B?Y0U1VHR1RW5ZUFlrMDJwZi9TYWhtK05PaVhoTlJoNDYwcnJHUlZQTUNCNEZt?=
 =?utf-8?B?L3NHL2ZyWWVkVzlta1NkOVlIc0M2VEFxS3k2L2g2d2gxS3hkVWFaUjhmSEFy?=
 =?utf-8?B?MnM2U08wWmVHQ05SdVoxUFJEdjhiN2dSaVpKTVJ2T3dWRDU4dTNmSzVNaDE5?=
 =?utf-8?B?OHlQelBEWWNHWmp2U1E3aTd5T3ZBTm83N0g1S2RMZHRJRGxKalhFeEY0MUdS?=
 =?utf-8?B?U0VlUnZQSVp2UWJMTDcrWlVad2J4c1p2aFhDRXdXV21Mb2dNTXRlV0JIdXBV?=
 =?utf-8?B?bHZ3dC80QnFEMzhnVnp4US9LMklHMHBZQzNVQ0JhRVJLY1RBLzNyUkRwOCth?=
 =?utf-8?B?Z2tudUdoMkxsT1g0N0xqQi9rY1FzQkdKSkxqMVhXTUpCc3BKK3k4NnpXTGFE?=
 =?utf-8?B?d2pDSjV3M2M5aVAvdkNrUzU3aGRUNDBGM1RHU2RMd2NMV3lxNW9YRlpyc2pI?=
 =?utf-8?B?d1ZXUzkrT2FRTmNOM284KzU1V3JIMUdUZkZOdGYwdFNiRXRBM2ROeWsrLzR2?=
 =?utf-8?B?OGRydnFKdWNzU0w1MFRBL0pQNWVOb0Z0ZUo1aVY1WEtNbWN1ZW5CWEovNFJn?=
 =?utf-8?B?WU5tazV6cXcwNU1tQUY3UndINEpZNGJZNXl0NDNxUU1wcmMxc3dlS0VuZFBE?=
 =?utf-8?B?MXVid0NxNTE3T1d5L2R3cWVBS3dMV29IQkFHT3I0TFR6Y3E5NFhFRzNIUVhP?=
 =?utf-8?B?K045SzA5MzJKZU1SUXl2TTFKN1pZcGVBS1R0TzJySFlSY2Vjc1ZpU2ZwM0Rw?=
 =?utf-8?B?cncwNE4xUXBGRzc4TE5CWkxrT24rVFpwODlnYkhLRVA2UmZGSFhYc2VDRlkz?=
 =?utf-8?B?d1I2ZXd6cmc0ZVBIYVVpcE5LaXlGa1dEZ3BsamhIakczVkhNNDU5d1U0ZStY?=
 =?utf-8?B?L0diZUkrbWVkWVB3UC9ESkM0UW1LcUhSQlU0bmh4RnJIMGpBNDE4R0VvMkNW?=
 =?utf-8?B?OExudWVWR09GcXR3bnFHVVdmL0VzU0U3UW00bTludUZ4Wmg4MXZoV3NYQmNZ?=
 =?utf-8?Q?xibd+mAGMwI4qm6Jyrldmmo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b76826dc-d611-45a3-86df-08ddc44c5999
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 09:37:15.7764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: glnyOOgnVUOstVWasVwoGPlZUI1/LrN+KkTiVRr6YMT1b+zTu7mtPK20znBK5SRQGqjZzgbY9RXo/0b8XY/VtH7yg6BI7shEur4JuK5IhiI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8869
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

Simplified stack access and loop structure.
In the new version, the first two error-handling cases pass through
reloc_cache_reset, but since the cache isn't initialized, the
function should return immediately. No other functional changes,
improves readability only.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 105 ++++++++++--------
 1 file changed, 57 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ca7e9216934a..b2d940e89bbb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1529,80 +1529,89 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	struct drm_i915_gem_relocation_entry __user *urelocs =
 		u64_to_user_ptr(entry->relocs_ptr);
 	unsigned long remain = entry->relocation_count;
+	int ret = 0;
 
-	if (unlikely(remain > N_RELOC(INT_MAX)))
-		return -EINVAL;
+	if (unlikely(remain > N_RELOC(INT_MAX))) {
+		ret = -EINVAL;
+		goto out;
+	}
 
 	/*
 	 * We must check that the entire relocation array is safe
 	 * to read. However, if the array is not writable the user loses
 	 * the updated relocation values.
 	 */
-	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
-		return -EFAULT;
+	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs)))) {
+		ret = -EFAULT;
+		goto out;
+	}
 
-	do {
-		struct drm_i915_gem_relocation_entry *r = stack;
+	while (remain > 0) {
 		unsigned int count =
 			min_t(unsigned long, remain, ARRAY_SIZE(stack));
 		unsigned int copied;
-
 		/*
 		 * This is the fast path and we cannot handle a pagefault
-		 * whilst holding the struct mutex lest the user pass in the
-		 * relocations contained within a mmaped bo. For in such a case
-		 * we, the page fault handler would call i915_gem_fault() and
-		 * we would try to acquire the struct mutex again. Obviously
-		 * this is bad and so lockdep complains vehemently.
+		 * whilst holding the struct mutex lest the user pass in
+		 * the relocations contained within a mmaped bo. For in
+		 * such a case we, the page fault handler would call
+		 * i915_gem_fault() and we would try to acquire the
+		 * struct mutex again. Obviously this is bad and so
+		 * lockdep complains vehemently.
 		 */
 		pagefault_disable();
-		copied = __copy_from_user_inatomic(r, urelocs, count * sizeof(r[0]));
+		copied = __copy_from_user_inatomic(stack, urelocs,
+						   count * sizeof(stack[0]));
 		pagefault_enable();
+
 		if (unlikely(copied)) {
-			remain = -EFAULT;
+			ret = -EFAULT;
 			goto out;
 		}
 
-		remain -= count;
-		do {
+		for (unsigned int i = 0; i < count; ++i) {
+			struct drm_i915_gem_relocation_entry *r =
+				&stack[i];
 			u64 offset = eb_relocate_entry(eb, ev, r);
 
-			if (likely(offset == 0)) {
-			} else if ((s64)offset < 0) {
-				remain = (int)offset;
+			if (likely(offset == 0))
+				continue;
+			if (unlikely((s64)offset < 0)) {
+				ret = (int)offset;
 				goto out;
-			} else {
-				/*
-				 * Note that reporting an error now
-				 * leaves everything in an inconsistent
-				 * state as we have *already* changed
-				 * the relocation value inside the
-				 * object. As we have not changed the
-				 * reloc.presumed_offset or will not
-				 * change the execobject.offset, on the
-				 * call we may not rewrite the value
-				 * inside the object, leaving it
-				 * dangling and causing a GPU hang. Unless
-				 * userspace dynamically rebuilds the
-				 * relocations on each execbuf rather than
-				 * presume a static tree.
-				 *
-				 * We did previously check if the relocations
-				 * were writable (access_ok), an error now
-				 * would be a strange race with mprotect,
-				 * having already demonstrated that we
-				 * can read from this userspace address.
-				 */
-				offset = gen8_canonical_addr(offset & ~UPDATE);
-				__put_user(offset,
-					   &urelocs[r - stack].presumed_offset);
 			}
-		} while (r++, --count);
-		urelocs += ARRAY_SIZE(stack);
-	} while (remain);
+			/*
+			 * Note that reporting an error now
+			 * leaves everything in an inconsistent
+			 * state as we have *already* changed
+			 * the relocation value inside the
+			 * object. As we have not changed the
+			 * reloc.presumed_offset or will not
+			 * change the execobject.offset, on the
+			 * call we may not rewrite the value
+			 * inside the object, leaving it
+			 * dangling and causing a GPU hang. Unless
+			 * userspace dynamically rebuilds the
+			 * relocations on each execbuf rather than
+			 * presume a static tree.
+			 *
+			 * We did previously check if the relocations
+			 * were writable (access_ok), an error now
+			 * would be a strange race with mprotect,
+			 * having already demonstrated that we
+			 * can read from this userspace address.
+			 */
+			offset = gen8_canonical_addr(offset &  ~UPDATE);
+			__put_user(offset, &urelocs[i].presumed_offset);
+		}
+
+		remain -= count;
+		urelocs += count;
+	}
+
 out:
 	reloc_cache_reset(&eb->reloc_cache, eb);
-	return remain;
+	return ret;
 }
 
 static int
-- 
2.34.1

