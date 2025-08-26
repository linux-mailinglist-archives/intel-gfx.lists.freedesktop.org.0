Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E699EB37353
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 21:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12DF310E37F;
	Tue, 26 Aug 2025 19:42:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uw4F0P6U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED48610E37F;
 Tue, 26 Aug 2025 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756237343; x=1787773343;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=ulF0sjIPQgShSfgphVqaa06xBhWZeNGLotqhub3+BxY=;
 b=Uw4F0P6UADf/44Dqkyp6bCe43LPW9f77P1N9AUknXRjkvTGCofrVGXzE
 5OSQU/j0fGZKF29pXiEXfR7tKIAi0/wMVS02CSQoyOTNOPg0yv8ih8ojP
 l7QNtDRjteLjLLoMm7kzxAeHmpSLsExntUa4s+Pns0Wd9YNQd+GqcOlKj
 Ug0VuuUOWR3fuMqsRQz9Upvdcq+nW+39YeRvyOUMgdPI/ET+DCfA1HFDg
 +Im/LW8Qkd9+3QoR8ciyNcnvkqlZMdfOMJj31Q0Fm/eGeLm7YMIy/PtuD
 RtNM43Bz9cPu0cCiUCgR+8MSf7W/F1jpjtjNNu9YaDZT0K6u0rp+tHmKO g==;
X-CSE-ConnectionGUID: HsRHnsEmQCCT9vtMs8fSZw==
X-CSE-MsgGUID: M9sLOdDUQwKcj94yrH/GeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58583285"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58583285"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 12:42:23 -0700
X-CSE-ConnectionGUID: A+imKj/eRo6VMzRfm6yYeQ==
X-CSE-MsgGUID: hExLscmqS4mHq2Wb79W5zg==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 12:42:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 12:42:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 12:42:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 12:42:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RYXtRwYL/Ivoe3SU3MIOJJMo40dTf/JB98hgHFCqyqe34LIK6BOPfhrejriPYrURfguG9SU5hF0KXME4rwM/CmWKzOFpCI4zoEbjJxSL0ejxmRyQSD83rO49xRB7AKG0MII3muAZ2TY1fI68XscftbszOpP8MaxSWtz2r4AS4NzOiWzqZUlWDugFGmrO8Mp599+LEIITJ2go00X7X3Bpa6TMyln2Pj4DcduN0XGF9178Fa91rvQZUUz1ClXMBIUWezLU0geGVhZIIlfRvkjCVq1kesIw3yYt6oTkkr5xmRT3Xjw0rsSyyB5sDVwl4p4EIRigIXfCULSbmtec/0Qhiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KMOiNG5bavc7ih0lCUlZzlBV16UMS+VFZ8d4avfrJjQ=;
 b=jGe9CUIDB156AolS3xVtMmOqPeDKy3f+v1/fb66nVV5RU5SmMeEgzKnIPvGqrjo+di1QFl+OgLTu8SjN8h0DXiUcwbIuKPpRexOAFuM0xJbgjNlbs9Xj0tc7yfjK+zrcv7rMY6sj6j2h0jZ/nOK5F6x4h368BJD8tROb2FCk8eMC0haI9e2CV3xU+ni/QfeAp0nS0javB5++T8W2UlOJ92WLpqyGLw3m3ZAw7V001dm7yZTqr6yKR6UJLiOS3qxgJ/Tz6WPn5CVPFFouHFOpiYW/sQ2RhGQOOxWPCaG2osabtGbCaX6PbdtSXTo/gmEw6bX25mjnZ987LT6mDc7NGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH3PPF8517B3F27.namprd11.prod.outlook.com (2603:10b6:518:1::d35)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.13; Tue, 26 Aug
 2025 19:42:20 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.9052.014; Tue, 26 Aug 2025
 19:42:20 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <IA1PR11MB6266F0213B87A6E9A7B97FD4E23EA@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250822002512.1129144-1-chaitanya.kumar.borah@intel.com>
 <IA1PR11MB6266F0213B87A6E9A7B97FD4E23EA@IA1PR11MB6266.namprd11.prod.outlook.com>
