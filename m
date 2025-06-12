Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FE8AD7C66
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 22:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9194610E187;
	Thu, 12 Jun 2025 20:32:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hjBLeLqW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2654F10E191;
 Thu, 12 Jun 2025 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749760343; x=1781296343;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6dTIFUS28o5rW22zbEWYQh5qIysBfNDvoFj5XurAJkk=;
 b=hjBLeLqWsHSvtUHpwzObNrU28RuMhw4NpeXpU1euFAXhwxQJyHHxXBQT
 ZjRd+2eS6RyNeUWjG2tbreuVDfNsM+hmWyJ29mbAlQLbA30L8PtfzuX9b
 9iAM1lwZPduGda3JopOx0XSX8LHaD4c0OMpLWD8H/1h+HIl+5sWHkZhs6
 pPqg7//WlR+EzfBKl34g8le/cIXPD+szl+yXlb5Bq3n9HweSZ9e4MS/Tj
 ElhqZ1mFajlxWIN5sgYwjMgOVxzTgxVzDWv8zKueuqL+60fpZ/guoXwvD
 7cujPCktUBpsETuUFMS5OyCU9l47JrZj3lWiNu0IEKCMMs918lvMq+lYG g==;
X-CSE-ConnectionGUID: XyhpE9ekROyFi6amIRTD+A==
X-CSE-MsgGUID: LgXBowW0Tqucfv7liR76Fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="63000320"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="63000320"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:32:22 -0700
X-CSE-ConnectionGUID: fLJ2VLbQSAejpSo8E5oC0A==
X-CSE-MsgGUID: fimedLOwQcaeqpigZxTiNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="147510676"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:32:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 13:32:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 13:32:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.86)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 13:32:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N+YW1O9y99yUC3EIw8gHJJ/Z/Y+1s4+vVExU3JMUnkNb0xCl4ywxLCEfbdf5zlNgJRmlyJZS1vVReIwhqdJYNGrNtYP1p8temvQkeoGT+2DvvAjDU4uhSlv65f3HfY9o/s0K/2SD4xC5U0SJZ7ftddhUnKCjhFHbSSLXC9f3SaNEqQgIGjB/TOpzvNoaN3iPkLJ6U0qbOpakpIkIhaxzQI5IJYGaW4ssms5k1lkdnC23xvp1/gKVCMKz6TiZZzafvPR5DqDw7MoqfyhIOfspY+DBJvaRs6vE4nZLPIpOSFgE0qTwONa9wy/8ExVO9DlJotSc1o+X8V+8D9l9d0PlOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6dTIFUS28o5rW22zbEWYQh5qIysBfNDvoFj5XurAJkk=;
 b=CDmz4evyebQbJIl9ShtITeoYe7rIuocRr9ThASjvsV/zIsXOsWA/XZ0xOZ5bZG8viDKsIXXgGaQvE9UsX19milEZqDuxzdMbP2BRnvlJlSzu6/k9vxvQgCdSwmmSbudeJWQBAXb4ffWND9qjCQztqP0wnQaq5K0YnESCVmx7LhyhuVTq6bTUUrX5utZ9iG4hC1BV1uSt4y8+GXk/EgXE95+pe9YqyfBoY0kgAp46VtFgKFQA6aYW8jmUi3v6siYMZfEWdojClQHj7j3+EKdQfO5qdoeHT9fkao6U8vJTLi9u8aYKqUz9zxgi9f7IJYu8pBm9WrCaqc/1sDCSdX2m0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM3PPF8F79256C7.namprd11.prod.outlook.com (2603:10b6:f:fc00::f37)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Thu, 12 Jun
 2025 20:32:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Thu, 12 Jun 2025
 20:32:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 5/9] drm/i915/dmc: Reload pipe DMC state on TGL when
 enabling pipe A
Thread-Topic: [PATCH 5/9] drm/i915/dmc: Reload pipe DMC state on TGL when
 enabling pipe A
Thread-Index: AQHb2ujyBDRzGKCWL0KWtOD9OMUj9rP/+vZQ
Date: Thu, 12 Jun 2025 20:32:16 +0000
Message-ID: <DM4PR11MB6360BEA3323D523E9F2E856BF474A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
 <20250611155241.24191-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20250611155241.24191-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM3PPF8F79256C7:EE_
