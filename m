Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B08BABE14D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 18:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 003CA10E508;
	Tue, 20 May 2025 16:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YiZzenh9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F28510E511;
 Tue, 20 May 2025 16:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747760084; x=1779296084;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=IQ82dTmg0IWvq8NSGXnAjn2R5KZeRKu23NuPeiwLyY4=;
 b=YiZzenh9wyX+XuVT+Kt7WcCqAGQaAXgUG1NYlcy9dNk4NJs80DYLGOCL
 jvcb/sg/Y3dQHt4xlIXsg5pY/3Uy4taffdEPfyLn6UwopWCknj7RLqF0P
 uCNfzt7ChWEYiDZQ3q1hlUUan31F30LDiYOi7CAU65fH55/XFjp0WWDTR
 lXFoCTgGyU75ocDYbp4XSTUeYp7E+6PpgLauNnUVvQNZxmeZH1GLQTCWO
 FLqRQm8Qr08acLSFwz/gHFO4GO+3TNoxB49W4TrZxp10jDCJBeelIecZO
 1+yZSSOirDUwxqtg3W3u+hGYTI1WsYziSlG1aiOROisxSVLax8JwF0uVT g==;
X-CSE-ConnectionGUID: Fv0pJDBzQRaRWpV3QHHGOg==
X-CSE-MsgGUID: 2hEB48sES+qdl4mxjRn4vw==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="72221644"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="72221644"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:54:43 -0700
X-CSE-ConnectionGUID: XeKk2/taQcC2S4zj1f3nlQ==
X-CSE-MsgGUID: MBlqnf0zRluU00HT1yHSEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144616170"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:54:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 09:54:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 09:54:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 09:54:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z7bBpKfG0tlVi+zIy0ejc0FDlxCZEjurcTCRyQlwrkdzVIH3sUqn2YvBL4yfhdJcmCI7KbZ5c2to/jgNmfFqZDUKK4bdfFNwfkklH7pts1o8RRk5tPe2+vYVwThCJ8zmgFv3EeHOkcKhBehpUwvUegyvXvhveQwtNPMGWJ88wk92M0BX4sCq9hgrJFW/eRe57MoOsUPur7c1QvsWaVmSNDWzPPjI8ZjLGXJkshqpihQZooFwasa/qr5+ke87MM2lBk8i6ajE+i39m1wHwQy7dWA5iOaXk3XDPUGeX4HETZFSPRGAaM88+K66VKdpeo7h1TjBWo1DXcF73Av8TeG/FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IQ82dTmg0IWvq8NSGXnAjn2R5KZeRKu23NuPeiwLyY4=;
 b=ZgCJuEimKnofwtxEARf2aJ/ji05x0kpHFHKaGLyTuu23SIXZkOrexY0GDFh6Cgct8rGSJugTAPdSbVWIFInyzhNtUaOJ9ujdTpsvKOTrheyeqTq/NjSd9WR8Q4Fij29CQI5P5v38UiN8jQAcsD2oqtDKvlely7ZD4cu7aGTpsKbtTOBrP3HmqkyNt9QXwWBp3UvYtIRsnDH2AdYtfWtimr3zh1ugHju5OlB7/1GH9/DZClXpzBnssnJ1bRQ3gnNxoRXYre5OLVq5gte/FTTFAtDFiUg/07/IM3POczeNonffgxBv1qesJfBclfpzIlmHodZus9JVMa3nMrKd4OkShg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM6PR11MB4674.namprd11.prod.outlook.com (2603:10b6:5:2a0::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8746.30; Tue, 20 May 2025 16:54:39 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.027; Tue, 20 May 2025
 16:54:39 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 02/11] drm/i915/psr: Read both Panel Replay capability
 registers from DPCD
Thread-Topic: [PATCH 02/11] drm/i915/psr: Read both Panel Replay capability
 registers from DPCD
Thread-Index: AQHbu0CMXzU47r013Eqo51N3LTAslrPbUHqAgACIwoA=
Date: Tue, 20 May 2025 16:54:39 +0000
Message-ID: <634b0f05ab13fbc564c35d7d4b28c62817b030a4.camel@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-3-jouni.hogander@intel.com>
 <7306f80f-dc48-45cd-9289-d2e3ea842bb8@intel.com>
