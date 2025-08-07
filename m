Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A37A9B1D1F9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 07:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23C010E06D;
	Thu,  7 Aug 2025 05:26:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IwCGUChr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2110110E06D;
 Thu,  7 Aug 2025 05:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754544382; x=1786080382;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Us4JXkuw0CorDJA82iQ7Wu+ZaX8AiHxjCUQSVadYU/c=;
 b=IwCGUChrKtv/HXoxrrzlXcJkOELc3Is4y8XDvi+tL3ssca+c+uuYq97k
 lGYZC1ECgvb4IWBEhEXlcANBb1l8VFz8eGIyic2XdFLVjBEMcR9a9uzBk
 +grH30yorTou8SAizxNbcYg8DmobJgcbKyVvO8QFvxNiQ9X05MEFTqd3q
 96JeUbD//6DozjOAv6SHg2yNR0MbKitHOdDvFXA+NqDsSyKZ95rpDLMuI
 +H/FNZ0X3d5U67FMs6wnPElSEx5QjBcz5FQ1ZC2YVXq6iK6lj5iEMSKNl
 Se60EIRTMSh10O4iZ0/GsF/SSgwpMgBIiuwtXi5YRAwehHjn66ydzH3kq g==;
X-CSE-ConnectionGUID: wvdNC8UjRz2MEwdMjlH6fA==
X-CSE-MsgGUID: Vss+UvvyQJugExZGuKtCVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67138962"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67138962"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 22:26:21 -0700
X-CSE-ConnectionGUID: Wiq2hp9EQTWD2kR4HThrNg==
X-CSE-MsgGUID: spWpySz/RGiazL1JcVp2YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="170340173"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 22:26:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 22:26:21 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 22:26:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.66) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 22:26:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X1W2J/Hm5YKz20MoycnI+RYgWs3MU/9AuNXiZp+7MXEqfWSNS63tkliybARPIKSdDPo75DJ5r1sJPH4GYESUL3Mcex0OOORFWzrhlTR9M1cayLeTDocMsF+mY1ehbyUXHKy8SKvHKYX+D2ujRX43oXKqI8Um7oY9lKsDs7I48nmwgVPDS4uRg9mJNE1v2DsMST8cbmsnETSiyTuBf4nb2vipyTRSS5EylcSzl9YR46uiPq/686nJknDTUaZe/AOo7/Dc9ObT6MR3EAPwsq+LEWv+G4HmRbsL+qb7T5teTcqo+3fbpaDyJZ1/2544ZBQGS59so+tO3ukD3bfBlWe0Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Us4JXkuw0CorDJA82iQ7Wu+ZaX8AiHxjCUQSVadYU/c=;
 b=T/ZGdf5q6u2Npp9rXjrsHRbjuft1V6dGyOJHNEKwJt9aMVguY5WyJf2hdfXOg1h2WOYSDhmD+7Md2CDwYk85W9sb55BSFRvZa4jSr7jXyA2ETUUS0TWHIir+CCVoXkIC7FfgzqHHvofmCSk4Qv2veCm3H2rrLPe7EuRpFfYbEhr86zmOLuJQLojbprvDaTSSVcy0qTzWtoag/y+QZjQqm+mQGwhvKQ+SKF+0sKe5ILpdbn7dpKRNGDid0555bhbThVe/LJUIq6xXcVG8P8VLmbN6jUIhmmw4q3DJOWCyAWMlSE7cMqwjsM/c/412JUCOOkhXbl8O9Sz/ol8LFNoh7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7034.namprd11.prod.outlook.com (2603:10b6:930:52::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9009.13; Thu, 7 Aug 2025 05:26:19 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 05:26:19 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "janna.martl109@gmail.com" <janna.martl109@gmail.com>
Subject: Re: [PATCH] drm/i915/psr: Do not trigger Frame Change events from
 frontbuffer flush
Thread-Topic: [PATCH] drm/i915/psr: Do not trigger Frame Change events from
 frontbuffer flush
Thread-Index: AQHcAq2pOZmfh2V5pUaLMC/Uy87n4rRWpNMAgAANaoA=
Date: Thu, 7 Aug 2025 05:26:18 +0000
Message-ID: <30aab2c888ef916658385c571e730316eb9c44c3.camel@intel.com>
References: <20250801062905.564453-1-jouni.hogander@intel.com>
 <DM3PPF208195D8D507DE9636CA0CD3C0C21E32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D507DE9636CA0CD3C0C21E32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7034:EE_
x-ms-office365-filtering-correlation-id: 1f08e767-9d16-4165-67e3-08ddd572f030
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?S3hsanJleENrSm5RS212ZjREeGxoVHNLSW95M1p3d081blZoUE81V05FT1h5?=
 =?utf-8?B?ZytZZzRyQXQydm9wL1V4bStMeEJ2UU9GMFRwZm9wZFlLQU9VbExMR1NHRFZa?=
 =?utf-8?B?UjJTcGtHaDFRZmtyT2ZlbHFkS0lnZk8vY0czdUFGazI0QUI2WGRHTC9Xb2FJ?=
 =?utf-8?B?R0NzSXloZEpFdGZ0ZzAxdzRrZms3aHhoMDJ6L1pXbjUvZ29ySTJWazRPY3d5?=
 =?utf-8?B?VW5nRlduRFRmb2ZXMlEyaGN6NzQzOUR1VXhNOHh6ZitjL1JUSlRPUmN6WnNh?=
 =?utf-8?B?NXp0RE95eWlWZ284b3pNdmlDSjlKdmJrc20yekQvKzZwWU9DMWJXNjRYMzIv?=
 =?utf-8?B?SllvYk1TMDAvODJsSXNRdnNJNEZaYkVQRHdzeHZqaFZnV0lmTDczV2VUSlBO?=
 =?utf-8?B?VkE4VVUvcFA3Vkt6UWtPbVh3MDFDOGwvSFZvdnJTSUV6WHNxUW1LZnJGazA2?=
 =?utf-8?B?VDIwS2xIeWJYWmRWc1RaQW9IQ1lKQlduQ1IvSTU2WGlWY3dvUjRVRnh2dmxl?=
 =?utf-8?B?M3E2dEU1eGJmbnlEbGVERW0yTUo4Q3FTRkRjTVNEcVpJL05WbzVsL1hRM1VF?=
 =?utf-8?B?SkdNSHFUSEtXVlJLVHZqRllEMHVjQ3RFQnRSU2VSRzR5UHNFUkl0YTk0YzYv?=
 =?utf-8?B?bS8vQkZGSStEYU5rbVljbnBVM0p3REkwSGVEY3Nab3pSeEZIYzNWNi9NYjNi?=
 =?utf-8?B?dUVEUFRwS0ptMFFCN2w3eU5EbVR2Um9HQTUwVWMzTWtmS0Q0STU4dUJSZXZr?=
 =?utf-8?B?QW5mL1lvQlFoK0dJa01Zall2anpjWVNndUdKeU4rbldUbTZmMkl0cXRZeUsr?=
 =?utf-8?B?NDhnREZPbXVSZnZreEtuenFNWEp4bUh4WDcvVVpuaXFJM3VZa25SUnJlQlR3?=
 =?utf-8?B?alFwZ20vN25PUjg1ZkthODYxU0k5QmZnU3hPVVVvR09aYWIraHhNeFRGUEdL?=
 =?utf-8?B?dVRXTEhtWGt2VytKbmltNEllb1QzKytKZ2lrVEg2ZnY1dWdpNmtnRnJsY2hL?=
 =?utf-8?B?VUc2cUY5anNXL081czhDUkhJc3JoNkZ1bmxicmVOTE5NeTY3WVE3NEkwZjVQ?=
 =?utf-8?B?Uzc5TFBwUElIVVd5eGI5WFFnemJhMlplc2NnVk16ZjhQanROZGRvUUhKeDJI?=
 =?utf-8?B?N0NsUDMrc1JRQWxiakp3S2ZVbXkxVHAvZXQvblU5R0N0L2M1c1BEU2dRNnd3?=
 =?utf-8?B?aEhZazBiUm1nb0RWVnl2Z3hCbG5iMExqOS8rMDBVdTYrNDlCOGVxQ0Y0VE1j?=
 =?utf-8?B?ZnRsbUNKdWpTdzNIcHJ1cU93MCtXNnZML29lQnk4Yzd3R2tWU0NFQ0FFdWRQ?=
 =?utf-8?B?S08rTmNUNHhKTFlXSHhUYVcyRTBNUmdaV1NWUHI5andiYWd6Z1loT0VhNFFC?=
 =?utf-8?B?QlBsdlJhd1l6Z3JHZm1DSlBvejVKTDZWdlNRdG10cStDeXNuQVhia1FUdU51?=
 =?utf-8?B?eE1wbFMyZlBSbURFYXc0Wm80VXphaUVjVUlPeVY1TWEvQy9RQmNXQUhzbkVT?=
 =?utf-8?B?TEtVa01EZ0JQMEo0ejVtYXhXNmxFbTJTWGxQU1d3cGtmS0x6WWducGtqN0xY?=
 =?utf-8?B?NjJTelRMSkljVUJ2WjdKQ2phdG5jbHNjTnpQMG9MNURrQXlDdEF3TUVZWFA0?=
 =?utf-8?B?SEExTS95c3ludkJseVpBd3ltRTRHcTNwSnhBdDV6WkdCN3ZnY3ZGdXYzMVY4?=
 =?utf-8?B?bjB4MTM5TUxWeXFrS09FVXNpOXR2MHhEU2lCZnZyMlkrdXNUN0lCZkxSOEtZ?=
 =?utf-8?B?QnFEYWhHcUdaQU4wSXlOS3F2WUZ4SUxnellhNDBKRC9hVXFvT1JrZjNuUDBz?=
 =?utf-8?B?SGJqYk9sM05qc29PVkNLbGhqUDIxbFF3VTBXb3hRcWRocDlobnExOU1IT0R3?=
 =?utf-8?B?eGVTUDRyRlF1VGphRG02MjZTUTlEaUZjUWdTUmVsM0lvZUpLZVFPQjJBc2tV?=
 =?utf-8?Q?chulK614hnI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NkFNNElmcjR5Z0tlSnc3TWppaU0rVTVuY1BiRndLejhqZFU1ZVRtZjZ3bDJZ?=
 =?utf-8?B?SXJsNWdydzd1NzNMQzNhSTFoZEUxdjIzQUE0WEs0cjlSdXZNYTlvdDNVekZY?=
 =?utf-8?B?Zk9HT0JRY2ZZUmV3QTBjQ2dZZ21CWmJwVDIyQi85bjJ6MWMyQ3ArK2xvODdn?=
 =?utf-8?B?azRXVHVBSlJSUktUdjY5bFhsT2dQODl3aXlhbXhMNXhuLzY5Z0FEZDlKOExD?=
 =?utf-8?B?akVLdVpCd1pBeFVWZjlwZEI1QVh5K3EzeXNyVk5RWDV5Q0YvelhQTjliWDEr?=
 =?utf-8?B?MW9iV1BLUVNOVFpyVVFCenZ2RTZ3L01sMm1QUjFkSVVFZ3VieHpMM05LZEZU?=
 =?utf-8?B?MUw5S3p3U2xxWG5TU0V3eDF3UjNUQ2xtckJjOGgrWXJwZ0t2YUF6QmJrNjN6?=
 =?utf-8?B?b0h2aG9VbFZQTXAyUElDcjVWbTB6MUhUYzdMOXhDN1NFWFgzdHFCQmhjS1Yx?=
 =?utf-8?B?Zk9Obk5rSzg0VEVzSk5kWWlMMDhrdGpJNEZrRmc3d0xpMmZEOVoyOWREdmJx?=
 =?utf-8?B?NkI2L3VKdEVObktoSmc2RDl5YWFNTzZpT2crQ3VSY05kbW8rQlhUODRkOXNZ?=
 =?utf-8?B?SWpra0ZKV1liOHQvTTR2eFM4aHloeDVHSERVbVA5OFhqc1VXWlh6UENPT3hN?=
 =?utf-8?B?dlRCSFpTWmkvRG80NXJpL1R5Z28xOEowaFBrbDFXRDViYzdnK0RLOFNaT2di?=
 =?utf-8?B?T1RBUnFvS1ovNHgxNVFuM3hFZlJmUnJkc0xNNmtvT1FXQWJpWmUrRW9TNERi?=
 =?utf-8?B?dDhLYXlFMEw1UXJyTUZIakZUTERXbncwOFdVUjdxUWxiUjVaQjUyNlVXaDhP?=
 =?utf-8?B?UVN2NlVmU3hSZlNmZE41bStqaFZPdVh2RGpRMmh0NG53SFVCOEpvL1gxVk1L?=
 =?utf-8?B?WFFNTG9ORFpaWk1HL2x5RmJaOXRxUEFPZlB4S2pLYnlqV211dmFCTEJLcUV2?=
 =?utf-8?B?eWlDTHF0ZDByQzhrSkJKUnRZWE15T1hZd2g0VzdLc1Fhd3dqZWlKZkRLSEVD?=
 =?utf-8?B?NXQ0NWVRVkJHeWdYUXB2RXZYSnNGZ05LS3JJcnRBRDZ1ZStJZ21rTXZZQW0r?=
 =?utf-8?B?eXdyRkZxalU0MG1haHlHTjhTSFY5bzdYNzQ2b1BSZkVXQ3prUWpPaXlHSHVW?=
 =?utf-8?B?UktzOTU5VUJnN00ra25kVmFhNU4rYklWVGV3cUQ0MzI0cHYxSnBydms1eXF2?=
 =?utf-8?B?SWJKcGk5cHpsOGNSSXJObi9wVWlsRGE3N1ROY0pXYW1pV0R0MFY4MmZoeVB2?=
 =?utf-8?B?UDV3dlNzRzBFY3oxRWJFSVRVVEFlbDZZa25GNlU1M1NEV2VXQkU0RHpVaDg5?=
 =?utf-8?B?U0JkbnoyUjJ2QzJnb213TWRHbSszSjVwaE1jV1RJR1JGRXlPWHBoYmVmRHVI?=
 =?utf-8?B?d2RCNW42YmdLOFdTdU1WdG1peUo2SUo4bTJDWDV6bDRpUm5qTHpxcEV2Q3BZ?=
 =?utf-8?B?M0FiRU9DNjFVTnBhVFhlazdNUU1xTnVIdnJkOVUzM1NhNU11cVRlQ2VWY2Rs?=
 =?utf-8?B?ZTZwN0VPOUtmYnIreDRQOXZaelIzaXdzU2ZUQ2dHUEM1V3VuRlRUZmFHa3Zx?=
 =?utf-8?B?SnB1ZzdabE5XUHdQc1hrZWJmNTh1YmlZa2ZxTjJwc25vY1JubGlzbjhqL0lQ?=
 =?utf-8?B?M2V2SW1FbmNtc2FkUmNZb1N1RzlWYk1vb2RIc2lCbGlzemIxSVFTUjlTNGl2?=
 =?utf-8?B?RGNUdlB0TGNDVmJWaXd5d1cycUdsSGdLNkZTcU5SYU1sSlc2cFNRWjJGdTUx?=
 =?utf-8?B?NXVpUHQrSTNzK1Y2eER5VEVaUUZqWW1aSjNBRVUyNzIvZzVwVnZaRFlZUklq?=
 =?utf-8?B?QjNSVGVtT0dyV2U3bWd0QTFqYlMzc0V5S1BqekhqV0c4YXJHYWVYd1YvYUlh?=
 =?utf-8?B?WE90QzJ4cUl6MnBGSmYrV2Y4YmtOVTMvdjc4TERNTHZyOEVWcks2blVHTmRh?=
 =?utf-8?B?UHp1K0xRS3RvRXQ0ZmJRSGRWVlh6aWlVVXFsMndhbzVoU0taSjhWV1k4ekRx?=
 =?utf-8?B?QTJPbDJFcjVmYU1mZDNBaXlhNTIrMktDQ2M3dEdMUlk3WEMxQkNHQU1TME9T?=
 =?utf-8?B?VlZxZFFvMWZGQkt4Mmhra2xwemQ4RHhYRzcyYWNoS0RIN3pMQ1h1THp0MTFL?=
 =?utf-8?B?WFFCVjNkMkZiNDNueWpUUmVic1RlYitPbTVvRElLekxRRWNvdnhxLzBxWW5C?=
 =?utf-8?B?anpMOHFNaXZJSU9ldXVndHVCdjh0OTQyUUttR2RhN3VtUFFOVkxLUWR6T21r?=
 =?utf-8?B?bHRQbHc2aUJTdVZ6VGttMzFmNGdRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <39C83968327F0A4F8A5C4736742011CE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f08e767-9d16-4165-67e3-08ddd572f030
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 05:26:18.8742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rGMMk+j0Cfs/dgND1gM9Ev6nqt0HpSwMn+C7eo6XdC0yOzNoRzjFvMOLK/pX1ScOHHpsUrfIA3bt21bkth9UCFsl08HI8di5rxk1tM6oWG8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7034
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

T24gVGh1LCAyMDI1LTA4LTA3IGF0IDA0OjM4ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogRG8gbm90IHRyaWdnZXIgRnJhbWUg
Q2hhbmdlIGV2ZW50cw0KPiA+IGZyb20NCj4gPiBmcm9udGJ1ZmZlciBmbHVzaA0KPiA+IA0KPiA+
IFdlIHdhbnQgdG8gZ2V0IHJpZCBvZiB0cmlnZ2VyaW5nICJGcmFtZSBDaGFuZ2UiIGV2ZW50cyBm
cm9tDQo+ID4gZnJvbnRidWZmZXIgZmx1c2gNCj4gPiBjYWxscy4gV2UgYXJlIGFib3V0IHRvIG1v
dmUgdXNpbmcgVFJBTlNfUFVTSCByZWdpc3RlciBmb3IgdGhpcyBvbg0KPiA+IEx1bmFyTGFrZQ0K
PiA+IGFuZCBvbndhcmRzLiBUb3VjaGluZyBUUkFOU19QVVNIIHJlZ2lzdGVyIGZyb20gZnJvbmJ1
ZmZlciBmbHVzaA0KPiA+IHdvdWxkIGJlDQo+ID4gcHJvYmxlbWF0aWMgYXMgaXQncyB3cml0dGVu
IGJ5IERTQiBhcyB3ZWxsLg0KPiA+IA0KPiA+IEZpeCB0aGlzIGJ5IHVzaW5nIGludGVsX3Bzcl9l
eGl0IHdoZW4gZmx1c2ggb3IgaW52YWxpZGF0ZSBpcyBkb25lDQo+ID4gb24gTHVuYXJMYWtlDQo+
ID4gYW5kIG9ud2FyZHMuIFRoaXMgaXMgbm90IHBvc3NpYmxlIG9uIEFsZGVyTGFrZSBhbmQgTWV0
ZW9yTGFrZSBkdWUNCj4gPiB0byBIVyBidWcNCj4gPiBpbiBQU1IyIGRpc2FibGUuDQo+ID4gDQo+
ID4gVGhpcyBwYXRjaCBpcyBhbHNvIGZpeGluZyBwcm9ibGVtcyB3aXRoIGN1cnNvciBwbGFuZSB3
aGVyZSBjdXJzb3INCj4gPiBpcw0KPiA+IGRpc2FwcGVhcmluZyBvciBkdXBsaWNhdGUgY3Vyc29y
IGlzIHNlZW4gb24gdGhlIHNjcmVlbi4NCj4gPiANCj4gDQo+IEFueSBCc3BlYyBsaW5rIHRoYXQg
ZG9jdW1lbnRzIHRoaXMgdHJpZWQgdG8gbG9vayB0aHJvdWdoIHRoZSBwYXRjaA0KPiBzZXJpZXMg
dGhpcyB3YXMgcGx1Y2tlZCBvZiBmcm9tDQo+IERpZG7igJl0IGZpbmQgYW55IHRoZXJlIGVpdGhl
ci4NCg0KSSBjYW4gYWRkIGZvbGxvd2luZzoNCg0KQnNwZWM6IDY4OTI3LCA2ODkzNCwgNjY2MjQN
Cg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBSZWdhcmRzLA0KPiBTdXJhaiBLYW5k
cGFsDQo+IA0KPiA+IHYyOiBDb21taXQgbWVzc2FnZSB1cGRhdGVkDQo+ID4gDQo+ID4gUmVwb3J0
ZWQtYnk6IEphbm5hIE1hcnRsIDxqYW5uYS5tYXJ0bDEwOUBnbWFpbC5jb20+DQo+ID4gQ2xvc2Vz
OiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL3hlL2tlcm5lbC8tL2lzc3Vlcy81
NTIyDQo+ID4gRml4ZXM6IDQxMWFkNjM4NzdiYiAoImRybS9pOTE1L3BzcjogVXNlIFNGRl9DVEwg
b24gaW52YWxpZGF0ZS9mbHVzaA0KPiA+IGZvcg0KPiA+IEx1bmFyTGFrZSBvbndhcmRzIikNCj4g
PiBUZXN0ZWQtYnk6IEphbm5hIE1hcnRsIDxqYW5uYS5tYXJ0bDEwOUBnbWFpbC5jb20+DQo+ID4g
U2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgMTQgKysrKysrKysrLS0tLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCA2YmQzNDU0YmIwMGUuLjQyNzljMjhhZTI3YyAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
IEBAIC0zMjU0LDcgKzMyNTQsOSBAQCBzdGF0aWMgdm9pZA0KPiA+IGludGVsX3Bzcl9jb25maWd1
cmVfZnVsbF9mcmFtZV91cGRhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiANCj4g
PiDCoHN0YXRpYyB2b2lkIF9wc3JfaW52YWxpZGF0ZV9oYW5kbGUoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCnCoCB7DQo+ID4gLQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFi
bGVkKSB7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gdG9faW50
ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ID4gKw0KPiA+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3Bs
YXkpIDwgMjAgJiYgaW50ZWxfZHAtDQo+ID4gPiBwc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCkN
Cj4gPiArew0KPiA+IMKgCQlpZiAoIWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2Vu
YWJsZWQpIHsNCj4gPiDCoAkJCWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJs
ZWQgPQ0KPiA+IHRydWU7DQo+ID4gwqAJCQlpbnRlbF9wc3JfY29uZmlndXJlX2Z1bGxfZnJhbWVf
dXBkYXRlKGludGUNCj4gPiBsX2RwKTsNCj4gPiBAQCAtMzM0MCw3ICszMzQyLDcgQEAgc3RhdGlj
IHZvaWQgX3Bzcl9mbHVzaF9oYW5kbGUoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwKcKg
IHsNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gdG9faW50ZWxf
ZGlzcGxheShpbnRlbF9kcCk7DQo+ID4gDQo+ID4gLQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3Nl
bF9mZXRjaF9lbmFibGVkKSB7DQo+ID4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCAm
JiBpbnRlbF9kcC0NCj4gPiA+IHBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKQ0KPiA+ICt7DQo+
ID4gwqAJCWlmIChpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2NmZl9lbmFibGVkKSB7DQo+
ID4gwqAJCQkvKiBjYW4gd2UgdHVybiBDRkYgb2ZmPyAqLw0KPiA+IMKgCQkJaWYgKGludGVsX2Rw
LT5wc3IuYnVzeV9mcm9udGJ1ZmZlcl9iaXRzID09DQo+ID4gMCkgQEAgLQ0KPiA+IDMzNTcsMTEg
KzMzNTksMTMgQEAgc3RhdGljIHZvaWQgX3Bzcl9mbHVzaF9oYW5kbGUoc3RydWN0IGludGVsX2Rw
DQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgCQkgKiBleGlzdGluZyBTVSBjb25maWd1cmF0aW9uDQo+
ID4gwqAJCSAqLw0KPiA+IMKgCQlpbnRlbF9wc3JfY29uZmlndXJlX2Z1bGxfZnJhbWVfdXBkYXRl
KGludGVsX2RwKTsNCj4gPiAtCX0NCj4gPiANCj4gPiAtCWludGVsX3Bzcl9mb3JjZV91cGRhdGUo
aW50ZWxfZHApOw0KPiA+ICsJCWludGVsX3Bzcl9mb3JjZV91cGRhdGUoaW50ZWxfZHApOw0KPiA+
ICsJfSBlbHNlIHsNCj4gPiArCQlpbnRlbF9wc3JfZXhpdChpbnRlbF9kcCk7DQo+ID4gKwl9DQo+
ID4gDQo+ID4gLQlpZiAoIWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCAmJiAh
aW50ZWxfZHAtDQo+ID4gPnBzci5hY3RpdmUgJiYNCj4gPiArCWlmICgoIWludGVsX2RwLT5wc3Iu
cHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCB8fA0KPiA+IERJU1BMQVlfVkVSKGRpc3BsYXkpID49DQo+
ID4gKzIwKSAmJg0KPiA+IMKgCcKgwqDCoCAhaW50ZWxfZHAtPnBzci5idXN5X2Zyb250YnVmZmVy
X2JpdHMpDQo+ID4gwqAJCXF1ZXVlX3dvcmsoZGlzcGxheS0+d3EudW5vcmRlcmVkLCAmaW50ZWxf
ZHAtDQo+ID4gPnBzci53b3JrKTvCoCB9DQo+ID4gLS0NCj4gPiAyLjQzLjANCj4gDQoNCg==
