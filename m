Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7465BDD707
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 10:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEB0210E338;
	Wed, 15 Oct 2025 08:33:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ItScevO+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF6110E338;
 Wed, 15 Oct 2025 08:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760517209; x=1792053209;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=bRCDUYhu1BJ3a7FzYL9RrlNFZvZx0hOCeQhUMOkrW7I=;
 b=ItScevO+FRM/7Oz2Zvn88LNE9zN3tKJTNzKc3iq/RnqomNdc65Zbh48y
 qYxVlBrOra83pneQnrLaHYlq+WtFIrowjinilr25x0K4jJ8pclo0YU1jB
 ipNz9MUTh13+SFIMhvp4QV232UqY/KfTJgrz0qBMN5HLgmrpER40vRB58
 KNnbWhsmhdGK/PsQAZvb7HENgA7GrHO4JfMdVJgJ8XJ+coZxqStEvQkzb
 pkZjc3fTNzWclVB71GQz33/lzPkfmlaks1s9U6ufZ6GK+Jq/YJ88/W07+
 Vff+L/8AEzuYH9KPL2V6MegRJeL1MZfyNEspzFhPebr/X4UL7lfuP5x3r A==;
X-CSE-ConnectionGUID: VzcYk9SxRKqzvMxR38+qqg==
X-CSE-MsgGUID: hzUI696nQPGtlN0RINPtyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62393096"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62393096"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:33:29 -0700
X-CSE-ConnectionGUID: xvqdxR/SR/ewpKNgQRttgw==
X-CSE-MsgGUID: hLOSBGECQOeypiDUnegsRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="181327586"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:33:30 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:33:28 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 01:33:28 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:33:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G3j8N5DTIJNB3ZVM47HqigiOR08N4FNq8oycyFAS0MR+ksVprN0mMrs7Ob7/5pLQ7juQO61NmD4uzJ1OfSOywaN9ueHDiQ9zxCVP6uLmuviDYGS3T/sAVd6jeNHcGCqnXC3n6Y+1fcc90Ckh7J8rEtydWgoapMMWjc6YUXWTiFUYBlLCy6kZKDSXx/R946HoTnnGYZGhP2JpznrW4xevO3sJ508c7A3XftY2UChpcVhP+ThjdhjvC39P+g617MSwkVBXgdiyY9x6gbhrqCqRS/W2DeCD3iHEiKTqc2tbejCO2/1J0SyLb4A7j+fKs9TdhWK8W3+jVxn+6RtCOcQOrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bRCDUYhu1BJ3a7FzYL9RrlNFZvZx0hOCeQhUMOkrW7I=;
 b=yT93E7P1Nrhvkdh2o2Wh1s1sfHZzFkqT7yVqT5X3pKRkroKjjycIcQN1FbVRA0wu7vXWprZPOk8UQph5n/9uewJGeKpTowDg9Qt3Icdu56yx0EmTlJFrzdNHMkML+kmRYjK5eC1B7T19K0S7E1Eb4xVUm1gMT5HdKxBGQmc016xTHKiu9OSudrkT7Soeai5BSue39ZUayoj0JlvZ1apkSw7E9cEzqXu5pFNBpoSvC0wWruFdHknc1LECkqW5Bjf/rxBqkHtgrAWTezVARjZr1J3FcAb++yEW8SgAxdQI9n28utr2XgJeKQaQGH8GROEmCJ/qa6yHSH9Wn25l0nuKNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by SN7PR11MB7019.namprd11.prod.outlook.com (2603:10b6:806:2ae::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 08:33:21 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f%4]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 08:33:21 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 08/10] drm/i915/psr: Check if final vblank is sufficient
 for PSR features
Thread-Topic: [PATCH 08/10] drm/i915/psr: Check if final vblank is sufficient
 for PSR features
Thread-Index: AQHcPaZT44GOBlBLuEuyzQyRWpIWGLTC3sAAgAACrAA=
Date: Wed, 15 Oct 2025 08:33:21 +0000
Message-ID: <6e1ca1f0f6e8ec9be4592733f0cbef99a8f8a321.camel@intel.com>
References: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
 <20251015072217.1710717-9-ankit.k.nautiyal@intel.com>
 <6aa087759e3b2467ebe47d25309afdc56a4e986b.camel@intel.com>