Subject: RE: [PATCH] drm/xe/wcl: Extend L3bank mask workaround
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Dugast, Francois" <francois.dugast@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>, "Borah, Chaitanya
 Kumar" <chaitanya.kumar.borah@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Date: Tue, 26 Aug 2025 16:42:16 -0300
Message-ID: <175623733618.28713.9539807108872829435@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0217.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::12) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH3PPF8517B3F27:EE_
X-MS-Office365-Filtering-Correlation-Id: 0baa11d5-0fc5-40e3-3bbf-08dde4d8ab97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|16122699012; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U1lTVnZMYWNOeElUR091MWhPdS9TNXgxelJYYmluR1dUME1aNjBXcjV5Ly9X?=
 =?utf-8?B?RVg0cmE1dm1VK0hkSFd4cDJGL1ZzVmZSRXpRUFNlS0FWR1ZjbDFaOG9peW9a?=
 =?utf-8?B?L0pJOTlReXk0N2V0eTFOai80b3VnVHhXQisvY2pOZGpqaU4ybDZlTmM1ZFF6?=
 =?utf-8?B?cFJRMGwwaGM0VlMrb0lpYVhZNGg3bXRhZkJZRUNmaml6ckRXUjdTV09wSXpJ?=
 =?utf-8?B?cUtUVU9WdWRaZWpWL0RscG9YbkpkazUxdW1Pbis5M2ZJYkNOc3JTa1lJMm8y?=
 =?utf-8?B?V0p1aE00WHJkNmh6MGFlUXFxR0NnZ2Y5QTRPSW9JUW5GUVZ4WDJka1llYjNT?=
 =?utf-8?B?SmU1Vm93VDFsc29qd1dldzVZVWM2OWE5bHhTaWJoZWpRUEZBMHpOREFCNGwr?=
 =?utf-8?B?eThLRzJXYnJTeWxKQnJyK3FIMWgweHN1ZjdxaXBaVTlhc1ZuNHMwNVBxR3FT?=
 =?utf-8?B?SEtvbGlsK3NyWi9Rd2pnWEI5WjV6cW9uUXhxQWZLWFdQcTlDNHIyUkdKcCsx?=
 =?utf-8?B?YlFraGVnYU9ZVUhRcC9ZQUQyVWhsQlhlNkt5Uk1BMmpmeVNpS0VTaUd4VkZM?=
 =?utf-8?B?ZkRJSzUvL3g1U1MvUzYyelZadThtMU4yOWpLdmV3MG5PTkYxajcxRjdYVzBw?=
 =?utf-8?B?QTZkcHozdjUweWlhTVpLSDVjemsxYWJqMnF4Tm0vUlJXM2VWNWZ5cXp2UmMw?=
 =?utf-8?B?VmNiNGNyeGl6dXQ5OHltMUNIblp2aVdhQWFnRmFZbXllL242dW42N2wyOFhF?=
 =?utf-8?B?MVZ2Qkt4Ym5MNWt4MnRKL0ttYVNRazdKN1BrS09Wc0pSL29pNllpbTU3bTUz?=
 =?utf-8?B?bXRKa2hzV1hxVm5EaXZ0dmdNQlU3NVJYMlJaVXl0NkU1MWpuVXJjenFvaGNy?=
 =?utf-8?B?MlFQaWw5MHpnTS9EQXoxWWlZM1hweTAydmdCWmlpR0Vpcy9MOTFFaGNPZHpD?=
 =?utf-8?B?b3ZNMXFadTRiQXk1c2duVE9xVXF5amlRTFRPRmN3RDVXQjlVTkhzY3U2Tk91?=
 =?utf-8?B?ZnBLNnZ4T1I3NEVDSWNaSGhjMk9hYkc1TFpkY1FVR3pIQm4vOXVrR0tjcnRN?=
 =?utf-8?B?dEJNa2ZpdU1yb0dCdmJmNW4vR3NxQ0VqdGpFMU5mU1ZoazZEaDBRbURueWVR?=
 =?utf-8?B?NVdBWGQ2UitsSUpUbzVkQXIxeHR2dVlDeTJtQm5SL0xUeHJsUEdZbXRQbGhQ?=
 =?utf-8?B?QXJlaXBMdjJDaDhjWFVqRHBNcmdoM0taR0VERWE0WjVoeVgxbGtBTit6NU1R?=
 =?utf-8?B?VmR0WWVpalhwSXhTenIvcElHMldGcGZEV1M4VVcxR3pMcjJkcVBkbHRycWt4?=
 =?utf-8?B?czRRdUkyNGQxZFFSTDdtT01FSklKYTBBMHhxanJXb0JqdEVxQ3dsZndYL1A0?=
 =?utf-8?B?OWszU3Q1WDB4TnR4ZEY5cHhSdWg5TVlPZ3d1RURZVGJIOFRDbWdFWkpMVEsy?=
 =?utf-8?B?SHMzM2ZYYlpSVWowVkticTZ3Q1ZXZXZRcUs0L1VUd3RValRET1BzcU9zNGxz?=
 =?utf-8?B?Wis5ekt1Q3pxL1h1UjNOaDFFMmFXOVEwZ2E5ZEI4ODFZRzVNYmd1VlFxSFpa?=
 =?utf-8?B?M3gydUNFRWF0NU5vS21FSE9iTEZibDg3SEY3eU5rY2xUclRDSkFwbSt5alRZ?=
 =?utf-8?B?cmt2SjNYZ2RrU2NXSk82TmJGaFUxYmt4YXlQRlFQNDF0ODVZZjY1ZjMyOGQ2?=
 =?utf-8?B?bmU2OTlGbUtlbVVia0NhWlpmTi9QUkFCZlN6VjdEcm5FVG00cy9Ld1RmOUda?=
 =?utf-8?B?cDdGSDdVRzF4RFVqcGVWZ1pIZEdzSmxXMDNJanR6bUNLTEljRHRUVnFyaER3?=
 =?utf-8?B?Ykx1TXNIQjdBRU1EYWhWRnBUbVlnNkdVVUM1SGlwbGt1c3YyWnBrbmJlNU9G?=
 =?utf-8?B?LytvSkRVeGs4SE5sYy9QT2VvbzFXVXpSTDYzeDJ4OHBTYkpmc0xaUGZBVFZo?=
 =?utf-8?B?U3pQTVRPN0xsT1BLTkdYbHRJaGVnejZmNkVUeXRxc0prc25sN2VxdHVRbytO?=
 =?utf-8?B?T0JsSDRpVWhnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(16122699012); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUlsU0M3angrN21Id1g1cWE3dm5ZNmpRZDlGRkc5eHBNT3gvWUxHeVY0eHJk?=
 =?utf-8?B?TXpRQ280R2owb0lLNFJBNGIybjJudldYcmRlQllsZlY5eUxHMlVWWVRZeGJo?=
 =?utf-8?B?R2I4YjhpcTZmaTdRZHpRWXhPMkVydE81NFVLc0hLL0E0bTkrNzQ4OHlDZ2I1?=
 =?utf-8?B?WnV5eGJoWDlXL05kbFZsMEJ5ZDdzRXVHa2Vla0crZFpjTVc4WG1ObEx6a1FG?=
 =?utf-8?B?UVdCVkV0bGxkaGFsdG1GcCtKd2t3dEh2c3NKbW1TZG5MM2Q2OVNhTjBpQnhz?=
 =?utf-8?B?YzRXT3h2MmpvYWJVNEtscXVRenJBR2N5REZMci9haU5YSHpnY1o4c1M0Zldu?=
 =?utf-8?B?bmJJZkp2cmFramdLVThkb29mdTFyc21Jb1R0RGJQeStGTG0xVUQ4TDVMc0hn?=
 =?utf-8?B?Lzg1RXkxa2FuYWhYMUw0d2ZSQTNjWFdKZmR3YzZucWp4cFdIemdBVTN4cXhj?=
 =?utf-8?B?cjNRdSttY1cwdk9ZZk9JWGgraEk5L0tZV2hKc1V3WWp6OHc3eEFlZGFYMDB5?=
 =?utf-8?B?WDJMV0F1cXhVbkZFcm1KYm5mQkI0Z3R0NTNnSzRxWlV3VlJYNnd1aVZRSGhL?=
 =?utf-8?B?RWo5dGNVdmlqdWx6SzNxc21rdmZhRUJ2dlRuUTVnOU80ZGNDNUV1R1YrRUt2?=
 =?utf-8?B?YjFLZU9sY2xrNDZqeUR2aVBoY1V6MnBNRmE4Q293eDJRSXk5ajkrckpEMFVH?=
 =?utf-8?B?V0ZON3ovUVFqR1AydkUxbS8xMitBVWMxRUpqQmROanNpRHNzOHNRL2wrd2Yz?=
 =?utf-8?B?dTZia0tsTExFalhrUHMrclFQYzQwZ0NjdEdpc1ZHbkhrYzdKRjdlY0hDWkhG?=
 =?utf-8?B?R3RnV0NqdFNvNEtZeEprWXRYczkzcWVQL09NMGs3ZTFIdnhuWTN5aGIyY3Zu?=
 =?utf-8?B?VzZ0emY3MndWdTF5bHpMUU13ZnM2YUtkOVRxNlZ5UlU3aHZMSlpGMWMyNS9O?=
 =?utf-8?B?dFhGUXgycC9uam05dUFpNmIrSlg4NWd1WEp3SHl1YkREeXdveXNick5IcFZV?=
 =?utf-8?B?SzZwUUpaeVB0N2ZseXRka3JQOFF3RStuQ0dPSk4zUldad0FrQk9Iekt6ZXMr?=
 =?utf-8?B?L1hrcnlIY3czeXhCeDI4ZWhPSmhlY2tXOVdpRFN2UUU2QW05WXkwbkVNNzFj?=
 =?utf-8?B?N3hYTlNyTjJtekxUUmFMTlVzaDE3cU8wMnZKN2M2QVJpT2FlbmtERkxRYURj?=
 =?utf-8?B?WHQzL0xRNUxMZ0JBQzVjcyttdm5ZcHRXQXYxWHV5d1VPTHRDdlVoZDl6STVZ?=
 =?utf-8?B?NExTOVJVMXVhSjNHVmtMSm1SMjEzOWxGZ0RwQlM4WGJCZXl5VzBRQVJFWFZH?=
 =?utf-8?B?VGtjN05RSEJRR0xCQytuYkFMaTBONGZ5SktCTGVoWXEvMkJVZHU3dk81cmFY?=
 =?utf-8?B?Y2tmaEdxMDdFTEpweDd2dFIyUlByZ1dvZzd0SWhNVmJhbXFlc1FWaG1jTHor?=
 =?utf-8?B?Y0pBY2NGMml0dk4wVDh5YWt2ZEc2RnY3WEhHNlpBVSswOUt3VitISVpybyt1?=
 =?utf-8?B?R0hGSW1HMWVXNHFRM2ZrSHpvRUxUVXJ5djBGRjB1R0c0RlZNN2FkQWptanUr?=
 =?utf-8?B?OTkwR2lGdHA0QTJaYmpoZ1ZJNkkxSUMyRnM2RWY5RlY5K3A0c0NESkc5SXl6?=
 =?utf-8?B?U1JENnNiRVdGZ2c3dEdqdUlrdkNraFZPa0xBRURTaGZQVDVMTUM0alF5V1pM?=
 =?utf-8?B?djlabi9VUXE2aWF5cjladXhaUUlvOCt3QzI5YUE3NzJnMUtJWU1zN2hIQkZ4?=
 =?utf-8?B?anVVc0ZQaktrWDlqWlVwbm1JZ3U4VlRmOWJMb3NBUFYxOWFFd2xycklTN0Vx?=
 =?utf-8?B?WHZDSmNOSEZkVURtQ1BxZlFuWHB2SlBON3F2aitvQ05iaTcrSFFvMU5qaURQ?=
 =?utf-8?B?bnJSdzJZc2Z5N25Zd0JINnJzVnJmdlBLKzNESnEyUUJGVGVJQk51TW1YRG9S?=
 =?utf-8?B?YkI1bHNldmVSdFQzT1VPVGVxSndydi9BbFZrcWRXaExlclV3a2xObkEweWV0?=
 =?utf-8?B?UVhqNjdEa01Wczg3VEo0U1QvODh3TzJBdnR5UXh6Ny9ObW5SaXdPYUNHeG90?=
 =?utf-8?B?THRMVU5Kc1JPVnhGb2k2NkhjN2ZUb3k3NGZZbEh1eWpNR2xwUC9KNjhoTWhv?=
 =?utf-8?B?OVB3d0MrbmRaOGQ3V0RPRDd5NEtNSUV3elYxRmdyNFo3eVNNWmF2SFJLcXlY?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0baa11d5-0fc5-40e3-3bbf-08dde4d8ab97
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2025 19:42:20.2253 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SCOQYNr5ktJTEGbuHnlY7nl6DBj6dbm/Ymaei0i7IAXQnYMs8E5Hr9xpPxS3RgMTKOnxCS8FpvBBoGEwwxOJ8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF8517B3F27
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

