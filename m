Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77408B43130
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 06:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5550710E969;
	Thu,  4 Sep 2025 04:34:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g/JNW4gB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 553B310E056;
 Thu,  4 Sep 2025 04:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756960485; x=1788496485;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=l7qB+VvOulr15XmhXkoyAAXexZwv4TqO/mUL8O4z+4M=;
 b=g/JNW4gBJae6NBUClJaJjAb3yUP8sTP2R8cy5erymr8tREsZ0RoptbW5
 BG0k3C5pCoMtUhUQ5H5lYoqLyPI8gyDct+Gx0NdfYT663/mYqApRTUamx
 Nb+VKI2ENE31JBhosEpiRGCRHF2ey2sCJbmZdTe+eEepsm0I8kWo/WabJ
 pC4UKysLqyu86Dz2lZeT/PIkHVm3k5tn+hIhxOTsG3Gp75IE1PgocTgF0
 zu/wTMo/6h6baibr2V2Uw1GTBW+SoFKoMyBNSCmwhtBBfhOQfaL03enOu
 vTgMEsSyhmcCfc2OaUDO3Kpp6e3kvKPRPtQ39wUWe9HDlXnMOkTn9lSJ4 g==;
X-CSE-ConnectionGUID: UZSDm9ykSPO4ay6jKIa9iA==
X-CSE-MsgGUID: vXk+oJK7Qv24bl6JGqvmkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="58987318"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="58987318"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:34:44 -0700
X-CSE-ConnectionGUID: Hp+wA7B2TYary/gD7AK6JQ==
X-CSE-MsgGUID: vQAjCdWHRMKd96fa+JiLug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="176999058"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:34:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:34:42 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 21:34:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:34:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XtI6heW7G12oUCE3jiesjRsxwrnxiKSUfH7v+f5hs2kteZJJGP5+6x33LR+3Z7bgZr7XDih/hr9dgGg71pwQB4K5izxbpRnTLMBDrXpHlh0S1G0K4Nijxq6H+iG3CQdltjLV1NrMdInQG9KHldDyeLrhir/1yneeU0O9hUwK9gI5Vw1tG7laW4ka/1LBzMIEtdhU/Sxjjac7nJDsx9aD+NDuez7zlwrYUZDbEFPYPQo2Y+BpXX6+zWFtZbP4wuEpHhPmWFsEoKFMBRlFelmzOewHahGM3+ewnDLqdOoWPpBQCYxDoLRtF5iBNpse0xSsNcOTIlMBVg9yU/6LO3TMmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l7qB+VvOulr15XmhXkoyAAXexZwv4TqO/mUL8O4z+4M=;
 b=Io3XVIzNvci9aw33+INFTqmGVTQLmu3ms15XC3SxezhVIvaf9UGj/IMhvOKzgJsfi1Xwv/o2C9RnF7ZBKVADSnXZZ1Qu9RVVYgxvz4FDdcUS0/YZ16hswD5QEPzbSp2/OS0GRL1OWj6QrvTJ4xjXuGILlzG8qaSOZm78G5HCuNF3/oUc6MjPr65rch08PvAiAkMhI78JJuxzrHbkgK9zU28K+xDvQe3R5AUl2LxLIgqGgfVOvDh0CzEsL54By/uPJY+/XmUQg9KozQxCnRRDuq53shgo1azIdn0PARa0teuHMSgeXSy5g8gfdWD6Awr1WQHzy1txhRkNsXo6OdppQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB8237.namprd11.prod.outlook.com (2603:10b6:610:154::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Thu, 4 Sep
 2025 04:34:34 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 04:34:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 05/20] drm/i915/dsi-pll: use generic poll_timeout_us()
 instead of wait_for()
Thread-Topic: [PATCH 05/20] drm/i915/dsi-pll: use generic poll_timeout_us()
 instead of wait_for()
