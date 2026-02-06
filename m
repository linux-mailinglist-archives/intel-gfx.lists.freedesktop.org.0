Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NJJN4xghWmbAwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 04:31:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EB4F9C20
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 04:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA0910E256;
	Fri,  6 Feb 2026 03:31:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jbbMRwss";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 106A510E256;
 Fri,  6 Feb 2026 03:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770348682; x=1801884682;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AxOsMhNDZIpdlDnejsmwfJP6egxhe7VCH+tQOIFtono=;
 b=jbbMRwssJtNVHQErSvD9VfIkJ69bek0J7TaXm/2J2rnVHJOwZgFw8uPZ
 Bf1akdbDj3BltzjXc0oTxAxdhb4vr4mYHH+HacH/RLukplq6xVZOn4lAH
 aUpNO9mhTU7FhRCHYPmuls1mBeyeWXX3msbG00GPYk0fnzeHwaRhglu44
 2nPqD3GXSSwvC8bPlEkXGgLPwvlBApGXz8XFEYqy0KJgsR/EMecvwLIYD
 xEbDRzy2z7mxFy6L703iwQOx7WhLBX1yWQ3yGlpNXPdHlB+OHv71Lul5m
 xLSSAT3U4OigoPjL+GJ4RpTZ4rM6OLdv3MIPudbQGZK0lu3xcaFuEV5PA Q==;
X-CSE-ConnectionGUID: zALDnjaLSOW2SCXsqlLyZQ==
X-CSE-MsgGUID: QnMCYB0vQcGncUcSg+rdUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="88980476"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="88980476"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 19:31:21 -0800
X-CSE-ConnectionGUID: SmFcWYzMQdyRdtl6MJnDXA==
X-CSE-MsgGUID: 92oIo+1tRYKQFacEu8erQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="241427283"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 19:31:21 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 19:31:20 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 19:31:20 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.67)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 19:31:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=doFGiSrMGIRFvFyRQf7vw6ju2dilcIp3uJyIQv+9Dp3ZoHAZjTU3xGqBAdBFvAWzFUFe0sGs9Ps0X8GnBQvRtYcHI6tHytEZkqy7sbu+IdKAdTmj3+tJDOlIIU0LNtYstxweISaacXGjAKvpxea5P5YUABcBL+xD/l1ENtJgLNv4fOfCZLhqrMX4PbLn8a44T7B293UsOSuGWLoGFHcYE84gY0/b9rjneR7zQVR2nWf2s7aIha+Yl1rAKiF+5s8Tq2Fu2d9KHqSVVtpn9dID9lKLfcACXRptgGCfiSpfQfknhhCymEbKMHUlskKGm33hR9bCBBei/aqVXJvzVmIUkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EvLtPjZNKoFfxjMaWiDy8JFqLXfHqDeediiHaWXiaqg=;
 b=yXEdf8y8n4srB9xD3lkCqLjMMeqQUUWC3vj2wsRkYYHV2aYRw+FqIQx7v7+5iY6SyzPRUtLu76Dldt/yejQ4hCAwXIChEHo4FNnvxI+UA9+oTWUkEhD7iDDRxlJFmh0HE+iyowb62gAj/ZINJ8OgFuJA26f6Guqi3r0F0PN1GiCciiHOWCg+tXdOAI1AlvX9aS1G33dBEd68kPOVn/0s2KTBHRMZaia4tkcMK7yJ9YZGqWx33DPxNqBzi9+jzeYxbFm8ZfazSs175FPp19PF8Gs5O3L8Rztj7Qk2PMUmS5vCuiZ3uudaZ7DkXda+iaS9z84TD36SXlLeRDYB3dw+wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB5895.namprd11.prod.outlook.com
 (2603:10b6:a03:42b::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Fri, 6 Feb
 2026 03:31:17 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Fri, 6 Feb 2026
 03:31:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v2 10/10] drm/i915/cmtg: disable CMTG on transcoder disable
Thread-Topic: [PATCH v2 10/10] drm/i915/cmtg: disable CMTG on transcoder
 disable