x-ms-office365-filtering-correlation-id: d11f6d9c-fa3c-4584-4055-08dda9f038b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MlY3VVFDMDAyUWdveVRibEd2czB5TjNoWDc2bGZjVWxIb29qU05rK1pCQzFI?=
 =?utf-8?B?YVEvR05PWHRCbmlERUhyQnQ2ZFZiSjBLbEw3aGp1MzU5K0YrZVp5QXkrNjdJ?=
 =?utf-8?B?dE9KZ0N6VnJsMUtWUitlWFRJdzBXL3JTcXlTYjZRU1hXVGxZVHBOQS8vNkly?=
 =?utf-8?B?TzVvUlZsUnhNWFJha052eE9oMnRGNXY0b2N3cGV6dkcxOFhYb3krLzRJbitN?=
 =?utf-8?B?MTg2aVZta2xTWGUzUHY2QmtDcUs0MVk5alRNNHAvNU1ObEx2bWRIQ3FiMWpG?=
 =?utf-8?B?VktrMmsvRTVHTFBuRjF2V05nQXNROHl2UjZDVHl0Y1Z4dW5xQis0ZU1ZSjJ0?=
 =?utf-8?B?R095d1Y3UUZtcjFidU43ekFWeVpUTm9XQldpdWVlOXdxWHBwTG8zbkF4R0xO?=
 =?utf-8?B?M1VNN2tISURkcFpKTEt0VG9aZUppKzBPejZKUytOUUN0TEJpL1JNME84TExj?=
 =?utf-8?B?Y2lwT0pXSVk5VDZ4WmRQK1dIVVhGN0V1L2hjQ2hmQnVqRTBMT090M3c4aWJ4?=
 =?utf-8?B?Sks0aW56N2NqVmo5WnBqcGZ2NGM5MDIyYnhRdHdHR1NhZXlNbGhDRi9kbUp4?=
 =?utf-8?B?K3RnaE4zZFF0M2VFUHJITUlremJHNUd2aVhwVlNOUHdSVGNZV1JFWWplTy9F?=
 =?utf-8?B?bWNkaUltTUFEMys2VlBLdU5yWVZkNjJxQzNPQTA4ZHgyN3dTcXlvMmRQNmV3?=
 =?utf-8?B?WEJqTTFydGw0RmhPc05TNkQ4dFk4N1VZN3J3cG1jN3B3STRCV0VEYU1pQ0lV?=
 =?utf-8?B?b2Vqb3dUNkRtR20waTBWVmUwY0gzVmR4MUZMcWo3MjNkNWpHSTlzM3V2enZa?=
 =?utf-8?B?R2xueG4zdXpia29GNEpONE9UTWpTNFJUY2FVMWtodUFJdUdmZ0pQbmk1bVo3?=
 =?utf-8?B?LzNjSzVrdzA0WUVEV0pOYkpGL0R3WEQ5MXphTG03aXo3UVUxYmdWdTdxOCt6?=
 =?utf-8?B?OG5DQjRaTUROazJaazVtQW83dDRsMi9NNHAzSWVhdjc5MG5EUXFLSVVvbC8w?=
 =?utf-8?B?cEtUZzZHOEV6cFQvVks0cFhjL0xweEN0YjhXTUhZVTNRSHFWZTBvUS9EQTdV?=
 =?utf-8?B?S1YxeVZuOFpNQzB5cFRleWFSY1dYYU8yajQ3bStZdUVXR1ZscVZmN2N2VndN?=
 =?utf-8?B?alJWZFI2dWp3SUpYcWs3Mkg3ejVNMmg3Y3hlQS8zMDFvQUM3K1VmanVFOVhz?=
 =?utf-8?B?RExzNkt2S01FMzBoRFNOcDB5TmN1dHdPUWN5RWpHUEl6UFJBOFVjTTdWRmpF?=
 =?utf-8?B?M3JiSFZIQVpINkwrWE1yNk0zVkJnS3J3VUUrZnFubERGREpNYnZJV05LcGQv?=
 =?utf-8?B?MDZkOFUzd0lwMDlCRVhWYjg0MlcrT0ZLdXlBcHdqVW1odDlFTVRjajlWQjJT?=
 =?utf-8?B?KzVHRlBiS3FBbVJ1TFRTdkQvQ0Z6UGNNa05yZXFMTUFOYit2R2F6VlBSaXEw?=
 =?utf-8?B?a3Ewa3ZjbEpPYU95RWZHZ2Q4QkRxbWd6bXNxeDJDa2h6TUJQQ2M2MXJlanc3?=
 =?utf-8?B?dzBrcnFiOFBZcnJUMUZjeCtMY2MrazUwblA3TVRLdDZKNE5lWHFvd3cwTmM0?=
 =?utf-8?B?NE1ObVVhRFo3bzdyUEltQ0xNN1N1NDhaVlMzVjljZ3p6dnRzMGhHR0FrT2Yv?=
 =?utf-8?B?aXBnMFFaS2VEektkTnNFcmhETWF3TUo2c1Z2NEpkUmp1T0dlR3N1RXhQWGxF?=
 =?utf-8?B?WHBaNUxwcXVLc1FLQ2Z4aXlkd2JQU3c0Y084VTZaSW1YSUF2Q3RrcFJKcHFh?=
 =?utf-8?B?Y1U4NlEybmgzUElJT1Q3Q2lYVUkrbXFtdytubDQraitXNEZTZk5YY0tDNXN4?=
 =?utf-8?B?TGRlT2d5YzlFT2lZbUw3ekpQTlhtMldFaE9GUmk4Y0ZQQzFkRVZoemZlOUd5?=
 =?utf-8?B?TUw5b0VHSlJWTkxkdzJYalVXV2VUS1MyQkpQOXVCZCtPYW5vR2dyNkVQV1Zw?=
 =?utf-8?B?c3I0UlBlYnVRQmhXMDJGbkViWnpzeGVpZWxET3kyWDgwc0FxQS9jdlNaR0RP?=
 =?utf-8?Q?DdJ6R7QmDUSWh+/kRb/7KT8OuwneOA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QjRJTGM3Ym1ZME55M2UrdnFyTDRSaFFJRXJ3M1ltQ2QweHRUa0Jkb2VhOU5j?=
 =?utf-8?B?NXQ3dVZFdUp5NmpCZ1BRUmVCcXQySFQ2eUNLWGxjVE1vVXpwZnRQSURwWUkw?=
 =?utf-8?B?cFNVVkJGd3BkaVExMDlkV1JCaHVrbHhOa1FoL3lESU80VDZIZ3hGYjBLTm5j?=
 =?utf-8?B?Qk9qWEdiTHdZdVhLK3BaN0ZuV1BDS3grQjNvRElWam5RbExubGQ3TzQ5dnBF?=
 =?utf-8?B?YUQ2QlJybXZIN3FJRVR5a0NWV2hCbWNqendhUzArZUhycTNseDlJeTRvSUR5?=
 =?utf-8?B?eWZ4WTE1VEpIci9OUXRzOTFXY2xoUmJmdVg5eUJraXlaa1drWmEycGk0am1L?=
 =?utf-8?B?azRzY3l3bnBRQ1VJVGZxbnhZcjREQy9wVnp1Ukc5V0hJUk91RkFaSUVIVVJu?=
 =?utf-8?B?RXJWZ2hKWWd6ZGxmZU9QOVpnNXV4S2lFY2tod2doTVZzdnUwU2NrWGoxM0Qz?=
 =?utf-8?B?UVgzWEdWb0NpdjJYa2l2NUkrRnNZNnpvU2RNK3UxU0FJZ21jdkNZVjFvcTFo?=
 =?utf-8?B?TUlvdXZ3dGxWZGhKNjdJbDFkVjlyeEpLY3paYzd0RXA5ODJ6L3lSQmxBYUpz?=
 =?utf-8?B?KzVKajljaU5zQ01DbUcyRHMwQ2FlMVVDSWZ5TjRNYnJRQnZqUU9vb2wwT3hl?=
 =?utf-8?B?dk4wYmx1K3dkc2lWM3JKTE1FR2xIRWhvOXpPZTdmZlhOWFJWTnJSREJFNE1U?=
 =?utf-8?B?a1dCNjcxbUZaWUdvN1NiSDRqQ285U0FBaDhtZzZKTTVwOHlpSUJod3NGNVo1?=
 =?utf-8?B?NEE0c3JFdlBuZE5zZTl6eTF6S0I3bm1QZVJEM3RZTlI0NGtXYklUSFBPUENh?=
 =?utf-8?B?Y1lYV2lnRXEwRFVzTHhoaVBkMi9LNlVuUlFMaU15N2JmdUczNzQ5K20rNEFL?=
 =?utf-8?B?ZW1JbUJxRGhJdFMwVG9RWkMwZjdaRVdKSTNPKzBTY3pnR0VmM1k2SSt4VHNs?=
 =?utf-8?B?Y3d4U2Y3TzljcW5BM1JjeTRhVDY5K2Z5a01CWjVjMWtUVnVXU0svcWxZeFh5?=
 =?utf-8?B?V3lqTDlSUWlraTRsN0dDT0UrN0oyT1Jrb1REaFhSanhXK1hweXFvRWkwYkt4?=
 =?utf-8?B?bEFUVUMyVU0zYzIvbExGS2lzQ1AwaDNybmZYa2JaKzljYmZnOUF2a2lxZ3R3?=
 =?utf-8?B?RW9BQituSkhjSTNWQUQ3eXE5UGQ5bG0xSkFKYmZMK1FPUURaVkthV05sSHBT?=
 =?utf-8?B?WlF1Zmp0Ymh4Vnh6UjVuWXFtU256NlZzeGZuUCtJS0xCWEgyMEk4bW5nNk5w?=
 =?utf-8?B?djBUc2VnUTFKbTBUMEpIK1QvSmpWVWp4NHNCWWdVcS84UHd3dEk0YlJCUHps?=
 =?utf-8?B?OTZWbTlyeGlocnZWQlpQNnAyMmRtSURIZk5KaDJGL1FFc1ptSkNqbEJOVHYv?=
 =?utf-8?B?RTBNdHdqNGR0aUoyZkJ4bGNZbFhmZ1RtYjFLTEFwS2cwVkNxOTdJRE9GUm9L?=
 =?utf-8?B?VEJGZUUwNTFRdkZudVlac01lcndlYmkwUFk3VnNxY091VVk1WjczeTdRZzFZ?=
 =?utf-8?B?TklielhUeThCZ3NqT0dZQmJndWtReVJuSU5uQyt1NW1yaHBMckZLZytFa1lk?=
 =?utf-8?B?cGxhWTA1d1pmM0VHTHdwbUhKZ3oxNkNXcWVaOC9XTElGWlMyQVM0STVGdFJB?=
 =?utf-8?B?bkNjdFBaYXFVWEE2aVA3Y0hkSmVMWXNmQ252VTRJMmJnK0JHVXJCWnhvQmg2?=
 =?utf-8?B?VjRnMHI4NXdkM3RPVXVUYlhOOG9DOFZZVm9WMzZMTFI1S0t2RHUxM29abWp4?=
 =?utf-8?B?T25DVXNSVFByV25PamdvaDlyQTA1MUg5NmU3UG1wSUFLKzdSaEtjZE5Bbjly?=
 =?utf-8?B?dWtzdFo4VHpSQXFIY3VnUUp5ZlV5VzVNVGgxd1lSQzhaTlAwQTdpMVdEQnIy?=
 =?utf-8?B?ZS9YakllUkFHYXdOamRRUEtQZXZhRXlCbUtnWE5SaEhHVnJXcHBEdFlhQXdE?=
 =?utf-8?B?OXlJVFBFaW14dDdOOFA1a1l4ODlJc1g4cFRLNG5TQ2VPSkFlbDNTSWNpR1Jj?=
 =?utf-8?B?Wkd6anZVOS92c09sb08wU2ZEb2JDRE1SWDByVVhySitRYXY5cGJSTzhwQ05M?=
 =?utf-8?B?NGxGZGs5NS95VW9Cd1ZjNkN4MkplYmI0ZEk3azlHVkhadHdtc1Y1SFJ6RjlC?=
 =?utf-8?Q?Pr6UdRzjdAYLxFmb9ILXAiCxa?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d11f6d9c-fa3c-4584-4055-08dda9f038b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 20:32:16.4918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RQ14Iow7DFcPEzHPzCRfiVoNteNxlTsrONDhCyLD3e/tOgGuBgVkl1FAF04+hzuy5x3mdaxt20Tmzc9C+ApA8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF8F79256C7
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBXZWRuZXNkYXksIEp1bmUgMTEsIDIwMjUgOToyMyBQTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogaW50ZWwteGVAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCA1LzldIGRybS9pOTE1L2RtYzogUmVsb2Fk
IHBpcGUgRE1DIHN0YXRlIG9uIFRHTCB3aGVuDQo+IGVuYWJsaW5nIHBpcGUgQQ0KDQpJIGd1ZXNz
IGl0cyBhcHBsaWNhYmxlIGZvciBhbGwgcGlwZXMgYW5kIG5vdCBqdXN0IGxpbWl0ZWQgdG8gQS4N
Cg0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiANCj4gT24gVEdML2Rlcml2YXRpdmVzIHRoZSBlbnRpcmUgcGlwZSBETUMgc3RhdGUgKHBy
b2dyYW0gKyBNTUlPKSBpcyBsb3N0IHdoZW4NCj4gUEcxIGlzIGRpc2FibGVkLCBhbmQgdGhlIG1h
aW4gRE1DIGRvZXMgbm90IHJlc3RvcmUgYW55IG9mIGl0LiBSZWxvYWQgdGhlIHN0YXRlDQo+IHdo
ZW4gZW5hYmxpbmcgYSBwaXBlLg0KDQpJdCBpcyBqdXN0IHRoZSBUR0wgb3IgYW55IG90aGVyIHBs
YXRmb3JtcyBhZmZlY3RlZCA/DQpDdXJyZW50IGNoYW5nZSBsb29rcyBmaW5lIHRob3VnaC4NCg0K
UmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gVGhl
IG90aGVyIG9wdGlvbiB3b3VsZCBiZSB0byBub3QgbG9hZCB0aGUgcGlwZSBETUMgYXQgYWxsIHNp
bmNlIGl0J3Mgb25seSBuZWVkZWQgZm9yDQo+ICJmYXN0IExBQ0UiICh3aGljaCB3ZSBkb24ndCB1
c2UpIG9uIHRoZXNlIHBsYXRmb3Jtcy4gQnV0IGxldCdzIGtlZXAgaXQgYXJvdW5kIGp1c3QNCj4g
aW4gY2FzZSB3ZSBldmVyIGRlY2lkZSB0aGF0ICJmYXN0IExBQ0UiIGlzIHNvbWV0aGluZyB3ZSB3
YW50Lg0KDQpJIGFncmVlLCBpdCdzIGdvb2QgdG8ga2VlcCBpdC4NCg0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMgfCA5ICsrKysrKysr
Kw0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IGluZGV4IDMzMWRiMjgwMzlkYi4uZmQ5
OWM0NjQ1MjYwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RtYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1j
LmMNCj4gQEAgLTU5OSw2ICs1OTksMTIgQEAgc3RhdGljIHZvaWQgZG1jX2xvYWRfcHJvZ3JhbShz
dHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4gIAl9DQo+ICB9DQo+IA0KPiArc3Rh
dGljIGJvb2wgbmVlZF9waXBlZG1jX2xvYWRfcHJvZ3JhbShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSkgew0KPiArCS8qIE9uIFRHTC9kZXJpdmF0aXZlcyBwaXBlIERNQyBzdGF0ZSBpcyBs
b3N0IHdoZW4gUEcxIGlzIGRpc2FibGVkICovDQo+ICsJcmV0dXJuIERJU1BMQVlfVkVSKGRpc3Bs
YXkpID09IDEyOw0KPiArfQ0KPiArDQo+ICB2b2lkIGludGVsX2RtY19lbmFibGVfcGlwZShzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bSBwaXBlIHBpcGUpICB7DQo+ICAJZW51bSBp
bnRlbF9kbWNfaWQgZG1jX2lkID0gUElQRV9UT19ETUNfSUQocGlwZSk7IEBAIC02MDYsNiArNjEy
LDkNCj4gQEAgdm9pZCBpbnRlbF9kbWNfZW5hYmxlX3BpcGUoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXksIGVudW0gcGlwZSBwaXBlKQ0KPiAgCWlmICghaXNfdmFsaWRfZG1jX2lkKGRtY19p
ZCkgfHwgIWhhc19kbWNfaWRfZncoZGlzcGxheSwgZG1jX2lkKSkNCj4gIAkJcmV0dXJuOw0KPiAN
Cj4gKwlpZiAobmVlZF9waXBlZG1jX2xvYWRfcHJvZ3JhbShkaXNwbGF5KSkNCj4gKwkJZG1jX2xv
YWRfcHJvZ3JhbShkaXNwbGF5LCBkbWNfaWQpOw0KPiArDQo+ICAJaWYgKERJU1BMQVlfVkVSKGRp
c3BsYXkpID49IDIwKSB7DQo+ICAJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFBJUEVETUNfSU5U
RVJSVVBUKHBpcGUpLA0KPiBwaXBlZG1jX2ludGVycnVwdF9tYXNrKGRpc3BsYXkpKTsNCj4gIAkJ
aW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgUElQRURNQ19JTlRFUlJVUFRfTUFTSyhwaXBlKSwNCj4g
fnBpcGVkbWNfaW50ZXJydXB0X21hc2soZGlzcGxheSkpOw0KPiAtLQ0KPiAyLjQ5LjANCg0K
