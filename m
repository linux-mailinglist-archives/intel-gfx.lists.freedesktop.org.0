Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AB7B2AE96
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 18:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D44810E4AA;
	Mon, 18 Aug 2025 16:55:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CF1U66Nm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E1410E07F;
 Mon, 18 Aug 2025 16:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755536145; x=1787072145;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TyBTdX5i777ueBEQHn9ZYq1V1tSHX6IcL1bWh49Q9PQ=;
 b=CF1U66NmGto4oAB+X1/+P+Ca4yAN0YwC9ItbFw7VvvwZrFWLIRDD8ZTd
 UnS2R97fECcWYdUT8QdlpA2DcjsCKZGPBH42ByJ44SFMBcjTp1Fd+hSGH
 dMTQYZMa27kBT4SZN5tr8YQ2ESdBGJ1q05Wn36ZyuDthBehQthcD5feYK
 E3NTfple5+IMgjp4W9aAukTzW7l3e5oqhoj63M7eykE1jRDn3J/RZkYIj
 hpXCQEEHvv8I5k0RMJZCpZ6LQI0rF+ENCdcQ9UQ2ieM2pZ/opnkgDudIv
 LX30Iber1X2UkiSTn4X2DiyC6gDW2Wenu+d4miXIEvFxH4RNnUdoZFABL w==;
X-CSE-ConnectionGUID: EpPxNB+/T5KH0ZEID3k32A==
X-CSE-MsgGUID: TRVniTb5TAGqeq0jdzNzXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="60389849"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="60389849"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 09:55:44 -0700
X-CSE-ConnectionGUID: oQ4AccZwRVCncSWIyACmaQ==
X-CSE-MsgGUID: RY9bIZCXQ7+Fu7ZKFofefA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="198634594"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 09:55:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 09:55:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 09:55:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.63) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 09:55:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZgVnXJN210t7ILmn5fQCy2b3h4oNnq/uClCAPNHMuhgpG7LfMjPxezW23I6Te2nm6NiTNmdDzgGKps0G7xztJzFFmpjB57H/FKZQPHmAxLBc4annCQ7X61zjgleb3yb/JK6DiG5SPx12pJdjbWWF+4KcGB8yNFoDnSP7G3DVy9PZ+cefHd1AWmOqIlYs2MlgvC6oEFSrdfI+YQs8nMzpd5q0UmsL4Jh9RPlWvpjmD7TozZ57WHULrPrnStZa69tpplOGZiBUFqUacfe/zqRP7bTV3yujlaByXGaUo7yLNZ48gLDAzwCRcegmvm78HViE9Dotuw/eef0hFWG4Z/9fRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yMHXoN86ZW1G1iy9R3EfPHhJ3ZTI6vRkft8PTSNKdM8=;
 b=sjJw5YwPKzCuo/IV8jS0saTVZ+dGe+UkQ55gwnKWJMwA+UfTF0pSzr8W8EH1CiMLIyMfrXSSyaQXiWQFt2DosfYt2ZYFrKdrbhW6fu4ydWZFxyxxwYdGNlZLQ4NOO6WVwuy/6QpgnA6mPfOR+TyVoIDimRawxqR2YvserEU85ryX5UxpT+I7v6OpBKTNgrCqATgJ0yVC2tp8kBg5qkFatiirT4PkJLU/NHBxLBx5V2evtNz0nudw4MG24fMAKAT9udf5pT6W3nZ8q7pjBxYSfIu/5BxwGWZbjvrVgQTI0rrKThgPWzUe5LacwqStH4q5kuPMN3pnmhcPiyEsDog3cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SJ1PR11MB6299.namprd11.prod.outlook.com (2603:10b6:a03:456::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.23; Mon, 18 Aug
 2025 16:55:40 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 16:55:40 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 06/12] drm/i915/alpm: Add function to compute max
 link-wake latency
Thread-Topic: [PATCH 06/12] drm/i915/alpm: Add function to compute max
 link-wake latency
Thread-Index: AQHcEBVEiweJjeHVFkS7ratubqUAQLRooZ8g
Date: Mon, 18 Aug 2025 16:55:39 +0000
Message-ID: <IA1PR11MB6348D440BDEF6423A18B7A37B231A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
 <20250818073128.2319762-7-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250818073128.2319762-7-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SJ1PR11MB6299:EE_
