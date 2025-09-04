Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC79B43173
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 07:01:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B3110E056;
	Thu,  4 Sep 2025 05:01:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hbHplYUG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB96810E056;
 Thu,  4 Sep 2025 05:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756962111; x=1788498111;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=p6f69qgSJEIHLJwGvSOFyEEn2huTzBieTX9tlzjQI40=;
 b=hbHplYUGNW3Yt6PFcwcsHInFdv8lVdzj7Qe1xsrX2fwedUXJrdlLF6MK
 n5TgyRaKT9Hb+ovXzlZtBkve1RbEO1sb0OcrxkRl3yFP/13HFq5SaBey/
 WBvuHb0uh26zUo/04LEoAd26UY5FqYZdwMAm0XYjLp6K786hastr6Vnym
 SjJVG0cqdSGvtoh5o8CMGZfJ8eVRGbjUzAhD+o9RCvpr2obMLpPD9wO7y
 YY0s+HIA8IRJ+/ueqbWfIlgqCwu7mahZgzqBs9hUm9aiJx/omnOIrdLg3
 v9vKx7/lK0SUcJLRlsPt8eJnSNumEMQV+dM/VYixBwxMO9H1CfsRIbi6m A==;
X-CSE-ConnectionGUID: ru/S0NCLSJaQZe0HaEB25w==
X-CSE-MsgGUID: 5l4rN/rnSyupxl1FvlrHsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="46863613"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="46863613"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 22:01:50 -0700
X-CSE-ConnectionGUID: Ig9f1SHAT7eqbMaqJqiWeQ==
X-CSE-MsgGUID: T5attPFUTGWUgZzMt7sZGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="171035394"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 22:01:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 22:01:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 22:01:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.51)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 22:01:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IdZ/97yy+jPwmGYRtlryJXqFS8DLEbJQMZe3oPI61qGnxk58tIkEfaKuLnLX0d373aZVXmrkKmwBIRQqPOwGICQKyMJPjogMtuKv9ldFK/Ze4Gu4ObghD5bxiyFRzpncamjWvXYkKXxCGFJBk3QOxqkrDjcaVT5UIdvrcEQyrC5Ol45S0gTDcLkl5AUSG5QpvqjVSAAJdhACZk3zsLbc3BcA9HWgd7inoI5mmdqAc3sGxeahHvNehTcKYSK6nekXHScApClU3loqbtzcNi13l2ZwHtJVxapY65lIK4WG5QNlMg2ZlMaZMW/mv8YtsaUuHG8ICcwgJahmBkUArH/9yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p6f69qgSJEIHLJwGvSOFyEEn2huTzBieTX9tlzjQI40=;
 b=t9WBSTh8/wr/U4cagh9Z/OdudhAcuBopwawV8ZsCErz4vfvNoc1LjPPxxEEZo438nhtwYlwXdNzJ4yoWnq/MBJEb3XDprk3DPxKqKkYYZLe8+FmratbCRHOIMEb4SyN+8IeR6VjO/krFPboyXF7oROMk4iO6y9xWW3qArb77mvGKSuYZmIqcLRCpHz+7WHLkYSqwRtAQpkN/V3GCfxwozUNoyosS40vttPqZaZfZUtVuTxAqKWler7hjstuDPDJUIbjpcG2T+vHj7E8JpI3KVVND6x2Ngfa0KDEjsi+C37MT79dl5qlHtycjMmg1A7u7/EwznDIY3n0rDVzKfaDPVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 05:01:38 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 05:01:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 07/20] drm/i915/wm: use generic poll_timeout_us() instead
 of wait_for()
Thread-Topic: [PATCH 07/20] drm/i915/wm: use generic poll_timeout_us() instead
 of wait_for()