Thread-Index: AQHclRdmBh5layoM9UOMxczwKDlxgrV1B3cA
Date: Fri, 6 Feb 2026 03:31:17 +0000
Message-ID: <DM3PPF208195D8DCB088A0C7CD56B8506AFE366A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-11-animesh.manna@intel.com>
In-Reply-To: <20260203134407.2823406-11-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB5895:EE_
x-ms-office365-filtering-correlation-id: fc68e442-b75d-4666-0fc0-08de65302ffa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?9GpPQ3leMV4lRcqroY8/N7MSLVV3IATXaty54eyYKtJKmFhW1JI+LmrldVeM?=
 =?us-ascii?Q?bJtwu06Xhvg+7LWHXqEGVUI+dHJgoSWBIgXTpUOaF+YfzcywRopr9yK2VIGH?=
 =?us-ascii?Q?RlTO1r2A/GtbzfgaDrgVylGOu16y3mGGIugm6doqabIfNM9Xa0vdqN1723ey?=
 =?us-ascii?Q?/OO0rSraLeM0dt15+Gof8UqskrOQmHx+63VSZ63WF7xIXcCrPnbOYYIThiiU?=
 =?us-ascii?Q?8D+AwPCNnivPeJbx5i/EW+O9eQDw1BMvu1yHWjTJ3JsTKh/xGGDFVqdNMaum?=
 =?us-ascii?Q?NZ2R8sJXKuIozo0ufQoQiIRWqx9g1f2cqLYmua+OHmQat0okGy2xAn9tRlQA?=
 =?us-ascii?Q?Jaz5tZo/FgPTWzi/eW6ZiOObygS5MNfZHgQuj9j0RRvPWOOUUqP+7QiQipr+?=
 =?us-ascii?Q?d8mp+MONIA3bsLQ8GF9UBBKiqidgfIap/5vBHqY0N5FbhPbg8bnHIRDyGPrV?=
 =?us-ascii?Q?2qVC8Ysy4j/iIxhQWUHXI/iIbJybYMpS2gEGGpkquLDeKmcfg9gOnWRmgsJO?=
 =?us-ascii?Q?5rGBDLLL10I8Jn6d4EEMrsQv6aa+uKYRwIqCSULCCXnBauD9tx4VU1YjEbP7?=
 =?us-ascii?Q?8R4oyn10ONF2QxbDywd0Rx6W+uCzh6P6IgQJEwEN6clh/JhhxeDtHH7mITV6?=
 =?us-ascii?Q?DddaqKRKWPyaUAzZPZoL0qioe7X0HBzv/a5iH6E0PLaJkvDa2JGscT541E2J?=
 =?us-ascii?Q?SUbosZj0O7U7UsqhjosvWwhXsQPxBtScnXaExkrWzxYKXTc+bLlIVgo/hgAt?=
 =?us-ascii?Q?WGKGtM30fhmGah5eC+/0eZycn+FMCTLmWOhHQWPkL9Ew5nMm1Gyn/areiSmp?=
 =?us-ascii?Q?h57AKcNtKjQShuJXhFO3fvOH62SD4aohey/FUYCUrUB3atkReJqwQA2Jhxvq?=
 =?us-ascii?Q?z7QyDnfAlmnNMpP4vtf4CJFcEJi5fgzblcZkwzg1n2skYdxTEwSR3altrtYE?=
 =?us-ascii?Q?sF2q2jOa4z7PdmJFWOVb4A/CSVpgwc6BkyM2wyiEgA9isPODhVJUrbXNzndv?=
 =?us-ascii?Q?wNQD8R3+V3lMGRHaAzmxKOq+aC6yLnUT/+1+tgmIfgGwUtETazZ0j0UG+4dG?=
 =?us-ascii?Q?m0cKZFEevgj2X0B/Ub/luCILZN0G8nhNY1QHqUUP7f4jHSV34m7CgATXakO9?=
 =?us-ascii?Q?MBbz0/PY2JRZ4/8t9FMtsTJfjkEONVZJxTTc8QGxXjJpF339n4nbvggKom3Q?=
 =?us-ascii?Q?K7y2AKCRVUdDue0WM4L50zQApvp5cVY6ZjIEnyvIbzFqWk3r8i/AipyC+WuV?=
 =?us-ascii?Q?40OdYDeMpXuXJ3GnSIcLkWWjvIE6/mdraT6TULsg2vZWJIVl1Zf55kvgSnxr?=
 =?us-ascii?Q?anT/QiKCkrBPKZGbkX0c4V8rKeOD6RMao0OtXV+nzu505xJRwubpKBRz9KMN?=
 =?us-ascii?Q?R+TD/4LHkU8j/C63KoEiJpdTR2WiP0ziaSTn4k2lf6hbyu+l/ADT5qT9W+J0?=
 =?us-ascii?Q?piqAzixWxpGLrx/1R13nG+zy3dTgj9BANTY1PUwQDTIBajw4/6gFT/Zss6D2?=
 =?us-ascii?Q?QV1KxbCBElzm+XRlPEt5Bqi34wjcyyo9Zh/Rm9ljfS3PS10k1TfWnL/nNMNG?=
 =?us-ascii?Q?bMVNhkciv9J4VCG8a9wlXAaLoICTfuAusss+yFer1/CEaFBxnPACR8vhsq2U?=
 =?us-ascii?Q?ziT3a6YYiGE8o7AmVGytNls=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qEl6DfhPFLJ4FU7suNuu+xHCOWZzHFN93uImSadyxbC/JA+pAyJOg3wfiwjm?=
 =?us-ascii?Q?66Yq25H9/aUjV51nsNBVLy5t35WY1FV9LsLzzq87f/MQdk8HIHXn8a5SvWdc?=
 =?us-ascii?Q?G9ApZzgwDY0W800aq4CXyagAN1G0Y2Nw9SSAii8/7uS2C5SORQ3xwyjPVkws?=
 =?us-ascii?Q?gbEG4JTOAgQzWqvPh7YEK89phXeZfT1RROeLovc/NSswZpdMMSfFHFq/z/We?=
 =?us-ascii?Q?XyTbIL/plBPUqAk6NmoQDxa3I8sggLKT4oaifsvfcXXt3Nl+IaAs5da7dhBW?=
 =?us-ascii?Q?YtsEPr8Qjurga3kiWgxxsuU8I5oF8Vnm7LR9U2irRG/zU64/1UvK2h25tWL1?=
 =?us-ascii?Q?g6WGcPKXnSgIumbg0MqY/EIwO5cA3FvTFWDE9hnkDgRTCdr/xyib5H4/F7VD?=
 =?us-ascii?Q?RaSpt5sQz8MbXfFQVBVNHkdL/v+J+M8+jwcaOdEyN5PPRsBHSUIMW5Wx1hu7?=
 =?us-ascii?Q?UBiAPOoETvxB/OYrbhsFuF4j3IcJw/TEob6VD6TbgYhoWSKquJzwVT+3EgyN?=
 =?us-ascii?Q?4XXokl7qMlScXgiV+xh+OICl4V/SzR/x7q1nru2FrYJ0n89NEL0hvuAJgQ5v?=
 =?us-ascii?Q?FSV/2ydUS0GOfjgCmBzOLj5fAqO2/TAbUfFdwVl6H9C9m3AD+6/RXibFofbD?=
 =?us-ascii?Q?qMgAuyMLTYUdFiWH8wczqBNxydS6QEtJdkNN7bJ1/r2qh8yX1rycufj8cqpM?=
 =?us-ascii?Q?xI/Zf7P/MXJ5asrjigfH7epULnE80uT8yyCEgK3jIsid4FfN/SO+AixVVyJv?=
 =?us-ascii?Q?a0RSA5ZiAbSLYb0d76k4QVzaCqk6xZ74WLFF2OqvUsiQUwBbsfzK9FJD4Tna?=
 =?us-ascii?Q?df/nihPVSbJkpvo+92qQhmPRIVH1N+UJ7pGluPa6Sl0LQbdFRTCLCG9Ktkqh?=
 =?us-ascii?Q?6gqP4vWWOgke/MQKeRvQgSlTaNb94PdWrDgQKuAkt0/9ipgf57Ydm/1aEHUR?=
 =?us-ascii?Q?4/+Cg4VlJBBcfSbJIjyfQpo2WooUXp5+PvPRdJmas9Kl1d+GNsbTu4yIc5FZ?=
 =?us-ascii?Q?Sv/UAdyCRlkYUTEipYnNowO8isT+ySXB+C0q0Z3A/cGx2+KvXbQJ/WAvCCvt?=
 =?us-ascii?Q?AadnUHZKJNTkwH6vSlOrlH3rWosH0slpXbT1AQWq3S5gyAk8xfGL8YB83mP0?=
 =?us-ascii?Q?51CbNbK9hT7aU0gRANvIwVD0WF5EIx9OJIufYONAFlSjaPIUDilooxLybkvI?=
 =?us-ascii?Q?ew6w+BXEchjFwFadHofjp0fZ2ko1R4l0UbwGhcFeq0jOik+XTEyiEVkh7k8r?=
 =?us-ascii?Q?YOvYZMkSQIsdPTsfXmewpfNh0v64V0NSwV9dfc8peqroP2gkaEH71Rdn8U+n?=
 =?us-ascii?Q?LYOeeaVeOZKZDV6veYwZ5HsH5mczXecAH9YST7xamMNzyp/BuReZJT+zjG8c?=
 =?us-ascii?Q?dqbE418zlMbsWLU2TKXtuQtWtOpjGxTRAnPufY1tQDeC9UjPFr6yMxni/xzz?=
 =?us-ascii?Q?yP8hJg9k0bXEep0ZnJtfSGc5yMr7kVkoYuHVHfrA1nT4bAh7cbCM5UGp0uft?=
 =?us-ascii?Q?T724hgxLUQx18car696GNx5ExbhF2zKcK9+NqRzro1Jecx0TQVDuEYQ3IZrM?=
 =?us-ascii?Q?VvrrwEmQaN3MLoLd2VrCOFvJG/jwYLkyVX8XjACeyIprt0rAl/EbNF0ZqASb?=
 =?us-ascii?Q?vT78FfEIxphXAqpl4N6AFrb1F/BTAESwnHcGN0DYk4CRn3IxCLmfFIPJ619d?=
 =?us-ascii?Q?97Zq2ZzchY0T9KbKsr9iFOmX5PhRQP1w21e3kvsJO4k3esnWZYefposi9fD+?=
 =?us-ascii?Q?l4hEY+jMQg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc68e442-b75d-4666-0fc0-08de65302ffa
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 03:31:17.0352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VPeJ8AqMK1f7pzGGayeKcLqC3YEIGIcRhXbxqugC5Qb3+CncwETw9Sui6EeYBSbAUtbEmMW1S0mrjMlfkQD2ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5895
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 31EB4F9C20
X-Rspamd-Action: no action