x-ms-office365-filtering-correlation-id: 5ea33454-1f89-47d3-9ae1-08ddde780fd7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?DZz8GAW8Jv74C1kOD4LkRg/V9ncjJk7q9Ti19oRbsE6EfUt4wqnE0HHnyMbO?=
 =?us-ascii?Q?E0xsOT0kFcbQejP1RJQsP31NXhBHJjKjqwZYr9C+3yV4hZGw14+bC1iYPjlx?=
 =?us-ascii?Q?Y2ELp8u75jMc3jQFB+wQ3OUjRVo4G1iOvzDb+iyTq3+/AoD05JHo2HXg3rT2?=
 =?us-ascii?Q?MJCNhooRCCNA0Opv7P4GRePGWF3k4C22fOXKjBfQOMyswPPqH7vd/e22trad?=
 =?us-ascii?Q?cxrgqCLBz31Vn+nMqW8+UwTcAsBVcAZo4Vk1hIp3ypbaBQZG98zOQS6HrKcf?=
 =?us-ascii?Q?9YEEpYvb7GO4JhVkrV9tQa2bvYR4Zg+4ftf5xPNWkGXFio7MbmWJjGKf8HRt?=
 =?us-ascii?Q?YAbqlddOhmUwKSpH/0+gVLaGE7fgenklAwb8ytaS4+UjSz3QaZxo2eyIaFuU?=
 =?us-ascii?Q?hFPwmC9Aq9NhMM88u4w/rzaRBkXhmamZnMXm2ttzg0tCdU54isWN327MxKkF?=
 =?us-ascii?Q?dYA5JBf26ItwsnL5m2c/wkZ7eMI9ph4l2rbOv9wXse0xxU9b/Qp04hAD+KJi?=
 =?us-ascii?Q?6g7BNo080nnUVgORZ7+52KGF8Y6OPVW4xDLhqPgBPa+9JcNBjsLfogHUFH9z?=
 =?us-ascii?Q?whlC/bXiheyQqHMGX2BszPW35RVG9veGFqOsdTWo3rxPaQb2I91+Y/jgiwmG?=
 =?us-ascii?Q?NPOsIRh3kNbXRfavQ8lfhuf300uK5Vol5ocwEZU+Zfw/GVrUYJ0o4ysKPRT/?=
 =?us-ascii?Q?ud/MSAjb3Z1tZN0VZg7mQOare7tcDIbsLXro+OwrvNIFUZouaU/HPR5G6CNs?=
 =?us-ascii?Q?Rm8JS596xGhTYiipC2cPAqVTRIhQZnzQo5Rcf2rqR5CjHTYdFlu6if5LO5el?=
 =?us-ascii?Q?GL/zYG7v9r0z1b1UFcFjhBq/KIQ+9isuBeNqX6gMHpsmYUQn7f2wM+nGF1JL?=
 =?us-ascii?Q?GdeEF9aWl9duM++fCfPVV6PFekrDfstP5AeDwYHYJXMgBwpvUn8oNVCuhqV+?=
 =?us-ascii?Q?OlhlJNpvrnPpBXhdJt/F/x/CCrC/YnkglA0cPhdTkn9aQ1AbJGFsjHOfznAp?=
 =?us-ascii?Q?FWzIicDzVywk3cPtKIh4RtjKjClrtwDTIJgBIgt+UzuUo0qMadAP30IM+8vj?=
 =?us-ascii?Q?cT1Nn1sPVZw9ngr1+ZRHtYrknFMjZGbnddNVaaaHrqpLhf7zgzvOrq2rKRR+?=
 =?us-ascii?Q?mJNf+EHgPy/1ADaPoU7YJMdrUuocq0y0wAjW4dsL5g72lNd+myzJu31gGA5B?=
 =?us-ascii?Q?1Z/UT9Enkl7J9LxvdMI89nu3TypRPner3Irk+Rq7+/wPDhrPJFBAxOfKw6bV?=
 =?us-ascii?Q?7U0HHphp6lsqtZ6ULWZUCnRLLAstziaMvi/ZlVEiMiZNcFFJ4JNHzSMV8V9H?=
 =?us-ascii?Q?dx9ATrz9vZDHUnbil+B9qQuwjvZBiAx8w7ft1pVtiITTP85ynuUwOkArf9YM?=
 =?us-ascii?Q?BFjRSyi4NvcuSyXgzd1VJGhfpTcppEsy/6Ar3VqhmcNv/8qJylrck3gq79xr?=
 =?us-ascii?Q?Np3/uU7PLYm/AJWP69JkYYZSQiYVWF+rYmBDj9HwRkpVeTYa9rEQdpoJimPL?=
 =?us-ascii?Q?NeIzMAvFi32Po34=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lIdTZnJaK9XTpaJB8brCEagjWDvfACMe0fi8E6bFnZQ5QwAscwKUmqR34rBJ?=
 =?us-ascii?Q?znKuZ822/jRAx1C/KbMq1JA8pwygmDrc4N94RlU9UtkNjXE1tp7flKC/vifP?=
 =?us-ascii?Q?OSiBSyWFUHi5DNrFKcivlTPJqWDDB/sjN5x1wVCP2D1nbIeM+eYTSu/SFVz/?=
 =?us-ascii?Q?EIcaPca4jfgdrASzYH/FEDLnWgI21Kro9zCL+8X/Tf5eCZ8Q3R86ynFEmQNK?=
 =?us-ascii?Q?d9yH/VdL2YU6vcDUjvh1hWy2mTu+0WUX9YODoj1SkPDcuAvMZbEL8UMDYJec?=
 =?us-ascii?Q?RGB/D8cpTxUZbX++hq56zQfZJAxoSK/lpiWZV8Pb6erQVw2AucnHaZFjswSc?=
 =?us-ascii?Q?O27nDVP90o0xN2pc5ZY4dvYTa/3ZDqZgTrEjG9ZPTqYNrjkg5G/VuaxYnPnl?=
 =?us-ascii?Q?BCWLipthskz8a4nbgdUNNKn8Ah56yQ9q/ezFMgGiwrhmc396io0/G8yHvcav?=
 =?us-ascii?Q?IXYQ5xjW0C5Uc9F6at0ii8hFrszcHVnmpbDbwTn/J8GJQOr9hr1iGf0lVmSr?=
 =?us-ascii?Q?rWhMHXBu0wPjWZ1fczBodYaLhgzuBpnU0mtR7724rv2QxtuJw4WO4NeD8/9J?=
 =?us-ascii?Q?lJrbXbzOKzTtHfSMHTlfXnuxFHSYDAylLl37nycfSzc7vqfnhurhIBcYMMNX?=
 =?us-ascii?Q?a/zEw4/u7+XrQU9FSfTxOyqFRBX6A0FO6pRuN0YAU52UiSLd7vtDkaPvLSSX?=
 =?us-ascii?Q?BGod1gJGw6A7XrG/lqpYoU6ZgY/zY9Y87RsLU3PaMSIORUNit4+/huA1UhGz?=
 =?us-ascii?Q?q9TmmcCfC5mo8hAjj1nMnsM7gHkJijo3t8vuiTSCFMcducvG0XQjUu6BQkId?=
 =?us-ascii?Q?valTQeL3ENrqxakvrJSGZZp+Mx4i4woC5w35Duv+mqPjGAARN3edBqDMW3Iv?=
 =?us-ascii?Q?DHdmXIn0ApXJ90RS+x7QV3gQkrcJgw8lqroIU9OWCZkhyYoHqCp0C4Z2uTZR?=
 =?us-ascii?Q?mwDF3ZZFJRLYfnBqUal36JKbiIMBetTpXxFozs2cpAueSNra5V7+hQQUKxe7?=
 =?us-ascii?Q?6liMNXLya+b/iOBvSXvMlOCDTemA1sez0xQZhGUBTbe+eeetyIdzBC/rMs7F?=
 =?us-ascii?Q?PXGn790TYj5BKqP9yTaPDRg+7Ccy1fio/B5NzueF+WmLlMfBjHfU4AJrcJaq?=
 =?us-ascii?Q?x1ev7wWV7NLn5K2HfAwFyWPiz5VZ3e3139HdRhJeBRwFwZeEPSDHfwWToP27?=
 =?us-ascii?Q?pG/f+MPe5A+S/9U2LUo7S8C7whItaEDCHsZ3kkAPZ0R4CW9wlgkrbhVU5Mol?=
 =?us-ascii?Q?yyTfQKf6i5q40FV6maKDUXEeLJPrGbVWCpDrt9WLXA1/PiCKEh0Lw565B5fP?=
 =?us-ascii?Q?rcQ84IlyaUg6LU1ONnItzNfbJ+EwiQyGOd+l8x6LWokpec1SiulM1I8a05TM?=
 =?us-ascii?Q?Pn1WJv+ZTxFtohiN8Z1rIHTMjLP5R77bTrz+oEYpFOm1Q3UrxcKj+3EW/YVx?=
 =?us-ascii?Q?H3E5SWh+wanyKKWO5VDAkJcoTHiY6alKYjZC098J05E3K1RdCJVAoCsgHojc?=
 =?us-ascii?Q?6XyTKFBwbIEerKzI4b1ia4qhEzJoPPKru7GnWRiZz0YbsIH4mYWKp2Q8bPDI?=
 =?us-ascii?Q?6TT/ey7RJV7VP3XNbO/NA7X866T8kk+Sk+IifjkgesYwH3LGfuDm4J8XhiTD?=
 =?us-ascii?Q?vJx/ys94UFOIPj/k6j880L8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ea33454-1f89-47d3-9ae1-08ddde780fd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2025 16:55:39.9133 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q/1S/n0mODQxrIF1ny3zZSP5yUv93iIJebvF2QoohOsguCoe+PtByW3g+zlNKU8Lv+40YNQmSpR8NteaGITtcr4hDGsKcN1yXh+Ao/bUPE1PHt8YFdPtbdl1dNWV6YTK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6299
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: 18 August 2025 13:01
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K <ankit.k.nautiyal@in=
tel.com>
> Subject: [PATCH 06/12] drm/i915/alpm: Add function to compute max link-
> wake latency
>=20
> Introduce a helper to compute the max link wake latency when using
> Auxless/Aux wake mechanism for PSR/Panel Replay/LOBF features.
>=20
> This will be used to compute the minimum guardband so that the link wake
> latencies are accounted and these features work smoothly for higher refre=
sh rate
> panels.
>=20
> Bspec: 70151, 71477
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 15 +++++++++++++++
> drivers/gpu/drm/i915/display/intel_alpm.h |  2 ++
>  2 files changed, 17 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> b/drivers/gpu/drm/i915/display/intel_alpm.c
> index dfdde8e4eabe..42b4a0ceb53b 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -628,3 +628,18 @@ bool intel_alpm_get_error(struct intel_dp *intel_dp)
>=20
>  	return false;
>  }
> +
> +int intel_alpm_compute_max_link_wake_latency(struct intel_crtc_state
> *crtc_state,
> +					     bool assume_all_enabled)
> +{
> +	int psr2_vblank_time =3D 0;
> +	int auxless_wake_time =3D 0;
> +
> +	if (assume_all_enabled || crtc_state->has_sel_update)
> +		psr2_vblank_time =3D  io_buffer_wake_time(crtc_state);
> +
> +	if (assume_all_enabled || crtc_state->has_panel_replay)
> +		auxless_wake_time =3D
> +_lnl_compute_aux_less_wake_time(crtc_state->port_clock);
> +
> +	return max(psr2_vblank_time, auxless_wake_time); }
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h
> b/drivers/gpu/drm/i915/display/intel_alpm.h
> index a861c20b5d79..8f1db54eecf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -38,4 +38,6 @@ bool intel_alpm_is_alpm_aux_less(struct intel_dp
> *intel_dp,
>  				 const struct intel_crtc_state *crtc_state);  void
> intel_alpm_disable(struct intel_dp *intel_dp);  bool intel_alpm_get_error=
(struct
> intel_dp *intel_dp);
> +int intel_alpm_compute_max_link_wake_latency(struct intel_crtc_state
> *crtc_state,
> +					     bool assume_all_enabled);

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  #endif
> --
> 2.45.2