In-Reply-To: <7306f80f-dc48-45cd-9289-d2e3ea842bb8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM6PR11MB4674:EE_
x-ms-office365-filtering-correlation-id: 68f0b016-792e-4693-c495-08dd97bf0273
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?K2YxdXVTZ1B3cDdRMDU1ZjlnOGpkaHdjL1BGT2pzb3QwS1BOOUpURG9sQnJ3?=
 =?utf-8?B?MnpMcVlDK0QrdXUzKzVtamdOaytlSjdSNVhXUFV5UTFuZzR4bjREWWVETnRG?=
 =?utf-8?B?R2xnQUlIMkZTQVBwWEJ3MitjaExQUnVFQnZWOHdOYnhHQW80RWU4SzQrOFBX?=
 =?utf-8?B?RVVJcWNVT3VsOFQ3U1lwcE5HVXozeGJ1bURRTk0xbXpKK3l3RjZOaWlDU0ZS?=
 =?utf-8?B?Y1c0Ukp6U0laQ2x0MWtYL05MMzRiQnJIeVR1L3RiMW8xQUxVZmNBUnJIVExn?=
 =?utf-8?B?Q0Q5QW9DMVlTK2JNSHJ1WXVzaTRkWnVBZ084TytpUGhWRThrMXRFWHY5cW1n?=
 =?utf-8?B?ZjRWZ2cwdXFCQTZOYmF0c0wxYkIwTlVka0tFMUJkUU9rTTFpVHl3L255MFVD?=
 =?utf-8?B?UEtqOFJNWTh1bEFCS3FOMDY2ZVlVbThac0p5RnZqUVF4ZlgrVHlRYTYzZWlW?=
 =?utf-8?B?YUh5WFVicFNsSGtORXJ0aHB0VWtMei9wMi9SQ29PYjc3M3R3NlM5eE93K3VX?=
 =?utf-8?B?cURFcnI5NnJOcUQ3a3lyMkY2M3RXMUFFZThEUGs2UjMya1RwdThXZGRIOU1L?=
 =?utf-8?B?bGMvakpFZmZwRks0eUEzSVNoQm9oajU1eXZUc0Vpb1BpMnJ1K2N0SkUybERP?=
 =?utf-8?B?cmEva2tsVGgyV3hkQ2U2SzVpS0ljYTFPRTBYeXdKLzNCVDFzS0NJWEEwVFJE?=
 =?utf-8?B?VUJMZ2txTlpsQVZDUEJwS2RQU1hDTVhyL3FvUGJ5amorVzI0TDZIRUNXL0cy?=
 =?utf-8?B?L0FaYUhHVHdadDhVVXVUd1N4REZGYUJ1SW5QZXFORVhUekJBU2pFMDlWQU9X?=
 =?utf-8?B?WHpaUFFxb2xpazZZRTBvWUpwNFViVVJwaEtxYytsMUtncUc5NTBNMUhmSElV?=
 =?utf-8?B?VG44WWJ3djdnL3BKVW5pTzRSbzRRM1c0UGtvZWtqVWhuaURzRWQwbUdqSkd5?=
 =?utf-8?B?ZkxBb0V4ZkFrSVFzYmJKcG5FVGltcWNVTWNXWnZhcitWQk9UN1VoSnYvOG9S?=
 =?utf-8?B?MThPbE8wU3NJMVVDMy9kVzEwZ2lCYzZRUC9xdk81VDE0Yyt5ZkplQ200bEp5?=
 =?utf-8?B?Qys0azhSQjE2SEdBMzJrYlUzcGZPdHRWM3FkRTRjQTFoSUtwK1BuMnpOTVIr?=
 =?utf-8?B?MnVIWDNub2ROSGhMcWlhZ2JPMjcwdDNkd0ljV0dJc3FtZ0VJeWdzMlExVStr?=
 =?utf-8?B?Z2FWdVRaRk0zMk1Eck5ieEhlWi9sdjIrdFc0MHRBS0N1d3hQVjA2dEw2RFY1?=
 =?utf-8?B?WUNxbHJNSGpOelA1L2pTRzEybFJXZUVYSFRyWnVEaUl2alNKazFhY0l6YnZV?=
 =?utf-8?B?ZyszbnBLQjQzMHNIdHU4dmlYcFE2N0hQM3FQNUJjeEdEYUhBTGo1ZFF6SWdG?=
 =?utf-8?B?Yk1nWld1cFQvUlZLbHhTTE9KY3hyeFF3MlRYVDQ1emF6ZlYzSm5xWGxVS0xF?=
 =?utf-8?B?SjJ4QTUwSGUyNWZYeUlDSXZyTVFUbFVPOEgwSGdBS0ExanVkZHRtTUpPSDBE?=
 =?utf-8?B?djhYTnFEYUhRZzRhRTJCMVdnZllrOHhtNEZESjBtbi9zdmZLVjNqejFzQ2p1?=
 =?utf-8?B?MDVpVzFLNUp0S0tBdnNNZWZ3M2dUM250MEhiamdjbjM4ZExYNS8rS2xMZ1Rv?=
 =?utf-8?B?KzF5Y3pYNDAzNGRBWTBCNG9LMCtuREh2UlZTMkJHRlh2UkxsQllDZUp4dmIz?=
 =?utf-8?B?bDFUaFZlcEtjVFNRcmY5aGdIRS9waUlkTzF5TzVkUXR5SWRyNEdUcHVaSHVS?=
 =?utf-8?B?QTMyUVJGdE1FUU1SSkRNeHNUZlBOeTdzNEwxWEZiU3BNVHk1aDhiNVZYRkZk?=
 =?utf-8?B?MytHb3FIS0d3QzY2RjUrOHg5VFg5OEY0UlNKRERsclpSampJU3dYWUR4N01q?=
 =?utf-8?B?STI1MXFIOU9KSzVnb3JKNDRSUXZ0MzNrODZSMHllMURwWnZXZUJzMlhFdzlN?=
 =?utf-8?B?ZVNtSmkxbFh0RGMvbkZ6WXN2RGNuMUhGT215UmRxWjRheFArUVlIcjRjME9p?=
 =?utf-8?Q?c0OS1VKTID7dmx+++J5PZ8JCulEzTE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2FPTUhjMFh3aS9lVENZblVWQVZMQXZNejlBYWJGdzZUM083NjcweFJLczh6?=
 =?utf-8?B?TGd2N0l5WGpwKy9ZQzZxOXllalJuMmNrcUJnQnJGbDVmMXg0cXRSRjJwYlN5?=
 =?utf-8?B?MXpEdnBZeG5TcnF4OHVTVUl2NWRFb2dRQ1NSOFB1Smd2bDBPaUNzOVhXemRG?=
 =?utf-8?B?R3NXczhTSXNvcHBHcGw3WUFXRzFwTU5DcEtzQ0t0Nml1SzVnaVlRQ0JLKzkx?=
 =?utf-8?B?ME55WVdLUW5OcEplV3lwUFFMRUUxa2dGdVJwWDVwWElNcFArbzhxTlNsMzZy?=
 =?utf-8?B?VEY3NCt2S1l6NlZJaGl5c2tKUnk2bDRRL3N2UXE3OUtKaWt3eHhyZ1RBN2dD?=
 =?utf-8?B?QVBNRUJEamNyR3pJaFkremdGVzZZWmo2RTAzeGNlU1FOelZNd09MaVdkNlRW?=
 =?utf-8?B?S2ZXaVYvK3A4elJtNWlCQmNmV3NmME1qL3VSSzZxZUs2R2lLaGppMW5iZ3FP?=
 =?utf-8?B?YkJ3WmJDMmxBK1FaUHJ4dzRtVkl0MGdacFF3blR3YnlTUHZEeUJzdW54TkFR?=
 =?utf-8?B?dy9acXZ2NGxKeXQxaVBIRzlTNTVJbXNNVE9sdEpXRW5ibG5PeFZrWmFWb2ZO?=
 =?utf-8?B?NjV6L2JmM3dXNmFWOEZOcERqQkhKZUNlOHAwOUNRNzZWOEErRFd6NjAwdE8y?=
 =?utf-8?B?d0hRUEhtQjZ2ZVZlVVNQeWltUWd0OTVxNnlXcFVwWmRISm40WnhhMTJEbVBG?=
 =?utf-8?B?ZERjSDRicHdQTFRaUzB0TFgwRW5TczFpS3BmQWc4eUIrVmJUbU4xTEtwVjlL?=
 =?utf-8?B?R3padUxuWU9sK3Z4VWhONCtld0R5Yk85bWJmSzd1MUdwQWRxMFpCVzdIdHJo?=
 =?utf-8?B?bC9tSU8vYWt1bzdGMFl2Vk1MOUJRNXJEd0RMSzBxUU80MnJoTE5oWFlnb3lM?=
 =?utf-8?B?eVp3ZEJ3WEl5Q1RydVpPbklET3VFdE1ibzd6ODJkK0FSdVhqZlo5NUNCZklT?=
 =?utf-8?B?RnhYazZwN0tvK2lpa3hyU2IxOGVjRnUrbWlublRNR0ZKcUVua0hnUWFucHcy?=
 =?utf-8?B?aHdLd25xeFlUOFQrZDAydlErTDRLVEttVGtrM3Z1cFUyV3BZV3JuY1NFcUlZ?=
 =?utf-8?B?cnF1U0hHTng2aHNCYytNRU5Wb0pJdEFEZi9XUWlWVGtEaFpIVklWK2JnOFlh?=
 =?utf-8?B?TnVlcGxIaHYrd2JpelZlaHA0QXV5QVR0UCtXemU1VUp4YVF6Si8rZG1yd04w?=
 =?utf-8?B?WWVTWVQrbXRXL09aYy9GL3RlQkxOL20zN0hZUVJwS2lFSml1ZEsvaGZjMVgr?=
 =?utf-8?B?NlVMMDJOV2F2TEdaUGdSZWRIVnk4MDkvT3BweUdkL2U3OXFRV2dOS0tlakZS?=
 =?utf-8?B?Z1FGdTNSQkxxVnJvdEIzdjN2L3pISmV6TDRZODFxOCtVRS8xK09EQnhzV3Bp?=
 =?utf-8?B?QUlINjFJZ2FXM3ZGN0R3RlduM3FLR2dPWkJLNXJnU0hhYy9lRFFzZjhlQm12?=
 =?utf-8?B?eHA4SWk4clhiSVhiWWl1WWJ3Q0JVbHQ3eWhvTU92bEo1WUNROXAvQlRGSmY3?=
 =?utf-8?B?ekxlRWVQTjU4dEdoeHgxVGpnZUJudHc5dTNKeUhBNGFnYUhGeFFvYTBBZXlC?=
 =?utf-8?B?NXd5eitpWFhPQVQ2OWpyZ1QvTkZQSllSa1Z2Szl2cGJKSWVYTFFSckpiVFFV?=
 =?utf-8?B?M0ZBV3NManVXZmRhRXk2SXFCZGQ1VzVXaVhtSTh5eERlY0NhaVZzbnVFMlVp?=
 =?utf-8?B?a2lhUFJuSVgyZGZiQzI4TGxqUkk0Wm42L0NuQ3k3amE3andNUkhDaVBhTkNm?=
 =?utf-8?B?TTJOTUlranJPMHBwQTljcXlxVlc3V01vOGYyc0xqUStmcXdmMkF1SW5UQ1Nk?=
 =?utf-8?B?R1kyNW1leXBCYy9uY2NSTy8wWHNiZEdZelgxU2pBY1NFK1NRcUVtSkg2dVBO?=
 =?utf-8?B?cmpGdlpURTA5RlgyQkdGUkJhWVdRUVVDMWQySzBob3FSTllxaTB1OWtEOEJM?=
 =?utf-8?B?c3hYQUN2bTZKK09sSWdNRmdLckRkelYzUmlrVGxrQmZMYitCbVR5RFk4VWxQ?=
 =?utf-8?B?RG9jZDZaTlk5Rk1LNDFXeFk1c0JxZW9MUm9xNitkWDNWZnRINC9iaVlqekg3?=
 =?utf-8?B?eWl5cDdIak52aCtIWGU0VlQ5azU3ZGQ4Sm9wYnJHaVk4czJkUDZhZ1BxRG9i?=
 =?utf-8?B?U0Y2eXJhMVFjcUNHR2JvSHVPL2FMWTI4ZVB3b1FteThuOXE3dzlUTmNiYnlk?=
 =?utf-8?B?OHdkOG15d1BKN3pRVGVBMFhUcW1jalFad2k1bXhxSEk2OVZCcTg1bk9QOVFJ?=
 =?utf-8?B?ZCtybzkzNHdEa0N4M3VvdlVsbU1RPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3C39E44ED6AEC64EA69F8C51EAAA5C35@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68f0b016-792e-4693-c495-08dd97bf0273
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 16:54:39.1773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j61xe+on2O+cokAQXSrKL3Tbr5iF/6vGnjoC5pFedPxbK0TVzjKGm6AsxbSDyAjl9bFTmiw/qEVk1TgOJAMdkVCoKfwyAFJNKomPTLJeSqU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4674
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