In-Reply-To: <6aa087759e3b2467ebe47d25309afdc56a4e986b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|SN7PR11MB7019:EE_
x-ms-office365-filtering-correlation-id: f44a6205-818f-493e-2721-08de0bc57fb2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RHBZWmJtMmdlaFpibmtqamw1N2grVlp0aXpLUWQ2ck95U1Nrd0s1NjNrZ1dh?=
 =?utf-8?B?dTd6YTI5VVJEUTBhWTZYSzFOL2I3c3FaM3RHRmw5bitYYkhGOUlYZGVkbVdS?=
 =?utf-8?B?TXBxNGJ1a05HdXJvR2cvUHJDRExNSFhXYXBjZSt6eSt2T1o0aStWKzZUcVpl?=
 =?utf-8?B?bWF1QnVOeUxvSjBJTkpJZkVFLzMwaGpZdHdRSTNFdmRRWk9UZDZ1aGswVWlj?=
 =?utf-8?B?Yk90QlNac0dMKzF5Ui9KdXRyMDVET0doQWoreDZRckNLRWwyRE0wUHpva1lY?=
 =?utf-8?B?RVJQYlkrdmJsV25VSnBFQnIrZm9hbDVqcXk1eEY1cXdmaGNIQktFUjJMR05O?=
 =?utf-8?B?RnhCTml0alNHNzI3cGJ0NElxMWpWcE9VdW9COERqRHhsalVCWkpsOE9lUkpw?=
 =?utf-8?B?ekFFaG80SFJzUzNQNmJFd01tNGpUeWJDMUZtZGdLRFlqZ2N5aitMN2JoUDc0?=
 =?utf-8?B?QmQzSk1NWFM2MUhES3JTSm9oYUp2Q2NJRUNERm0ySkM0bnZ2TFRoaVNXek8v?=
 =?utf-8?B?blNJalZrbDd0MHB2ZDlqOXFHUVdLSUhlZHh3Y0VrWlR5WllCTXIwT1NrbWp4?=
 =?utf-8?B?TkN4QlBrdm9TcVk3T1hoQW05ZDJrMWZJL1htOHh2dnJZVlF2UzdHRnZlWU9I?=
 =?utf-8?B?RG5jdjBhOFdIQjV0N3huNmt6WXRTa2RsdGE0QmVwTGdtUytFajFIaTc1Tk5s?=
 =?utf-8?B?c2VXTENLeXBXbHBxbFR3MzkrYVdkSDMxQkpXdUI5S3VuT1UxdFp0WUIrZEp3?=
 =?utf-8?B?S2x3elQwYkdib2JCNHdicVMwT00xRjZSOERBNkREK0pIeWU0c0Q4NjVocjNO?=
 =?utf-8?B?dXVPWUFwd05yNlFVZWRNbmo2UVFYbHhYeWtCeGdRc1FELzU5SlJkUVNUSytJ?=
 =?utf-8?B?WC83d0VINjdZRTJDdXVyOFJxKzBjaHhML2Z5d0p2SXBQUTFOQnRseEFJYm9C?=
 =?utf-8?B?cjBValZmZ1ZrNzh6R0JQdzR3b2ROQ0I1Rk9vQXY0aVgrTUFCWEY0RlQ5SlV1?=
 =?utf-8?B?QzJzRzlTODMvUGN6Qno3TjhVL1hxd2oxNFpBQWtlU0l2d2lQQUpFcHY1NTdv?=
 =?utf-8?B?VlNDZzIvMzVtcEpCZDZXbjdrbVBrNHp3S1plMVBockM5cEFmWHpjaWx1blhT?=
 =?utf-8?B?TkR0TUFycGY5RWhKNmVTUXJNditJd25EVDBjdzVEZ0w3dlIxaUl5dzNhVnVn?=
 =?utf-8?B?d1I3cEJDeTBqOFdyQlpXcnF6dDJFRldxZ0dJSnFTamVIb1lYZUJjVWk0cFhG?=
 =?utf-8?B?REdWOS9mZ2xkZmROMXl6S1p4Tm5la2xNa3ZNb05YMlFSRDJLQi9vMG1xY0Rn?=
 =?utf-8?B?eXpOOUNLZ0YwZ00reWlkblFMWnhLcE9HSFlWN2hXZ2kzUmU5UVpXMHlleGJ3?=
 =?utf-8?B?T2RiNCt0a0QxU3V5ZE5lRWhtVGpFZ1RRUXUxZHdxZkRUeHJjYjgzTjlhTXhB?=
 =?utf-8?B?UW9MdGhaUC9FWmNQc3laUlVDajU4SG5zTGVlblF6bmZmbXhZZ2tDWmN6dEEy?=
 =?utf-8?B?eTFDTitiM3Qxem1VWWMrSVJvZ3ltbjUvZXpPM2ZBSGRqUzBsNnNsZ0EwaXox?=
 =?utf-8?B?alE3N0x4QVRVTThoUHhrWXNFQi9hK0UvSG95ZXJxdGxla1pMUnVoVWlDNjNw?=
 =?utf-8?B?c0pIYWsrdzVFUE1yRzBRdlJ1ZzZIVlcwK0tlV0JjT3lRblRSL040TkhoYTgr?=
 =?utf-8?B?M3cwZElGeWNDRlFqclNTWjNhVEhqTUYyNkloQ3EzcmVZelFWYzI1Y0NMb2Fh?=
 =?utf-8?B?ZnRpNjZqTXlhcEdjQ3F1cUdnb2MzcHJDblNsanI2QXhoanJQT1RLaVhCclo3?=
 =?utf-8?B?c0tBWllUR2dpWm9SWDA2UXN2aDFRbDZjSW51UXlXVjEvZFBwb0EwNWRVNnQw?=
 =?utf-8?B?L3M2VHdQOUpJdG1EZ2MyWUxuTEZURnJMcVV1VXpPL3liNXh5eTcvWGs0U3VL?=
 =?utf-8?B?MGlaVjJzWnhoQVh1WjZ0RVNBQld1dTlHN09ZRkV3NytIL3RRdmpmVnlFc0hG?=
 =?utf-8?B?U1lrNTE2bk95dlhrMmNpRncvN2VoMnZ5N0JYYUhyVU40UTlIWUlmNEtLUFMw?=
 =?utf-8?Q?4o9IJL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NU8yKzZZN0g0YWRJQkhHS3lGRGNsSHNVNWRURGJkNTdlZUNKaE5Xejg5Sytz?=
 =?utf-8?B?b1FKb0xVM0pWZXdhVUpGMVlQRWJDZ3BCMmhCQmNtSkFoS1owRnhWa1dVcUQ4?=
 =?utf-8?B?MWJyOTR3VkQrVW02Vi9iTmhnMmpBSWw5M1ZiSmlvckxyU09nczBoMEZ5ZlNn?=
 =?utf-8?B?QlpXUHhPMEJxMlhDV2RWcEMxTldQODFPL0lHSVZyelcxNjdCWFc2cnFIL1dr?=
 =?utf-8?B?OXZyZGE3Ukg2VUI2T1ZqUjQvUndILzhqOFZBRGlhMzdDNHFMa1l0RWJOWGE2?=
 =?utf-8?B?K3M3czFDUWZmK3pkVVNQd3VUMFBxNHNmbGxCcVlLYjFSRkdMN05pdmFTQ00y?=
 =?utf-8?B?Sys1QTJRN25ZcVA2bDhRVUREYXhHSTYyVDVsQ2hBTHVxZFhXMUpnWHNYcU5o?=
 =?utf-8?B?d0lVUGdwNjdqcjBMMXByZEVUNzNYLzVTZmZnWmI0MnM0MTBQc0lTKzM3ZjNs?=
 =?utf-8?B?UVBNeGM0Q3VWd0tkckJ5SnROZStrQjAzTDFFbE83RFQyYVprb0NjcFpmVWpL?=
 =?utf-8?B?NjQ0TzNWSThOd1VBWDQyaXJ3dUw4azMzMGRjaG5WZVJwZkhWK1V4MDMvczJ5?=
 =?utf-8?B?c051K0dCcnVUZ0FCUmpOSUh3STdjRWVoNlU0aG4zSTBQTFJEcm9XWnVkdTRD?=
 =?utf-8?B?QU1CTnBNb3RSdUhxMlBHdkRQcmt3MHF2TE5udWczVVNGMXoxRkdDbERpd2Ro?=
 =?utf-8?B?dTk5U3UrSFpiRGJWWTRyWkIvcDhKMGtZZ3dRdG1ZclVEYVVONmFtcVlSaXAv?=
 =?utf-8?B?Wi9MVEhjbm5IVDZ6QUl1dWI3K0RWTnVKdFBBbXBDYmhwZzJBNzBybDdWRWNu?=
 =?utf-8?B?MEw5UlNJS2QwY3NDZnZPM3ZYVW8xd3JrNFVmNTRjZTFzeVNtejIxWGZHTjNl?=
 =?utf-8?B?T1gwSkJnWVQ2YTlOQVJuZmVrdEt6bHgvTGZZVENtYTQ5elMzckJnK3VTUnVU?=
 =?utf-8?B?S3FFVGR1OXoxYU0xVVFRMVBEYlhYWWx4K1JvQ2xuMmhjdHh1TFBYRldHenZH?=
 =?utf-8?B?dkV1bS9xZklmZEJlUVBXc1RaUmZQZ255UjJNVEZrRXlsMmhtNzBEMUErNllJ?=
 =?utf-8?B?elY0S3plMy9wSTZMSzRiQm5aaS82S2dnTStLQmlQVWtNb3VQNmhvY0F2TEYw?=
 =?utf-8?B?a2V1NWJwbmhCVUVXQm8zbE9VZ0dSUzlvMVlBS3E3bmNmMzRCYjF1c2I0ZDB0?=
 =?utf-8?B?NTZ6b0Y5TDRzbjJBYkdGZlhBdTVPWm84QXlJWlM4anJPYTNNSkdnUDgvZ1ZR?=
 =?utf-8?B?V0NnelFRT0FTL0xCcW1zVTJJSU1rcmxMa1lqaGplOGY3d05LZ09iSUJHNlNZ?=
 =?utf-8?B?TW5WTWo1T3QrUElzMys5RERtZHBaS1ZqZ2VMcUhRakg1NkxWYVRHMFhINnQ4?=
 =?utf-8?B?QVZEdlc1WVo1SXorcW9HVWJ1ekdUcUxEQU14OERJL0ZkNEs4dUllenovdkwz?=
 =?utf-8?B?TmgybVdFd3AxVG9JNXNsUWtWeTRiU3ZIMGxvVFYydXh2bTEzZFo4VUo5MmJJ?=
 =?utf-8?B?STQvSFl4RUZ4d0g3REcrWTZOYWNsYkF6WW8yd0JQWDJjQk5iaURINHJRZTBa?=
 =?utf-8?B?bXZmVTFZYThsWU1BenY4aGtqM2dUaGI0Tnd4blVFbXhBME93RmFQRCtPaHlC?=
 =?utf-8?B?QU1iOExZR25tQUI3K3dqOW12eDc4aFNuSWRPeXlPM2c5UUhCdDUwL3czQlYz?=
 =?utf-8?B?bnVsV0V4WXVyVjQ4VjNlNTJRNHI5QThLMWVNTktkcU8rRkZoOW0vQjBnN0dP?=
 =?utf-8?B?bmZzVDhVRXA1YXVNS25RUGtXVFlBVVdIY3VaaG1NNzltb0VFRENSTDZ0YW9n?=
 =?utf-8?B?S2dGTDMvVGhwNkQ5ZnNjb0poYkNXSXFOUjhPSnlWZlUvM0puS2pydDNITWFl?=
 =?utf-8?B?Q2FOVzlOSTVsaTIyUWxLa3FJaFB6VWh0VXA1Z0tvYlhmTVN4eEtFRVhJQ05M?=
 =?utf-8?B?Q2YzN053Sk9BbUFGMVROVy9FUUVPWFM4RE5SbC9kcGM2UjFFdGpydjBhTjlO?=
 =?utf-8?B?RUNpREorQXR2S0w2TS9abTBxMGNCRnI2ZFkwaWNoSWEzaWNEVm9nM1g3eER0?=
 =?utf-8?B?OFhHbC9aU3huYi9NYUpQNUtaMXVUWmVPOE50bU1MVXlDc0FHcGt2YXlXeFFX?=
 =?utf-8?B?ZnU4ZklpcVRrQjRsc282Q2FxNnVGbmxJN2dzTjJwblExTEdwWDhYRUZqZmF1?=
 =?utf-8?B?aE9YOVdGWTZvMmM2aWJ3a0hselNQNCtvVzNpNklIaVl5QXNHNEowdkdVRkxq?=
 =?utf-8?B?a0tpUi80cmpJc1JTcmNteHF2NTdnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FE2A4823EA101C4AB16BBF06166F74F1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f44a6205-818f-493e-2721-08de0bc57fb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2025 08:33:21.1556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yg/xQ8GKcG7Q6sVYWBgLLCIHlsOvpTBF4tGYG19Z6gt5sMfnxF/YzN6oaUweEgS2G3ikIgp9gEmftcSuzqcFVFuzjp9uWH1Flr4ipJIV/6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7019
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDExOjIzICswMzAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFdlZCwgMjAyNS0xMC0xNSBhdCAxMjo1MiArMDUzMCwgQW5raXQgTmF1dGl5YWwgd3Jv
dGU6DQo+ID4gQ3VycmVudGx5LCB3YWtlIGxpbmUgbGF0ZW5jeSBjaGVja3MgcmVseSBvbiB0aGUg
dmJsYW5rIGxlbmd0aCwNCj4gPiB3aGljaCBkb2VzIG5vdCBhY2NvdW50IGZvciBlaXRoZXIgdGhl
IGV4dHJhIHZibGFuayBkZWxheSBmb3INCj4gPiBpY2wvdGdsDQo+ID4gb3IgZm9yDQo+ID4gdGhl
IG9wdGltaXplZCBndWFyZGJhbmQgd2hpY2ggd2lsbCBjb21lIGludG8gcGljdHVyZSBsYXRlciBh
dCBzb21lDQo+ID4gcG9pbnQuDQo+ID4gDQo+ID4gVmFsaWRhdGUgd2hldGhlciB0aGUgZmluYWwg
dmJsYW5rICh3aXRoIGV4dHJhIHZibGFuayBkZWxheSkgb3INCj4gPiBndWFyZGJhbmQNCj4gPiBp
cyBzdWZmaWNpZW50IHRvIHN1cHBvcnQgd2FrZSBsaW5lIGxhdGVuY2llcyByZXF1aXJlZCBieSBQ
YW5lbA0KPiA+IFJlcGxheQ0KPiA+IGFuZA0KPiA+IFBTUjIgc2VsZWN0aXZlIHVwZGF0ZS4gRGlz
YWJsZSB0aGUgUFNSIGZlYXR1cmVzIGlmIHRoZWlyIHdha2UNCj4gPiByZXF1aXJlbWVudHMNCj4g
PiBjYW5ub3QgYmUgYWNjb21vZGF0ZWQuDQo+ID4gDQo+ID4gdjI6IEFkZCBjb21tZW50cyBjbGFy
aWZ5aW5nIHdha2UgbGluZSBjaGVja3MgYW5kIHJhdGlvbmFsZSBmb3Igbm90DQo+ID4gwqDCoMKg
IHJlc2V0dGluZyBTQ0wuIChKb3VuaSkNCj4gPiB2MzogUmVzZXQgb3RoZXIgcHNyIGZsYWdzIGJh
c2VkIG9uIGZlYXR1cmVzIHRoYXQgYXJlIGRyb3BwZWQuDQo+ID4gKEpvdW5pKQ0KPiA+IHY0OiBV
cGRhdGUgY29tbWl0IG1lc3NhZ2UuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1
dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiA+IENjOiBBbmltZXNoIE1hbm5h
IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNzgNCj4gPiArKysrKysrKysrKysrKysrKysrKystDQo+
ID4gLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA3MCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+ID4gaW5kZXggMzgzZTZkYzFlZDYzLi44MTZhZDY3ZTMzY2QgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMTQwNSw2ICsx
NDA1LDIwIEBAIGludCBfaW50ZWxfcHNyX21pbl9zZXRfY29udGV4dF9sYXRlbmN5KGNvbnN0DQo+
ID4gc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUNCj4gPiDCoAkJcmV0dXJuIDE7
DQo+ID4gwqB9DQo+ID4gwqANCj4gPiArc3RhdGljIGJvb2wgX3dha2VfbGluZXNfZml0X2ludG9f
dmJsYW5rKGNvbnN0IHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+
ID4gKwkJCQkJaW50IHZibGFuaywNCj4gPiArCQkJCQlpbnQgd2FrZV9saW5lcykNCj4gPiArew0K
PiA+ICsJaWYgKGNydGNfc3RhdGUtPnJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSkNCj4gPiAr
CQl2YmxhbmsgLT0gMTsNCj4gPiArDQo+ID4gKwkvKiBWYmxhbmsgPj0gUFNSMl9DVEwgQmxvY2sg
Q291bnQgTnVtYmVyIG1heGltdW0gbGluZQ0KPiA+IGNvdW50DQo+ID4gKi8NCj4gPiArCWlmICh2
YmxhbmsgPCB3YWtlX2xpbmVzKQ0KPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiArDQo+ID4gKwly
ZXR1cm4gdHJ1ZTsNCj4gPiArfQ0KPiA+ICsNCj4gPiDCoHN0YXRpYyBib29sIHdha2VfbGluZXNf
Zml0X2ludG9fdmJsYW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqAJCQkJwqDC
oMKgwqDCoMKgIGNvbnN0IHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19z
dGF0ZSwNCj4gPiDCoAkJCQnCoMKgwqDCoMKgwqAgYm9vbCBhdXhfbGVzcywNCj4gPiBAQCAtMTQy
OCwxNCArMTQ0MiwxNiBAQCBzdGF0aWMgYm9vbA0KPiA+IHdha2VfbGluZXNfZml0X2ludG9fdmJs
YW5rKHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoAkJCQkJwqDCoMKgwqDC
oMKgIGNydGNfc3RhdGUtDQo+ID4gPiBhbHBtX3N0YXRlLmZhc3Rfd2FrZV9saW5lcykgOg0KPiA+
IMKgCQkJY3J0Y19zdGF0ZS0+YWxwbV9zdGF0ZS5pb193YWtlX2xpbmVzOw0KPiA+IMKgDQo+ID4g
LQlpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0KPiA+IC0JCXZi
bGFuayAtPSAxOw0KPiA+IC0NCj4gPiAtCS8qIFZibGFuayA+PSBQU1IyX0NUTCBCbG9jayBDb3Vu
dCBOdW1iZXIgbWF4aW11bSBsaW5lDQo+ID4gY291bnQNCj4gPiAqLw0KPiA+IC0JaWYgKHZibGFu
ayA8IHdha2VfbGluZXMpDQo+ID4gLQkJcmV0dXJuIGZhbHNlOw0KPiA+IC0NCj4gPiAtCXJldHVy
biB0cnVlOw0KPiA+ICsJLyoNCj4gPiArCSAqIEd1YXJkYmFuZCBoYXMgbm90IGJlZW4gY29tcHV0
ZWQgeWV0LCBzbyB3ZQ0KPiA+IGNvbnNlcnZhdGl2ZWx5DQo+ID4gY2hlY2sgaWYgdGhlDQo+ID4g
KwkgKiBmdWxsIHZibGFuayBkdXJhdGlvbiBpcyBzdWZmaWNpZW50IHRvIGFjY29tbW9kYXRlIHdh
a2UNCj4gPiBsaW5lIHJlcXVpcmVtZW50cw0KPiA+ICsJICogZm9yIFBTUiBmZWF0dXJlcyBsaWtl
IFBhbmVsIFJlcGxheSBhbmQgU2VsZWN0aXZlDQo+ID4gVXBkYXRlLg0KPiA+ICsJICoNCj4gPiAr
CSAqIE9uY2UgdGhlIGFjdHVhbCBndWFyZGJhbmQgaXMgYXZhaWxhYmxlLCBhIG1vcmUgYWNjdXJh
dGUNCj4gPiB2YWxpZGF0aW9uIGlzDQo+ID4gKwkgKiBwZXJmb3JtZWQgaW4gaW50ZWxfcHNyX2Nv
bXB1dGVfY29uZmlnX2xhdGUoKSwgYW5kIFBTUg0KPiA+IGZlYXR1cmVzIGFyZQ0KPiA+ICsJICog
ZGlzYWJsZWQgaWYgd2FrZSBsaW5lcyBleGNlZWQgdGhlIGF2YWlsYWJsZSBndWFyZGJhbmQuDQo+
ID4gKwkgKi8NCj4gPiArCXJldHVybiBfd2FrZV9saW5lc19maXRfaW50b192YmxhbmsoY3J0Y19z
dGF0ZSwgdmJsYW5rLA0KPiA+IHdha2VfbGluZXMpOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gwqBz
dGF0aWMgYm9vbCBhbHBtX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0K
PiA+IEBAIC00MzUxLDYgKzQzNjcsNTIgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWdf
bGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqAJCQkJwqDCoCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKQ0KPiA+IMKgew0KPiA+IMKgCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVs
X2RwKTsNCj4gPiArCWludCB2YmxhbmsgPSBpbnRlbF9jcnRjX3ZibGFua19sZW5ndGgoY3J0Y19z
dGF0ZSk7DQo+ID4gKwlpbnQgYXV4X2xlc3Nfd2FrZV9saW5lczsNCj4gPiArCWludCB3YWtlX2xp
bmVzOw0KPiA+ICsNCj4gPiArCWlmICghaW50ZWxfcHNyX25lZWRzX2FscG0oaW50ZWxfZHAsIGNy
dGNfc3RhdGUpKQ0KPiANCj4gTm93IGFzIHBzcl9jb21wdXRlX2NvbmZpZ19sYXRlIGlzIG5vdCBv
bmx5IGFib3V0IHZibGFuayB5b3UgY2FuJ3QNCj4gaGF2ZQ0KPiB0aGlzIGVhcmx5IHJldHVybi4g
WW91IGNvdWxkIGhhdmUgKG9yIGRvIGl0IGFzIHlvdSBzZWUgaXMgYmVzdCk6DQo+IA0KPiAJaWYg
KGludGVsX3Bzcl9uZWVkc19hbHBtX2F1eF9sZXNzKGludGVsX2RwLCBjcnRjX3N0YXRlKSkNCj4g
CQl3YWtlX2xpbmVzID0gRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCA/DQo+IAkJCXBzcjJfYmxv
Y2tfY291bnRfbGluZXMoY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuaW9fd2FrZV9saW5lcywN
Cj4gCQkJCQnCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuZmFzdF93YWtl
X2xpbmVzKSA6DQo+IAkJCWNydGNfc3RhdGUtPmFscG1fc3RhdGUuaW9fd2FrZV9saW5lczsNCj4g
CWVsc2UgaWYgKGludGVsX3Bzcl9uZWVkc19hbHBtX2F1eF9sZXNzKGludGVsX2RwLA0KPiBjcnRj
X3N0YXRlKSkNCj4gCQl3YWtlX2xpbmVzID0gY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuYXV4
X2xlc3Nfd2FrZV9saW5lczsNCj4gCWVsc2UNCj4gCQl3YWtlX2xpbmVzID0gMDsNCj4gDQo+IAlp
ZiAoIXdha2VfbGluZXMgfHwgIV93YWtlX2xpbmVzX2ZpdF9pbnRvX3ZibGFuayhjcnRjX3N0YXRl
LA0KPiB2YmxhbmssIHdha2VfbGluZXMpKSB7DQoNClRoaXMgbmVlZHMgdG8gYmU6DQoNCmlmICh3
YWtlX2xpbmVzICYmICFfd2FrZV9saW5lc19maXRfaW50b192YmxhbmsoY3J0Y19zdGF0ZSwgdmJs
YW5rLCB3YWtlX2xpbmVzKSkgew0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gCQlkcm1f
ZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+IAkJCcKgwqDCoCAiQWRqdXN0aW5nIFBTUi9QUiBtb2Rl
OiB2YmxhbmsgdG9vIHNob3J0DQo+IGZvciB3YWtlIGxpbmVzID0gJWRcbiIsDQo+IAkJCcKgwqDC
oCB3YWtlX2xpbmVzKTsNCj4gDQo+IAkJaWYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkp
IHsNCj4gCQkJY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSA9IGZhbHNlOw0KPiAJCQkvKg0K
PiAJCQkgKiAjVE9ETyA6IEFkZCBmYWxsIGJhY2sgdG8gUFNSL1BTUjINCj4gCQkJICogU2luY2Ug
cGFuZWwgcmVwbGF5IGNhbm5vdCBiZSBzdXBwb3J0ZWQsDQo+IHdlIGNhbiBmYWxsIGJhY2sgdG8g
UFNSL1BTUjIuDQo+IAkJCSAqIFRoaXMgd2lsbCByZXF1aXJlIGNhbGxpbmcgY29tcHV0ZV9jb25m
aWcNCj4gZm9yIHBzciBhbmQgcHNyMiB3aXRoIGNoZWNrIGZvcg0KPiAJCQkgKiBhY3R1YWwgZ3Vh
cmRiYW5kIGluc3RlYWQgb2YNCj4gdmJsYW5rX2xlbmd0aC4NCj4gCQkJICovDQo+IAkJCWNydGNf
c3RhdGUtPmhhc19wc3IgPSBmYWxzZTsNCj4gCQl9DQo+IAkJY3J0Y19zdGF0ZS0+aGFzX3NlbF91
cGRhdGUgPSBmYWxzZTsNCj4gCQljcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQg
PSBmYWxzZTsNCj4gCQljcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggPSBmYWxzZTsN
Cj4gCX0NCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+ICsJCXJldHVy
bjsNCj4gPiArDQo+ID4gKwlhdXhfbGVzc193YWtlX2xpbmVzID0gY3J0Y19zdGF0ZS0NCj4gPiA+
IGFscG1fc3RhdGUuYXV4X2xlc3Nfd2FrZV9saW5lczsNCj4gPiArCXdha2VfbGluZXMgPSBESVNQ
TEFZX1ZFUihkaXNwbGF5KSA8IDIwID8NCj4gPiArCQnCoMKgwqDCoCBwc3IyX2Jsb2NrX2NvdW50
X2xpbmVzKGNydGNfc3RhdGUtDQo+ID4gPiBhbHBtX3N0YXRlLmlvX3dha2VfbGluZXMsDQo+ID4g
KwkJCQkJwqDCoMKgIGNydGNfc3RhdGUtDQo+ID4gPiBhbHBtX3N0YXRlLmZhc3Rfd2FrZV9saW5l
cykgOg0KPiA+ICsJCcKgwqDCoMKgIGNydGNfc3RhdGUtPmFscG1fc3RhdGUuaW9fd2FrZV9saW5l
czsNCj4gPiArDQo+ID4gKwkvKg0KPiA+ICsJICogRGlzYWJsZSB0aGUgUFNSIGZlYXR1cmVzIGlm
IHdha2UgbGluZXMgZXhjZWVkIHRoZQ0KPiA+IGF2YWlsYWJsZSB2YmxhbmsuDQo+ID4gKwkgKiBU
aG91Z2ggU0NMIGlzIGNvbXB1dGVkIGJhc2VkIG9uIHRoZXNlIFBTUiBmZWF0dXJlcywgaXQNCj4g
PiBpcw0KPiA+IG5vdCByZXNldA0KPiA+ICsJICogZXZlbiBpZiB0aGUgUFNSIGZlYXR1cmVzIGFy
ZSBkaXNhYmxlZCB0byBhdm9pZCBjaGFuZ2luZw0KPiA+IHZibGFuayBzdGFydA0KPiA+ICsJICog
YXQgdGhpcyBzdGFnZS4NCj4gPiArCSAqLw0KPiA+ICsJaWYgKCFjcnRjX3N0YXRlLT5oYXNfcGFu
ZWxfcmVwbGF5ICYmIGNydGNfc3RhdGUtDQo+ID4gPiBoYXNfc2VsX3VwZGF0ZSAmJg0KPiA+ICsJ
wqDCoMKgICFfd2FrZV9saW5lc19maXRfaW50b192YmxhbmsoY3J0Y19zdGF0ZSwgdmJsYW5rLA0K
PiA+IHdha2VfbGluZXMpKSB7DQo+ID4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+
ICsJCQnCoMKgwqAgIkRpc2FibGluZyBTZWxlY3RpdmUgVXBkYXRlOiB2YmxhbmsNCj4gPiB0b28N
Cj4gPiBzaG9ydCBmb3Igd2FrZSBsaW5lcyA9ICVkXG4iLA0KPiA+ICsJCQnCoMKgwqAgd2FrZV9s
aW5lcyk7DQo+ID4gKwkJY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgPSBmYWxzZTsNCj4gPiAr
CQljcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQgPSBmYWxzZTsNCj4gPiArCQlj
cnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggPSBmYWxzZTsNCj4gPiArCX0NCj4gPiAr
DQo+ID4gKwlpZiAoaW50ZWxfcHNyX25lZWRzX2FscG1fYXV4X2xlc3MoaW50ZWxfZHAsIGNydGNf
c3RhdGUpICYmDQo+ID4gKwnCoMKgwqAgIV93YWtlX2xpbmVzX2ZpdF9pbnRvX3ZibGFuayhjcnRj
X3N0YXRlLCB2YmxhbmssDQo+ID4gYXV4X2xlc3Nfd2FrZV9saW5lcykpIHsNCj4gPiArCQlkcm1f
ZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ID4gKwkJCcKgwqDCoCAiRGlzYWJsaW5nIFBhbmVsIHJl
cGxheTogdmJsYW5rIHRvbw0KPiA+IHNob3J0IGZvciB3YWtlIGxpbmVzID0gJWRcbiIsDQo+ID4g
KwkJCcKgwqDCoCBhdXhfbGVzc193YWtlX2xpbmVzKTsNCj4gPiArCQljcnRjX3N0YXRlLT5oYXNf
cGFuZWxfcmVwbGF5ID0gZmFsc2U7DQo+ID4gKwkJLyoNCj4gPiArCQkgKiAjVE9ETyA6IEFkZCBm
YWxsIGJhY2sgdG8gUFNSL1BTUjINCj4gPiArCQkgKiBTaW5jZSBwYW5lbCByZXBsYXkgY2Fubm90
IGJlIHN1cHBvcnRlZCwgd2UgY2FuDQo+ID4gZmFsbCBiYWNrIHRvIFBTUi9QU1IyLg0KPiA+ICsJ
CSAqIFRoaXMgd2lsbCByZXF1aXJlIGNhbGxpbmcgY29tcHV0ZV9jb25maWcgZm9yDQo+ID4gcHNy
DQo+ID4gYW5kIHBzcjIgd2l0aCBjaGVjayBmb3INCj4gPiArCQkgKiBhY3R1YWwgZ3VhcmRiYW5k
IGluc3RlYWQgb2YgdmJsYW5rX2xlbmd0aC4NCj4gPiArCQkgKi8NCj4gPiArCQljcnRjX3N0YXRl
LT5oYXNfcHNyID0gZmFsc2U7DQo+ID4gKwkJY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgPSBm
YWxzZTsNCj4gPiArCQljcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQgPSBmYWxz
ZTsNCj4gPiArCQljcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggPSBmYWxzZTsNCj4g
PiArCX0NCj4gPiDCoA0KPiA+IMKgCS8qIFdhXzE4MDM3ODE4ODc2ICovDQo+ID4gwqAJaWYgKGlu
dGVsX3Bzcl9uZWVkc193YV8xODAzNzgxODg3NihpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpDQo+ID4g
ew0KPiANCg0K