Thread-Index: AQHcGBZaX8l9dHXoG0uGx6DfitsQSbSCgc+A
Date: Thu, 4 Sep 2025 05:01:38 +0000
Message-ID: <a4555210d5ff4012e7873b29c73c4c45319b4aac.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <52c80860ea7b98e84f2386ed6cdd761f03190b1e.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <52c80860ea7b98e84f2386ed6cdd761f03190b1e.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB4969:EE_
x-ms-office365-filtering-correlation-id: 1376eb60-60a4-4bd7-ad79-08ddeb702150
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Z1lWRXE4UUhndlErV0lnQTAySGsvcmlyL01GTmE5QURGTnRNd3RaZDdsT3N5?=
 =?utf-8?B?UE5keW9LcE5RaGF4UnNtZzV3Z21oUnlWZllaQnNHVEZSR3JQL1FkNHlBUVBX?=
 =?utf-8?B?MXNvRkZvMHExbmJHSUxINTVsOW8yMFRjV2JVQ21HTDdEaE5SclNiZ2FvRyt5?=
 =?utf-8?B?dE1XNUFtV1MwRWVDL3l2QTZ2SmdqOWNBcTJDKzY3Sm1QYTkyQy9DSUtoN1JV?=
 =?utf-8?B?ODIwa3dZbEg2T3lDQStXMDhuQUhzSExKWSt3WEtMbnVtdlBuaVZDYVFBL1pV?=
 =?utf-8?B?UVRURmdlWUNWTWZXS3o0cGVrb3R4eXdFZi85V1ZJYWlzRUJMcmw4N3hlMTNO?=
 =?utf-8?B?THNKZUlVNW1WSmJ6bUg1cE9oU0dWRCtNL0VCenhpOERhZDhRb3R4cXpsOVlM?=
 =?utf-8?B?QldyT3VWME50YnBPQU5la2lPU3JUbnRWMnNqVWtVTlZFQmxwL1hOdXh5N2tP?=
 =?utf-8?B?S2kyRXFLSG90NTIxYk1QTVdDZ3ZFMXVoVSs3K0tXdURHeFM5YklGNGhScVRJ?=
 =?utf-8?B?Z3FNTFJOb1FaL0RrKzBGVURNRksyNUh4NFBTU01TY094STg4VjQ0U3p5MkZw?=
 =?utf-8?B?blRDMFBjUWpsMjhJTXU0ZFFCak9wU1lLVmZDUFBWb054eGU3Q01ibm1KWDB1?=
 =?utf-8?B?UVRlMzlzMW5IQjM4RS9LV0VGVmdwK2p6V0hPQlNQcVJKWmdiU1l4REUreGt1?=
 =?utf-8?B?Wndkc2YvU29TeHNXZmljeVIvVUJoMTlpWktNYWUxaVVodTRYQlEyd0FTOTg0?=
 =?utf-8?B?OEt0QWV3aFU1MmFGb2ZxbEM5Uit1ZGxUeXdxTThxLzVNSEZma0d5T2krL0xU?=
 =?utf-8?B?N2NpRTVPYTVQMDVnUUdUeUM0L25EMmRudkQzZDErSkFZT2NtWlRXWTdvZEJL?=
 =?utf-8?B?QlNoaGlVeGhDdVA0UHBEc1EwUzFFRkdmWmVJdmhzTXhFZm1ieFNKQlAveHFk?=
 =?utf-8?B?cXcvaFE1STZxbU5oY2NmV0hqOThUVWd6Nk5JNnJQbUNGZEpWc0Rta0l2NTF4?=
 =?utf-8?B?K3hUdGI5SUEvUjFrSWZQTGlJM3E0OHk0akRYd2xvWlAwdWtLUXUzMGtWWTJn?=
 =?utf-8?B?VnJtR1ZYbk4xRUMzdHQrSlRkRFA4VGUzc0xvbEFhc0ZUS2grY2lPZzZ4NGJD?=
 =?utf-8?B?UStQZEM3dTF5VFd0MlNCM0VXeDBLU0ZsSnZuVTlRK2lsQ2hYam1iUzhZOExR?=
 =?utf-8?B?K3BublRxNHlDbC9CVlpKaGtyZ3lsdDlNOERMV3FVMHg1bFlMdFFYQUdtaGIw?=
 =?utf-8?B?N1FIeXUwRXBOeVE0c093elpJcmQ5U1lGYUQrcko0VjBGVUxGZE1POWFwRlRj?=
 =?utf-8?B?bXpvYjB0T3M1RXJxeHpWbHErdjdIMjhUR1dSYnJuWkdBYS9QWjl0eW4xWFJO?=
 =?utf-8?B?aVRhbzRlekl1Y1hycE9rWXhtd3poZkZPN2phMHcwdlFjWS9WOVJlZ0U2RVV1?=
 =?utf-8?B?em1WRVA5dk54RkZWK3N6S1lFVnFkQVlnZFVMY3RFRGhxUVBvZmVwdHZ0dlRF?=
 =?utf-8?B?bXkyek1wMDB4NG82aGROblRZeklnenYzbm84dmdmSjUxdVZVU214V21Yb3NL?=
 =?utf-8?B?bTFmalZLdGhsTWd5SWc1VGQ4ZEY1cXA2RWJZYUVoN2dTYSs2SWdmMnkwYjhJ?=
 =?utf-8?B?Y2hYK0hlVkJrRU0zNUdvTmx4SjNJb1gvLzdWN0lvRDQ4d0NYMkdRMVh0a3Qz?=
 =?utf-8?B?dGszaFpCcVJ5cEY5QkFtSnRweHQ1K0hwRTNwKzg4YVU3a0NkUkVRWjNtK0Ir?=
 =?utf-8?B?bWVXUkU0Z0pIMitKV3pMN2xGc2ZpZFFiYnE4NmdZVUc1S2l1V0tudGVBUzZa?=
 =?utf-8?B?NW1Pbm5Gc1E1bGJqSmZtazRPcS95VlJKSHVOeDBTZTk0VnZjZ3IrcjgvS0tn?=
 =?utf-8?B?Tm8xOExZN1BZVkNQbExqb1R2Nkl3dWNkSUVvdmxZNUFvR3AzdkNaQm0rYW9B?=
 =?utf-8?B?SnZKSzF2eDd2ZVVYVUk4ZjJQSW56UFNmWW1maTdZaTR3QnBybnptV0tmRTNG?=
 =?utf-8?B?VDRyb0gzTTNBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ay9YWW5FK29sV0VuZUd2ZUJnYWNtblE3LzROS05uQ2dCdjFXSWhYZEpSUjhM?=
 =?utf-8?B?d2hWM3VSQVk0L2piVHJmcVN1VkhqQjZHdm5kR0ZITGtmcEtaaWdzZENvSTA5?=
 =?utf-8?B?ZXB2RkYxTXJqYkFRL0xoMWNjNjhtK3RFZjlmeC94dGdHUDA5TnhOQzlkZjZZ?=
 =?utf-8?B?cWhTaTJwdHVrcWU1ZUs5WStZL0IxejM4VGZPc2JPdTh6WWkzbFd6K2JzblRJ?=
 =?utf-8?B?SVVqT2s3THB2WmlwOVQwaTNYU1dvNTlqemhGbnd0NlhUYXpaR1JucEpyNUJB?=
 =?utf-8?B?OVJZOGV3MDBvVUdUdklna0w4eGZab3IzWTZmRnIyeDFQSTFiaGc3eDEyejdI?=
 =?utf-8?B?Sk9sTE0rRU9FNTMwUFBjbjZTbkppSW83eEZyRkJGRHN3NXVFSm9tNmxGeElM?=
 =?utf-8?B?c05LTHdGNjEzQnlPdFlDSFRrWjkybnN2UU5XTFRremIvK1NiVFV4NUlTbFRF?=
 =?utf-8?B?ajJQVnZEa29YK0o0dFNwNFlMa2xpREM4QTBYNkpFeEhmTTRJRWl4dk9LZG5D?=
 =?utf-8?B?Umwwd3ZldjJodUdVWWZhWmlCblpQcGI5VHlVNmt4aWlYL1ZUc3ROdVZ2T205?=
 =?utf-8?B?WXh3RGxoUnVobnR3Sno4aGcrRmdBWXJiS3dzQ0NvYU51b04xMURtdkVBZ043?=
 =?utf-8?B?MFlEVFFiUE91ZzhCL0NGVFZKWGJ5M3QwWXFqeEVwRGJzbDhaREtCdit6SHNI?=
 =?utf-8?B?WHB0L3dmMTcxRzVJUTdWaWlqMmVCYnFCWGxGbkNzNEZtMUlrdjJKNW1TVGF2?=
 =?utf-8?B?YWlBQXpMN1o5c2hUdjBSQUk0UzhQU25DYnRZcnZFYWkzL2I2TnpNYXZibHB5?=
 =?utf-8?B?L0xTRUVuL3lDaXJGNlNZeGpiTURQa3BQWWlpc0hrT0Y3MmhUNTZ6T00wNmM5?=
 =?utf-8?B?VU1zak9Lb0dMVkkxV2gremp4T3FyL3pxcStRR3QxTHU3ZTFabDdNSkUzRXFZ?=
 =?utf-8?B?Yll3NHE4WW9PZDVPL24xUkFJRExocFlMdEI3eHVGcllEU0NpV2JhR1U0a3hq?=
 =?utf-8?B?ZzR6TTlmcTdBMUN3cTlHU1UxdXRhbUVielptZTdxclpHMTcxdTVYb21MZmJN?=
 =?utf-8?B?SGZHZTUxblhYMkJmNWZJYmExRzR5WFVOeW52UjQ2UDZSNHBaMk9pYUhEZG00?=
 =?utf-8?B?aTFMWlVCeEk5blR5M1ZnZzg0T3MzZjAyOEhLbkRlck54SmZtSm9QTG92TUk4?=
 =?utf-8?B?TzZNL1BRcVQ2NkZWbDZyWlNESDU3Z3hEbk5KWGxHVGtjanJqM2NSZUpIK3Ru?=
 =?utf-8?B?RXdUUTBPVjNhZVYrZ1BMZ0dMTGIyTEdlbVBlT1FBT0pHSU9qUXo4U1Y2NUZU?=
 =?utf-8?B?MHRuK0VXbmsvaUZNT1lRa2tzbkhmbW8yZXpPUDM5dTEwNmVaRW1aSHFUZDda?=
 =?utf-8?B?TFlWTElvb2ZWYVdLT3ovYUpQUFpLazZoSUxac1RkZXVSNFZhOTFrQXVZL3M1?=
 =?utf-8?B?OXIwSEtZaHZjN3NUWkVMVGhXcmRXdEVaMGFENnN5bi9PaE1Ga2M3M2xzLzhF?=
 =?utf-8?B?SVd5ZEpjQlp6aEJSN2E0cG1reW0rdVlmSjBUVUo2VTh4dHMySjZUSkxwZEZx?=
 =?utf-8?B?R3VBSU5RM0VQVzJHSGpwcWxXQjIya2ZzSHYvY1g3OGtNN1U4YnpnVFNpM0pF?=
 =?utf-8?B?d0wxTFZLQXpiMS9uKzRYdFpaWkJ5OEJWb2hJMVNuNTRYaXZlU01GbHNEbEFY?=
 =?utf-8?B?S3FIaVA0UzZHRmkzMXNmTTNIeGhLWmRIZWFjcW9DWEVhQjFOU2xLajZ5dFVT?=
 =?utf-8?B?emhaVmlNemxHWVg0dWRVTWpDdi9YZGs2aVZpUkhXbzdXQytYKzhQKzNMQm5s?=
 =?utf-8?B?MEw0ZlQ5MGZScjRJRGtYTmhMdjRHZEkwdVFHRnVjNGppMGdnLzZLSDJ6c3pR?=
 =?utf-8?B?MG54QjVaZTF3ei9rdU9JdE5TMkUrcnJQUHk3UkU1NjFCYXVxbFZybzlERjVM?=
 =?utf-8?B?S0dHSVlLeEtWaHMyRnR2V0xqTDdBMXJRcWI1NDdDUGFjUVNKSW9zQjFHMDdV?=
 =?utf-8?B?UTNqazRzTnRZK3ZkVUI0TzBxSFNRSFk2RTVOYkFKSEh5enZMbmR5QWN2TTho?=
 =?utf-8?B?V1NpOXZ4SGdoU2dCdEx1d2lWSEUvRXlTTW9CZmZQaWVpS1IyQUpqWU45NkdX?=
 =?utf-8?B?bHJJcHlyTU11YXdobGtISjFaaS9keEwwMnIydG1ELytxa1pBVGp4dlgzK1dy?=
 =?utf-8?B?TWt3V2kxOUVQbnhFMExQVjhObVM4MFphQmtIa1gvQVQ4VkFUc1JRK2o0cXky?=
 =?utf-8?B?cjNITVdENGhBOHFIRHpTSk5hZ1F3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <259F620E642B3644851637E9941BDB20@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1376eb60-60a4-4bd7-ad79-08ddeb702150
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 05:01:38.4013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SFX/4uIiHkwpNaeJGg8JqVUoFeJiJ2h1AmIyS/ViKFkR5AAhMU2RBP5WUYRcrGWnhlaH6DC6JShhhkXrgXUBetS+JDR8cfR6e0Mby00g70A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4969
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
NTAwIHVzIHNsZWVwIGluc3RlYWQuIFRoZSB0aW1lb3V0IHJlbWFpbnMNCj4gYXQgMw0KPiBtcy4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3dtLmMgfCAx
NiArKysrKysrKysrKystLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pOXh4X3dtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhf
d20uYw0KPiBpbmRleCA1OTFhY2NlMmE0YjEuLjA2MGFmZjc2NTk5NCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3dtLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3dtLmMNCj4gQEAgLTMsNiArMyw4IEBADQo+IMKgICog
Q29weXJpZ2h0IMKpIDIwMjMgSW50ZWwgQ29ycG9yYXRpb24NCj4gwqAgKi8NCj4gwqANCj4gKyNp
bmNsdWRlIDxsaW51eC9pb3BvbGwuaD4NCj4gKw0KPiDCoCNpbmNsdWRlICJzb2MvaW50ZWxfZHJh
bS5oIg0KPiDCoA0KPiDCoCNpbmNsdWRlICJpOTE1X2Rydi5oIg0KPiBAQCAtMTEyLDYgKzExNCw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY3hzcl9sYXRlbmN5DQo+ICpwbnZfZ2V0X2N4c3JfbGF0
ZW5jeShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzDQo+IMKgc3RhdGljIHZvaWQgY2h2X3NldF9t
ZW1vcnlfZHZmcyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgYm9vbA0KPiBlbmFibGUp
DQo+IMKgew0KPiDCoAl1MzIgdmFsOw0KPiArCWludCByZXQ7DQo+IMKgDQo+IMKgCXZsdl9wdW5p
dF9nZXQoZGlzcGxheS0+ZHJtKTsNCj4gwqANCj4gQEAgLTEyNCw4ICsxMjcsMTAgQEAgc3RhdGlj
IHZvaWQgY2h2X3NldF9tZW1vcnlfZHZmcyhzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSwgYm9vbCBlbmFibGUpDQo+IMKgCXZhbCB8PSBGT1JDRV9ERFJfRlJFUV9SRVFfQUNLOw0KPiDC
oAl2bHZfcHVuaXRfd3JpdGUoZGlzcGxheS0+ZHJtLCBQVU5JVF9SRUdfRERSX1NFVFVQMiwgdmFs
KTsNCj4gwqANCj4gLQlpZiAod2FpdF9mb3IoKHZsdl9wdW5pdF9yZWFkKGRpc3BsYXktPmRybSwN
Cj4gUFVOSVRfUkVHX0REUl9TRVRVUDIpICYNCj4gLQkJwqDCoMKgwqDCoCBGT1JDRV9ERFJfRlJF
UV9SRVFfQUNLKSA9PSAwLCAzKSkNCj4gKwlyZXQgPSBwb2xsX3RpbWVvdXRfdXModmFsID0gdmx2
X3B1bml0X3JlYWQoZGlzcGxheS0+ZHJtLA0KPiBQVU5JVF9SRUdfRERSX1NFVFVQMiksDQo+ICsJ
CQnCoMKgwqDCoMKgICh2YWwgJiBGT1JDRV9ERFJfRlJFUV9SRVFfQUNLKSA9PSAwLA0KPiArCQkJ
wqDCoMKgwqDCoCA1MDAsIDMwMDAsIGZhbHNlKTsNCj4gKwlpZiAocmV0KQ0KPiDCoAkJZHJtX2Vy
cihkaXNwbGF5LT5kcm0sDQo+IMKgCQkJInRpbWVkIG91dCB3YWl0aW5nIGZvciBQdW5pdCBERFIg
RFZGUw0KPiByZXF1ZXN0XG4iKTsNCj4gwqANCj4gQEAgLTM5MDUsNiArMzkxMCw3IEBAIHN0YXRp
YyB2b2lkIHZsdl93bV9nZXRfaHdfc3RhdGUoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkpDQo+IMKgCXN0cnVjdCB2bHZfd21fdmFsdWVzICp3bSA9ICZkaXNwbGF5LT53bS52bHY7DQo+
IMKgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOw0KPiDCoAl1MzIgdmFsOw0KPiArCWludCByZXQ7
DQo+IMKgDQo+IMKgCXZsdl9yZWFkX3dtX3ZhbHVlcyhkaXNwbGF5LCB3bSk7DQo+IMKgDQo+IEBA
IC0zOTMxLDggKzM5MzcsMTAgQEAgc3RhdGljIHZvaWQgdmx2X3dtX2dldF9od19zdGF0ZShzdHJ1
Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gwqAJCXZhbCB8PSBGT1JDRV9ERFJfRlJF
UV9SRVFfQUNLOw0KPiDCoAkJdmx2X3B1bml0X3dyaXRlKGRpc3BsYXktPmRybSwgUFVOSVRfUkVH
X0REUl9TRVRVUDIsDQo+IHZhbCk7DQo+IMKgDQo+IC0JCWlmICh3YWl0X2Zvcigodmx2X3B1bml0
X3JlYWQoZGlzcGxheS0+ZHJtLA0KPiBQVU5JVF9SRUdfRERSX1NFVFVQMikgJg0KPiAtCQkJwqDC
oMKgwqDCoCBGT1JDRV9ERFJfRlJFUV9SRVFfQUNLKSA9PSAwLCAzKSkgew0KPiArCQlyZXQgPSBw
b2xsX3RpbWVvdXRfdXModmFsID0gdmx2X3B1bml0X3JlYWQoZGlzcGxheS0NCj4gPmRybSwgUFVO
SVRfUkVHX0REUl9TRVRVUDIpLA0KPiArCQkJCcKgwqDCoMKgwqAgKHZhbCAmIEZPUkNFX0REUl9G
UkVRX1JFUV9BQ0spDQo+ID09IDAsDQo+ICsJCQkJwqDCoMKgwqDCoCA1MDAsIDMwMDAsIGZhbHNl
KTsNCj4gKwkJaWYgKHJldCkgew0KPiDCoAkJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4g
wqAJCQkJwqDCoMKgICJQdW5pdCBub3QgYWNraW5nIEREUiBEVkZTDQo+IHJlcXVlc3QsICINCj4g
wqAJCQkJwqDCoMKgICJhc3N1bWluZyBERFIgRFZGUyBpcw0KPiBkaXNhYmxlZFxuIik7DQoNCg==