> Subject: [PATCH v2 10/10] drm/i915/cmtg: disable CMTG on transcoder
> disable
>=20
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
>=20
> Add intel_cmtg_disable() to disable CMTG when the transcoder is disabled.
>=20

Bspec link

Adding comment here unrelated but I see no patches which redout your CMTG s=
tate dump it and verify it I think
You need to added those patches as well

Regards,
Suraj Kandpal

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 33 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  1 +
>  5 files changed, 34 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index d1ec9b79cef2..844e01b6fc9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -18,6 +18,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_vrr.h"
> +#include "intel_vrr_regs.h"
>=20
>  /**
>   * DOC: Common Primary Timing Generator (CMTG) @@ -126,8 +127,8 @@
> static bool intel_cmtg_disable_requires_modeset(struct intel_display *dis=
play,
>  	return cmtg_config->trans_a_secondary || cmtg_config-
> >trans_b_secondary;  }
>=20
> -static void intel_cmtg_disable(struct intel_display *display,
> -			       struct intel_cmtg_config *cmtg_config)
> +static void intel_cmtg_disable_all(struct intel_display *display,
> +				   struct intel_cmtg_config *cmtg_config)
>  {
>  	u32 clk_sel_clr =3D 0;
>  	u32 clk_sel_set =3D 0;
> @@ -158,6 +159,32 @@ static void intel_cmtg_disable(struct intel_display
> *display,
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set);  }
>=20
> +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 val;
> +
> +	if (cpu_transcoder !=3D TRANSCODER_A && cpu_transcoder !=3D
> TRANSCODER_B)
> +		return;
> +
> +	val =3D intel_de_read(display,
> TRANS_VRR_CTL_CMTG(cpu_transcoder));
> +	val &=3D ~VRR_CTL_VRR_ENABLE;
> +	val &=3D ~VRR_CTL_FLIP_LINE_EN;
> +	intel_de_write(display, TRANS_VRR_CTL_CMTG(cpu_transcoder), val);
> +
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder),
> +		     PORT_SYNC_MODE_ENABLE, 0);
> +
> +	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder),
> CMTG_ENABLE, 0);
> +
> +	if (intel_de_wait_for_clear_ms(display,
> TRANS_CMTG_CTL(cpu_transcoder), CMTG_STATE, 50)) {
> +		drm_WARN(display->drm, 1, "CMTG:%d disable timeout\n",
> cpu_transcoder);
> +		return;
> +	}
> +
> +	drm_dbg_kms(display->drm, "CMTG:%d disabled\n", cpu_transcoder);
> }
>  /*
>   * Read out CMTG configuration and, on platforms that allow disabling it
> without
>   * a modeset, do it.
> @@ -185,7 +212,7 @@ void intel_cmtg_sanitize(struct intel_display *displa=
y)
>  	if (intel_cmtg_disable_requires_modeset(display, &cmtg_config))
>  		return;
>=20
> -	intel_cmtg_disable(display, &cmtg_config);
> +	intel_cmtg_disable_all(display, &cmtg_config);
>  }
>=20
>  void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state=
) diff -
> -git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index b2bb60d160fa..4f70577be136 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -10,6 +10,7 @@ struct intel_display;
>  struct intel_crtc_state;
>=20
>  void intel_cmtg_enable(const struct intel_crtc_state *crtc_state);
> +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state=
);
> void intel_cmtg_sanitize(struct intel_display *display);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 0ed767a797c0..f11d5514c376 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -21,6 +21,7 @@
>  #define TRANS_CMTG_CTL(id)		_MMIO(0x6fa88 + (id) * 0x100)
>  #define  CMTG_ENABLE			REG_BIT(31)
>  #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
> +#define  CMTG_STATE			REG_BIT(23)
>=20
>  #define TRANS_HTOTAL_CMTG(id)		_MMIO(0x6F000 + (id) *
> 0x100)
>  #define TRANS_HBLANK_CMTG(id)		_MMIO(0x6F004 + (id) *
> 0x100)
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c
> b/drivers/gpu/drm/i915/display/intel_crt.c
> index b71a8d97cdbb..37a6a139f67b 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -35,6 +35,7 @@
>  #include <drm/drm_probe_helper.h>
>  #include <video/vga.h>
>=20
> +#include "intel_cmtg.h"
>  #include "intel_connector.h"
>  #include "intel_crt.h"
>  #include "intel_crt_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 976af9eb3c3a..622f9b690342 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1773,6 +1773,7 @@ static void hsw_crtc_disable(struct
> intel_atomic_state *state,
>  	struct intel_crtc *pipe_crtc;
>  	int i;
>=20
> +	intel_cmtg_disable(old_crtc_state);
>  	/*
>  	 * FIXME collapse everything to one hook.
>  	 * Need care with mst->ddi interactions.
> --
> 2.29.0