T24gVHVlLCAyMDI1LTA1LTIwIGF0IDE0OjE1ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDUvMi8yMDI1IDI6MjggUE0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4g
PiBUaGVyZSBpcyBhIHNlY29uZCBQYW5lbCBSZXBsYXkgY2FwYWJpbGl0eSByZWdpc3RlciBpbiBE
UENELiBSZWFkDQo+ID4gdGhhdCBhcw0KPiA+IHdlbGwgZm9yIGxhdGVyIHVzZS4NCj4gPiANCj4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gPiAtLS0NCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaCB8wqAgMiArLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDE0ICsrKysrKystLQ0KPiA+IC0t
LS0tDQo+ID4gwqAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGluZGV4IDc0MTU1NjRkMDU4YTIuLjM1NjI4NzMw
OTgxN2UgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IEBAIC0xNjY1LDcgKzE2NjUsNyBAQCBzdHJ1Y3Qg
aW50ZWxfZHAgew0KPiA+IMKgwqAJYm9vbCB1c2VfbWF4X3BhcmFtczsNCj4gPiDCoMKgCXU4IGRw
Y2RbRFBfUkVDRUlWRVJfQ0FQX1NJWkVdOw0KPiA+IMKgwqAJdTggcHNyX2RwY2RbRURQX1BTUl9S
RUNFSVZFUl9DQVBfU0laRV07DQo+ID4gLQl1OCBwcl9kcGNkOw0KPiA+ICsJdTggcHJfZHBjZFsy
XTsNCj4gDQo+IA0KPiBBcyBtZW50aW9uZWQgaW4gbXkgY29tbWVudHMgb24gdGhlIHByZXZpb3Vz
IHBhdGNoLCBkZWZpbmluZyBhIA0KPiBEUF9QQU5FTF9SRVBMQVlfQ0FQX1NJWkUgY291bGQgYmUg
aGVscGZ1bCBoZXJlLg0KPiANCj4gQWxzbywgdXNpbmcgcHJfZHBjZFtTb21lX1BSX0ZFQVRVUkVf
Q0FQIC0NCj4gRFBfUEFORUxfUkVQTEFZX0NBUF9TVVBQT1JUXSANCj4gZm9yIGFjY2Vzc2luZyBz
cGVjaWZpYyBQYW5lbCBSZXBsYXkgZmVhdHVyZXMgd291bGQgYWxsb3cgdXMgdG8gYXZvaWQgDQo+
IGhhcmRjb2RlZCBpbmRpY2VzLg0KDQpJIGhhdmUgbWFkZSB0aGVzZSBjaGFuZ2VzIGluIHJlY2Vu
dCB2ZXJzaW9uLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IFJlZ2FyZHMsDQo+
IA0KPiBBbmtpdA0KPiANCj4gPiDCoMKgCXU4IGRvd25zdHJlYW1fcG9ydHNbRFBfTUFYX0RPV05T
VFJFQU1fUE9SVFNdOw0KPiA+IMKgwqAJdTggZWRwX2RwY2RbRURQX0RJU1BMQVlfQ1RMX0NBUF9T
SVpFXTsNCj4gPiDCoMKgCXU4IGx0dHByX2NvbW1vbl9jYXBzW0RQX0xUVFBSX0NPTU1PTl9DQVBf
U0laRV07DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiBpbmRleCBjY2Q2NmJiYzcyZjc5Li4yZDc4ZDY0YjhkYjhkIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTYwOCw3ICs2MDgs
NyBAQCBzdGF0aWMgdm9pZCBfcGFuZWxfcmVwbGF5X2luaXRfZHBjZChzdHJ1Y3QNCj4gPiBpbnRl
bF9kcCAqaW50ZWxfZHApDQo+ID4gwqDCoAkJCXJldHVybjsNCj4gPiDCoMKgCQl9DQo+ID4gwqAg
DQo+ID4gLQkJaWYgKCEoaW50ZWxfZHAtPnByX2RwY2QgJg0KPiA+IERQX1BBTkVMX1JFUExBWV9F
QVJMWV9UUkFOU1BPUlRfU1VQUE9SVCkpIHsNCj4gPiArCQlpZiAoIShpbnRlbF9kcC0+cHJfZHBj
ZFswXSAmDQo+ID4gRFBfUEFORUxfUkVQTEFZX0VBUkxZX1RSQU5TUE9SVF9TVVBQT1JUKSkgew0K
PiA+IMKgwqAJCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ID4gwqDCoAkJCQnCoMKgwqAg
IlBhbmVsIGRvZXNuJ3Qgc3VwcG9ydCBlYXJseQ0KPiA+IHRyYW5zcG9ydCwgZURQIFBhbmVsIFJl
cGxheSBub3QgcG9zc2libGVcbiIpOw0KPiA+IMKgwqAJCQlyZXR1cm47DQo+ID4gQEAgLTYxNyw3
ICs2MTcsNyBAQCBzdGF0aWMgdm9pZCBfcGFuZWxfcmVwbGF5X2luaXRfZHBjZChzdHJ1Y3QNCj4g
PiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqAgDQo+ID4gwqDCoAlpbnRlbF9kcC0+cHNyLnNp
bmtfcGFuZWxfcmVwbGF5X3N1cHBvcnQgPSB0cnVlOw0KPiA+IMKgIA0KPiA+IC0JaWYgKGludGVs
X2RwLT5wcl9kcGNkICYgRFBfUEFORUxfUkVQTEFZX1NVX1NVUFBPUlQpDQo+ID4gKwlpZiAoaW50
ZWxfZHAtPnByX2RwY2RbMF0gJiBEUF9QQU5FTF9SRVBMQVlfU1VfU1VQUE9SVCkNCj4gPiDCoMKg
CQlpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQgPSB0cnVlOw0KPiA+
IMKgIA0KPiA+IMKgwqAJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+IEBAIC02NzYsMTAg
KzY3NiwxMCBAQCB2b2lkIGludGVsX3Bzcl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwDQo+ID4g
KmludGVsX2RwKQ0KPiA+IMKgIHsNCj4gPiDCoMKgCWRybV9kcF9kcGNkX3JlYWQoJmludGVsX2Rw
LT5hdXgsIERQX1BTUl9TVVBQT1JULCBpbnRlbF9kcC0NCj4gPiA+cHNyX2RwY2QsDQo+ID4gwqDC
oAkJCSBzaXplb2YoaW50ZWxfZHAtPnBzcl9kcGNkKSk7DQo+ID4gLQlkcm1fZHBfZHBjZF9yZWFk
YigmaW50ZWxfZHAtPmF1eCwgRFBfUEFORUxfUkVQTEFZX0NBUCwNCj4gPiAtCQkJwqAgJmludGVs
X2RwLT5wcl9kcGNkKTsNCj4gPiArCWRybV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5hdXgsIERQ
X1BBTkVMX1JFUExBWV9DQVAsDQo+ID4gKwkJCSAmaW50ZWxfZHAtPnByX2RwY2QsIHNpemVvZihp
bnRlbF9kcC0NCj4gPiA+cHJfZHBjZCkpOw0KPiA+IMKgIA0KPiA+IC0JaWYgKGludGVsX2RwLT5w
cl9kcGNkICYgRFBfUEFORUxfUkVQTEFZX1NVUFBPUlQpDQo+ID4gKwlpZiAoaW50ZWxfZHAtPnBy
X2RwY2RbMF0gJiBEUF9QQU5FTF9SRVBMQVlfU1VQUE9SVCkNCj4gPiDCoMKgCQlfcGFuZWxfcmVw
bGF5X2luaXRfZHBjZChpbnRlbF9kcCk7DQo+ID4gwqAgDQo+ID4gwqDCoAlpZiAoaW50ZWxfZHAt
PnBzcl9kcGNkWzBdKQ0KPiA+IEBAIC03MzYsNyArNzM2LDcgQEAgc3RhdGljIGJvb2wgcHNyMl9z
dV9yZWdpb25fZXRfdmFsaWQoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwLCBib29sIHBh
bmVsX3JlcGxheQ0KPiA+IMKgwqAJCXJldHVybiBmYWxzZTsNCj4gPiDCoCANCj4gPiDCoMKgCXJl
dHVybiBwYW5lbF9yZXBsYXkgPw0KPiA+IC0JCWludGVsX2RwLT5wcl9kcGNkICYNCj4gPiBEUF9Q
QU5FTF9SRVBMQVlfRUFSTFlfVFJBTlNQT1JUX1NVUFBPUlQgOg0KPiA+ICsJCWludGVsX2RwLT5w
cl9kcGNkWzBdICYNCj4gPiBEUF9QQU5FTF9SRVBMQVlfRUFSTFlfVFJBTlNQT1JUX1NVUFBPUlQg
Og0KPiA+IMKgwqAJCWludGVsX2RwLT5wc3JfZHBjZFswXSA9PQ0KPiA+IERQX1BTUjJfV0lUSF9Z
X0NPT1JEX0VUX1NVUFBPUlRFRCAmJg0KPiA+IMKgwqAJCXBzcjJfc3VfcmVnaW9uX2V0X2dsb2Jh
bF9lbmFibGVkKGludGVsX2RwKTsNCj4gPiDCoCB9DQo+ID4gQEAgLTM5MDksNyArMzkwOSw3IEBA
IHN0YXRpYyB2b2lkIGludGVsX3Bzcl9zaW5rX2NhcGFiaWxpdHkoc3RydWN0DQo+ID4gaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiA+IMKgwqAJc2VxX3ByaW50ZihtLCAiLCBQYW5lbCBSZXBsYXkgPSAl
cyIsIHN0cl95ZXNfbm8ocHNyLQ0KPiA+ID5zaW5rX3BhbmVsX3JlcGxheV9zdXBwb3J0KSk7DQo+
ID4gwqDCoAlzZXFfcHJpbnRmKG0sICIsIFBhbmVsIFJlcGxheSBTZWxlY3RpdmUgVXBkYXRlID0g
JXMiLA0KPiA+IMKgwqAJCcKgwqAgc3RyX3llc19ubyhwc3ItPnNpbmtfcGFuZWxfcmVwbGF5X3N1
X3N1cHBvcnQpKTsNCj4gPiAtCWlmIChpbnRlbF9kcC0+cHJfZHBjZCAmDQo+ID4gRFBfUEFORUxf
UkVQTEFZX0VBUkxZX1RSQU5TUE9SVF9TVVBQT1JUKQ0KPiA+ICsJaWYgKGludGVsX2RwLT5wcl9k
cGNkWzBdICYNCj4gPiBEUF9QQU5FTF9SRVBMQVlfRUFSTFlfVFJBTlNQT1JUX1NVUFBPUlQpDQo+
ID4gwqDCoAkJc2VxX3ByaW50ZihtLCAiIChFYXJseSBUcmFuc3BvcnQpIik7DQo+ID4gwqDCoAlz
ZXFfcHJpbnRmKG0sICJcbiIpOw0KPiA+IMKgIH0NCg0K