Quoting Bhadane, Dnyaneshwar (2025-08-25 02:14:36-03:00)
>
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> Chaitanya Kumar Borah
>> Sent: Friday, August 22, 2025 5:55 AM
>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: Chauhan, Shekhar <shekhar.chauhan@intel.com>; Atwood, Matthew S
>> <matthew.s.atwood@intel.com>; Sousa, Gustavo
>> <gustavo.sousa@intel.com>; Dugast, Francois <francois.dugast@intel.com>
>> Subject: [PATCH] drm/xe/wcl: Extend L3bank mask workaround
>>=20
>> The commit 9ab440a9d042 ("drm/xe/ptl: L3bank mask is not available on th=
e
>> media GT") added a workaround to ignore the fuse register that L3 bank
>> availability as it did not contain valid values. Same is true for WCL th=
erefore
>> extend the workaround to cover it.
>>=20
>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>
>I interpret from the WA and PTL description that we don't want to push any=
 value, not even 0s,=20
>to userspace if the L3 mask is not available for media GT.
>
>LGTM,
>Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Pushed to drm-xe-next. Thank you all.

--
Gustavo Sousa

>
>> ---
>>  drivers/gpu/drm/xe/xe_wa_oob.rules | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules
>> b/drivers/gpu/drm/xe/xe_wa_oob.rules
>> index 8d0aabab6777..8bef2f567faf 100644
>> --- a/drivers/gpu/drm/xe/xe_wa_oob.rules
>> +++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
>> @@ -48,7 +48,7 @@
>>  16023588340        GRAPHICS_VERSION(2001),
>> FUNC(xe_rtp_match_not_sriov_vf)
>>  14019789679        GRAPHICS_VERSION(1255)
>>                  GRAPHICS_VERSION_RANGE(1270, 2004)
>> -no_media_l3        MEDIA_VERSION(3000)
>> +no_media_l3        MEDIA_VERSION_RANGE(3000, 3002)
>>  14022866841        GRAPHICS_VERSION(3000), GRAPHICS_STEP(A0, B0)
>>                  MEDIA_VERSION(3000), MEDIA_STEP(A0, B0)
>>  16021333562        GRAPHICS_VERSION_RANGE(1200, 1274)
>> --
>> 2.25.1
>