Thread-Index: AQHcGBZWicTCr1pXO0SxkvldH88RzLSCejyA
Date: Thu, 4 Sep 2025 04:34:31 +0000
Message-ID: <2aa2d6c41f5e6723a9c2a6c8defe1871de213dc8.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <476fcc5aad9e2ddbf6d8c14bd5ff5cbf071c5dca.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <476fcc5aad9e2ddbf6d8c14bd5ff5cbf071c5dca.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB8237:EE_
x-ms-office365-filtering-correlation-id: 33c363fa-5797-4ba4-7f50-08ddeb6c57f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WWIxK3hCNk5zMk1uaUk3ZVcyRHRyQ1MyWDIvdVYxaE9ZQWFZbXBNN0tuSS9q?=
 =?utf-8?B?Q1d1amY0WW9YYjhRbmdZRWdybmVDSEt1eExoaDZhNXBLejk1QnJvZjMvU0ps?=
 =?utf-8?B?SG9aczU2MzhkR3htcTRYOWl2WUNhK0xnWGRRb05EVVl5d1RQalhTWDJVT1Ay?=
 =?utf-8?B?R2s3czZWV214d3ZhcHY5V3U3Sk9RbWc1RnZqTytPZ0N6RDQ4SnBzWnlvZ0lj?=
 =?utf-8?B?NnF1elNZVU91RFFSZTVWQ2NPam1YWWt3Mi9Pb0J5OGRJZGIzeUpjRE5iK2Yx?=
 =?utf-8?B?VVJKTjJoLys4VGNyanBnVHJrRm9vV2RNUi9sZUlhUjFUNUR2WFVzQUwzcENO?=
 =?utf-8?B?Q3dZTEp5ME9nYmVBRElxc2N1S0dwbDN4TUQ1RDd1LzV3VXdSdTBPUnVIMXVP?=
 =?utf-8?B?a0lLaWJ3Ri9IRm1tOVlWQXNoR1V5YmdxWExyVkhsL0lZR2g5bHNMbjVoZVJm?=
 =?utf-8?B?cUV0anNSYVVmZUlNc1FZL21CV1RWSmgvalJvUWQ0bSs3N0kwalJFdzFDbWV3?=
 =?utf-8?B?VzQ0ZDdhWXZsWFFKL1R1b1JPdStsbGxtSGlKU2dwc3dxSUhWZlhMdEN1Z3VL?=
 =?utf-8?B?R2Yxamc4andwS1B1eXhwbWpsM1J4OGJ4eGplTE1Gbm5nYmxSS0pEZ2xuTjY0?=
 =?utf-8?B?MTNDR3hIU1dOQ0ZKZVJKZFZvZDlQUmZjUU9EOG1rZlNlYit2VjkyRGUrV1N3?=
 =?utf-8?B?ajR0ajE3Um9sUWFTTzVtQnRWa3B4TUVzM3JIc0tFQjJSa1VMM205Tm9Ic1dl?=
 =?utf-8?B?cEhUZTZhemRQaU5aNnd0UEVvRm8xWkJwN2ZGZkNTaXdIakZxSmNrZFhlL2RQ?=
 =?utf-8?B?Wi9FUkdjNmRJK1BWcmlYSHl1aEMxdXBnZG5Jc2EzcUQ1MHJEZVB6Tm5UbVov?=
 =?utf-8?B?cUZlNkVhQ1E2Uzh1VUQwNUdaVVN1bFpWUkJhVkRFVjlXYTAveDZuUHlRaHNn?=
 =?utf-8?B?enp6a2kySVNHWWpCUUIyQ1NMUzgxenRER20zbVpwN3oyT3VYUWZ4b1JmUmFr?=
 =?utf-8?B?OTVwSlp4aWdGUklHMHJTeTgyNkcvOWFzTnF4Q2g3MU9ldTVMSVJwdlR4c1hi?=
 =?utf-8?B?YVJTMExSaTFtOVlGOFdRTngwWDlXejJIUWtCUS9QT1BRQWtjbEhiOE12Z0Fz?=
 =?utf-8?B?amFsaTFUREN0YU1iVklYUnBNL25OejNQUjJVUVNRV0lGbmJ3TDNkb0tDSHZv?=
 =?utf-8?B?RW5NeUpQS3FTZFZSQzA5YTY2aloycjZTWE8wS1lha0JNRktJZzQvRFpIQWxq?=
 =?utf-8?B?bUlBcnFiaWF2Z2NTc3Y3b2YzNlRueU90aFBVV2NoTitJY0NSdjhvMTlnYTV2?=
 =?utf-8?B?cER5VnU1aTNzMm9QN3RqWFVxUjZ6cUxLOG12Q0lXeFQ4eStLWm5YaWxLMUVD?=
 =?utf-8?B?TVd5a0FVVjltajhIVzRKa2FZbTdmQ29xWHBOWG5TR2Ezd2lncTVaOTRIcGI4?=
 =?utf-8?B?bVdIcmJTeVduUS9oaWVLQUJSWlZKRGRiRXF1ai9zODJvSHhqNTg0anBYTVBu?=
 =?utf-8?B?aTVPNnovdHBEenpvbW5vK2R2YlJROVpKcjlSYVZ3MmQ3ZVk1Z3RhTCtEdGxL?=
 =?utf-8?B?NVJTeTdFbVV5aXFvVDhJbHhHTVQ1Y1hBT0FsWWFJZ2ZuRHB0OUVrZ0M4VFZR?=
 =?utf-8?B?aTBRREJtTUFyYUxYeTlIWksvMlVjaWxQVlBaWnZubGF1aFMydENaU0VlaVA1?=
 =?utf-8?B?VGd5bGc2dWpBUlBqODNxdXpPZTEwRXNyRXlOYlNGZ3dnTUhRZ2NWUGg0d0RL?=
 =?utf-8?B?SVU0RnptYjZXaW5DZ0lCSzhUN0I1RHU0VEhVRnRnTy80ekFEcDNrOWVzK003?=
 =?utf-8?B?N29EcjM5RjBBU3BBN1hRVnF2cHQrK0t1WjRTWFd6WWVQQ045YllWYkhDOTZu?=
 =?utf-8?B?TkdUVXF1NkxuNHFkVkpEM20zSjAxNmUxL0pZU2V1TEdwRlRjTys3RUUzZ3Vh?=
 =?utf-8?B?TndDTzREMTRVN3FLK0djcE9LblBvdEdCNXdXN3U4Rk5pdnMzQ1oxKzh2cWdk?=
 =?utf-8?B?bFpzNkpqTjhRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnFoOFFLYmJrVmRRa1oxM0t5VUdNcVpmKzlwMzdTNXJ6YVdXYUhtZitDdFJK?=
 =?utf-8?B?ekZVRjFvOWcxdWR4ODdZQWsvNEJXeFN2OTgyb2xua1pnT0N0dXhtTVdRc2ZR?=
 =?utf-8?B?eGxzMXIzait6UHJkVlMxOCtJdzRkNlpXV2VXUEg1Y1RxVmxvSjdiSWZRVVBq?=
 =?utf-8?B?azhORTE0OXh6c2IvR3JvRllsclFFOUlSTjJTNFNRVmx1NTRBUHRKM0Q3a1BR?=
 =?utf-8?B?ckQ4NE90MEw1SGZ6OE9TQmpCNmpnWGVLNGpoaXpVOXNWRWNzUllMOGFqOXNk?=
 =?utf-8?B?VjFRVzJvREJhTXNBRnFSVTJRdWlzeXliU2dSWGVZb1h2c3ZELzVDZ2dpOWxC?=
 =?utf-8?B?dXJIWlN1UUxLd01xMjdNVXJiRFpsNU1NOVRQMlV6V2ZQbE1NSzR4cFVWUGN3?=
 =?utf-8?B?bHY0ekFkSTJXcnlUaEdyTDIrY3psVnJEa0lKYWpMVU54NndGRC8wTE9rZ0lv?=
 =?utf-8?B?R0tDU3FsaitsZFcxNFpseE1na2hpQjFoQWZRQzkvSmJDUHZjMytGU1FETnlp?=
 =?utf-8?B?a2dBMlpCQUtyaU51QzYxRmdCUmd0TUluNWlrMHVKa1hCeGM3U0pBMFJDMUlz?=
 =?utf-8?B?cXM5emNpekdzd2taUFdEMUFSZ0hFWXdnUUVHYUROcjlxanpSZUF0ZHZzTlhP?=
 =?utf-8?B?VjJpZm9LS3RLTzRSK1hKYlYrSDN0NHZHTnBoaXAwTitGOU0zcUhvT0VhMStz?=
 =?utf-8?B?WExYek9QTXpQNWZGRG5kWm52Zkt1dEhHRG03RlFkaVdLbVJTcElkZk81NGht?=
 =?utf-8?B?c0xNZG1CREpoZHVPR0dPWkF3MFFpb3RhQzZMK0Z3b1FJMTFXTnllUWVZdC9r?=
 =?utf-8?B?a0ZmbnlKUHVKR3pSbnFIZFRTeEh5VWV0VWRTaWwzbDNlVHcrZHdxd1pqMlVL?=
 =?utf-8?B?RkpPbVNzSDNtYlJHeFVZKzRKTmRwaEU5L0QyMkdmZDFLUURVTUJqWVdtYlo0?=
 =?utf-8?B?YXQxRXhMNjI3dUxKMTlxekoyOHoxbjdBWFBWRzJSa0VQVFd1UG5WWHlzN3c1?=
 =?utf-8?B?T09DRFpTaWFqaERQcHpTZHVtYWZPNGRMeDZxK3NPUDNvSjNmZFlYTDVDWm9q?=
 =?utf-8?B?a09FQ1Y4Nk01RllpS1RPeWtZSVc5ZE5BMUNxdW4vTm54Tnh2b21NOU5NNVR4?=
 =?utf-8?B?ZnJwQ3E2RHJjaC8rUlBzb1cwbFYzMUJoSWlVT3c4NGZnd2xhbHp3R2hvcnNE?=
 =?utf-8?B?MnUxQWlDelQzbVoxQ0lqOW5BalM3cTVRUTNlYkNLUVRWN0ZhQ1VvOTFyMzdC?=
 =?utf-8?B?NmJ4bzBja1dqWVJtc1d6YVZMdGtXck55ZlY0eURZbTNqanl3TDlIWGpxYTI3?=
 =?utf-8?B?TytMdzFSTFVOZ2Z0dHlqMzJWdytZdzE3NHlzWjZXalhmT2hnYW8yazNheGJy?=
 =?utf-8?B?NHh4NERNL0VGWTdkbUhkSWQyWDRaaFZsWkYxYVFIQ1NwKzk4RzdabzJLTi9m?=
 =?utf-8?B?QTRhU0hHYjIvWVVsMUlBZ015OU1kTU1zNWRZc0QzWHIyQmtyVm1HV211UTgz?=
 =?utf-8?B?cnBCazIxbnJjM1dMOEx2aVlPSC9Vb0Vwa0hsVnpxaXY2TWI0ZXB5MStyUmMr?=
 =?utf-8?B?M0g4cGRlOWExZ1laNGVFNk14NktydUhxM3E1WHNuTGx4aU9HNytPYkxJMTI0?=
 =?utf-8?B?Z3lmWFhkNjQ4V0RKZjJqZmtvRXZJK09hMDg0dEFJakJuY1ZQSWZ1K21PcDVM?=
 =?utf-8?B?aGR6MTc4dG5KRFZIQnNSYWtWckExdW4wNUhieFd4SlZSczNRV0NIWHN2aDVr?=
 =?utf-8?B?cjJhcVBqaUNGUklqRFBYOFEvZkRyV2NrVHV1VW5yZmhHNkNrblNjUnVWVi9j?=
 =?utf-8?B?MVgydmhnUmV0eUNMamxOM2NxTW5FSW9tYkJKNFJSa0ZzYVV2ZE4xemE4SHFZ?=
 =?utf-8?B?YjlzM2ZRRmlrSjc2MFFxLzVuUldLbDBPdFdsak9LUkNlUVAxcHVXUnJVbG81?=
 =?utf-8?B?MVpRSGxPdkFRV3puM2dKbW1KVER4NWlrWmJoUFNsbWNlYVh5Si9VWGFpUkYv?=
 =?utf-8?B?RnVEK0o3bndrdUZ5cVI0empjY0loSCtwV1VwUG9LYVBucDdselMzQkV1WTl2?=
 =?utf-8?B?Y1lET3oydmpFWUZVbytVdHlEUVlzTDBvL09neFVRQ0dDVXdxdDZJc1JyQ1E4?=
 =?utf-8?B?ZjFJUjZIWFY3WEROVU03WWJJUkhzbFd2SVBjZEJYRG1GVEg4c3hsMGxUSm5h?=
 =?utf-8?B?N1dtQTJJdlVnRUJlZ3hXVnhSQjJpNnZVTERsK05WTTIyek9Ic1VOb3Z6U2M2?=
 =?utf-8?B?OGVEcWFIbUtWNldtUUlOM00vODZ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FD8F460C915FEE4B95F66E1FF4EDAAF3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33c363fa-5797-4ba4-7f50-08ddeb6c57f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 04:34:32.0310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wD/GPTiSwTGJ4nQ+3A3PCSkk4kOkXBUAYBCu1j2q35UqobFqmF5KYHNwbeyLB3RwCDCEN8flQZzVa530IyZ4PDi5kjH0MpS53VN5YjgtvEQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8237
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
NTAwIHVzIHNsZWVwIGluc3RlYWQuIFRoZSB0aW1lb3V0IHJlbWFpbnMNCj4gYXQNCj4gMjAgbXMu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
Pg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3Bs
bC5jIHwgMTEgKysrKysrKy0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvdmx2X2RzaV9wbGwuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
dmx2X2RzaV9wbGwuYw0KPiBpbmRleCA4M2FmZTEzMTVlOTYuLmYwNzhiOWNkYTk2YyAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3BsbC5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaV9wbGwuYw0KPiBAQCAtMjUs
MTIgKzI1LDEyIEBADQo+IMKgICoJWW9nZXNoIE1vaGFuIE1hcmltdXRodSA8eW9nZXNoLm1vaGFu
Lm1hcmltdXRodUBpbnRlbC5jb20+DQo+IMKgICovDQo+IMKgDQo+ICsjaW5jbHVkZSA8bGludXgv
aW9wb2xsLmg+DQo+IMKgI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPg0KPiDCoCNpbmNsdWRlIDxs
aW51eC9zdHJpbmdfaGVscGVycy5oPg0KPiDCoA0KPiDCoCNpbmNsdWRlIDxkcm0vZHJtX3ByaW50
Lmg+DQo+IMKgDQo+IC0jaW5jbHVkZSAiaTkxNV91dGlscy5oIg0KPiDCoCNpbmNsdWRlICJpbnRl
bF9kZS5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+IMKgI2luY2x1
ZGUgImludGVsX2RzaS5oIg0KPiBAQCAtMjE0LDYgKzIxNCw4IEBAIHZvaWQgdmx2X2RzaV9wbGxf
ZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyLA0KPiDCoAkJCWNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjb25maWcpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoZW5jb2Rlcik7DQo+ICsJdTMyIHZh
bDsNCj4gKwlpbnQgcmV0Ow0KPiDCoA0KPiDCoAlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJc
biIpOw0KPiDCoA0KPiBAQCAtMjMxLDkgKzIzMywxMCBAQCB2b2lkIHZsdl9kc2lfcGxsX2VuYWJs
ZShzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gwqANCj4gwqAJdmx2X2Nja193
cml0ZShkaXNwbGF5LT5kcm0sIENDS19SRUdfRFNJX1BMTF9DT05UUk9MLCBjb25maWctDQo+ID5k
c2lfcGxsLmN0cmwpOw0KPiDCoA0KPiAtCWlmICh3YWl0X2Zvcih2bHZfY2NrX3JlYWQoZGlzcGxh
eS0+ZHJtLA0KPiBDQ0tfUkVHX0RTSV9QTExfQ09OVFJPTCkgJg0KPiAtCQkJCQkJRFNJX1BMTF9M
T0NLLCAyMCkpIHsNCj4gLQ0KPiArCXJldCA9IHBvbGxfdGltZW91dF91cyh2YWwgPSB2bHZfY2Nr
X3JlYWQoZGlzcGxheS0+ZHJtLA0KPiBDQ0tfUkVHX0RTSV9QTExfQ09OVFJPTCksDQo+ICsJCQnC
oMKgwqDCoMKgIHZhbCAmIERTSV9QTExfTE9DSywNCj4gKwkJCcKgwqDCoMKgwqAgNTAwLCAyMCAq
IDEwMDAsIGZhbHNlKTsNCj4gKwlpZiAocmV0KSB7DQo+IMKgCQl2bHZfY2NrX3B1dChkaXNwbGF5
LT5kcm0pOw0KPiDCoAkJZHJtX2VycihkaXNwbGF5LT5kcm0sICJEU0kgUExMIGxvY2sgZmFpbGVk
XG4iKTsNCj4gwqAJCXJldHVybjsNCg0K
