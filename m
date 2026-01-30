Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QA1yLG4ffWmYQQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 22:15:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9394BEC09
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 22:15:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C7110E344;
	Fri, 30 Jan 2026 21:15:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fqmPBVH7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87D9210E344
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jan 2026 21:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769807723; x=1801343723;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7EgjNVNn+vSsG+A4PRqHSpU0ald1nxPfyas1Zf7N5lA=;
 b=fqmPBVH7I6xRLq1bwN0mJXF2x1SNolPgHMlYT3yiPUn7DSScQwDCEwoh
 qy5ix+dpnKkE/5wYTyHxcwpwU4Co/GW+9DrIWlhUh+a4Qe3Ha69XdvW51
 1nAmmOREGxokEwk+o2O2Vs1mxvI2HOOn9jgXSvTQEAfbAbYo411oQWKUX
 Rh0SoHVEGywm+vTBGogOZxsBjW7/6MCXlMdu7guE4HJgY96Tssv8IeLB4
 A0BqQqRh/obEmurcioN22axrfllsQc4EX6kQjAxxZof4O5WkFXM8uu3f3
 0Q4uQV3SISN6B/1VIfAtRJKHjOlpTkqn6PldNL4u1kCssgsaOCjIEaJzW w==;
X-CSE-ConnectionGUID: jts0C2WmS5aMSWEapXQncg==
X-CSE-MsgGUID: srvfPNBuSo2xOP1EvnJSqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11687"; a="70965500"
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="70965500"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 13:15:22 -0800
X-CSE-ConnectionGUID: LGjp2taSTQKLogHBvVrXyA==
X-CSE-MsgGUID: V2PIFK+mRPqqpTOwzq5YgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="209304726"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 13:15:21 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 13:15:21 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 30 Jan 2026 13:15:21 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.35) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 13:15:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l52Uf/ROimghaue4abQyxggOACt2R9MC9VrqX9kk9uRn2WB9choZ5IKGkMARTBloEl9Z4A456H/r+9XRyXDdLqqxsDt4rxrztqO3Z2aQId+iGScdAf72gN8GKtyynKbY+iINkqgNbmyJdfHgy35nID9dtfgWg+zVHpUHb+QW6AGwRvJC28xvvDJaiRvRrAmfJQc0+M1YDDv2js5oCAY3Q+sEfn/htAYWm+vlOEbvpKieYJQH25B1obF10EToISyJmBpQz3BhxtkC1o5fYZ8W63uhm59WI/k+z8iQf4hb9aXNMgw7G2jx1ho+d5Ei0mzke0eDiRWl81KF5NMjI9gk2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3sRlg8lwESegT8/9OQf8kqYhZVjkQCTKlQr2CeYryB4=;
 b=DHI/DbwWudztzzcSFBBP5Zxzadcfmn9rC0kLXd0TQAuQP5Fj+QJM4hxjugmudD2uMge0A+rVNXEl3vjHkmGYLmMfHNIPoz51RzRK8SOgK/3B0IZht2dibb98eO+/5AKdPlsaRjyYmbr2my0p3Ob8YYRqA6zCbR0cRXVSLEOUcJP5FZJMpJkk8js+jy6+PW2678QMxEVm0Y57gXr9qdtGFhnxn3ed2fa5Z6rJr5PDAQZstNYjpJP0Ktn2yj66nxIz6hhAzJHDhid2wgqU762n8NtznWXV5LwrWUGqgAcwLqcDjDb0+AuPgukLKr/jdpTyhTWH1XH3SkH7a0ZBQsRguw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SJ2PR11MB8370.namprd11.prod.outlook.com (2603:10b6:a03:540::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Fri, 30 Jan
 2026 21:15:19 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9564.010; Fri, 30 Jan 2026
 21:15:18 +0000
Date: Fri, 30 Jan 2026 16:15:14 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Simon Richter <Simon.Richter@hogyros.de>, Arnd Bergmann <arnd@arndb.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] misc/mei: INTEL_MEI should depend on X86 or DRM_XE
Message-ID: <aX0fYgU4FHIbsUET@intel.com>
References: <8e2646fb71b148b3d38beb13f19b14e3634a1e1a.1769541024.git.geert+renesas@glider.be>
 <CY5PR11MB6366560330FE64F22ADF2C2EED91A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <2dd8286a-a3c7-4a3d-bd5d-011966dc07f9@app.fastmail.com>
 <CY5PR11MB636685688893B7873C3BE85AED91A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <ab91fa38-2f5c-4237-811e-854d442a71bb@hogyros.de>
 <CY5PR11MB63665464BE137AE70B0D47ADED9EA@CY5PR11MB6366.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY5PR11MB63665464BE137AE70B0D47ADED9EA@CY5PR11MB6366.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR05CA0089.namprd05.prod.outlook.com
 (2603:10b6:a03:332::34) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SJ2PR11MB8370:EE_
X-MS-Office365-Filtering-Correlation-Id: d2458a15-cefd-4afd-9148-08de6044ab9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jqlcrt2KuFvTgYm+5zv3Bkw/6Icme+5E8UD6dIVqd5yNHakZ5Svu5E2lc2rH?=
 =?us-ascii?Q?wqi/xUrd0an5CLenLtnxFO1ZXDePE3ycg4NWeVc3FB/0UJt5hQ5sYMEbNdrG?=
 =?us-ascii?Q?EOoYQC0yyZjb/B1QbwS6NYF7KUJbAAnAcEijn8M9oUQ0rlhjx50tSBy3vX63?=
 =?us-ascii?Q?ysDeUXtu93C55cRsRo2G+FxrmHEjv+k+XqGEB+stuTBQLTeaF/42KMcVtr0W?=
 =?us-ascii?Q?i/7e8Lq33EAREnaCuyRGsMn1Nie6drpGl6qhwuiqHhG8LvpqtR5WMtftb5q9?=
 =?us-ascii?Q?JWFvWafPJAR0oeSJOwrO8dwnKLQGANbu9X6G5Po3GY8ytKIhCYLn+Ic3MupV?=
 =?us-ascii?Q?9uH0gRxRbUCiWxxJ7aOLDlL5/3I+QpY+yywZhPH3nTg6p/fTKUarEJUFGn44?=
 =?us-ascii?Q?YBxaGMzfMKp0jr2Gg23+0/+WdL7S53QAmJ/K9wPycq9wAIjUJlXG5/kJkBNi?=
 =?us-ascii?Q?dd7GW+QWSfqjIyuij+mDLOIAYkOq/GrnGD7a5rskxasK9vL3W5LM2FumBoaY?=
 =?us-ascii?Q?0B4VCciNyulifJy8RXeHZ9ItouSHq5feGRRN3E1Rf7HPo1G+pdDYwiS7Xq/P?=
 =?us-ascii?Q?V7L4F13HBJkIrAJ+qH16F6CUIilWCOxWiNnj4kz6NbY1+FXw+SdgpZrBhpig?=
 =?us-ascii?Q?oury1sz5t7nIptOljhYm6fprxgERgpVmunY/2YZutjMZSw08JTfGQ4r4S5Sf?=
 =?us-ascii?Q?BjodIEqNEnvGROrdhqk53g1o+gLb/b0OQG0SgXji1wxhzbfH0qFd9YP9dg0C?=
 =?us-ascii?Q?/VYRw1MNA9+fS3Eo/NBx5yiJbUYuAQKhkYxwH/+WYK1gKWSD4Wah6DOxQjDt?=
 =?us-ascii?Q?ny03tXFrujgIrYUFuoICaE9wjBypWLx9LGCy2tmEHDrUMXS44+XNgjXA6nJt?=
 =?us-ascii?Q?/3igV8riZNyrwhRXPotNhpL7xAtXm/7qxwpzpRhEhCm6nXuqBmY1Pz21EmiH?=
 =?us-ascii?Q?XVvhYf92hMkAruVJqL7KfTQF+raUlHo/+KJWfcYoAZNwnwuRByN0vMd9jBwh?=
 =?us-ascii?Q?b2zW8UY8tWHB5A7nP2xxnjr2zq4OyYxkQnQrkuFyl0yILK1hH4w/6NpAQENw?=
 =?us-ascii?Q?qR+eYyitD3E24sLkUHHpcEX9DfVOu7m55upM+OZijVF0O/03y0OKLd6FrJSy?=
 =?us-ascii?Q?5+AnJHgUCiMZ5/vdIKGYWk7Xf7dTiAqhyAkJXY5GemTqLQSOeRh3jAH2k/X8?=
 =?us-ascii?Q?BMYYVJJkTBJcZSQunf6AaHWUOrw7J7eU4QJdBuvK8wWObN6cRsPP/cE3wZyk?=
 =?us-ascii?Q?oBgIXqBo7jQCdVHpCQkvkJgNpBgCQAMx49W3SjqIpjOkrKdB63U5Nj3NuA8Z?=
 =?us-ascii?Q?s/5wqRFIsyVOKgAfROVGhRqkpHX+6VRbQ5+S7ZEgLp5W2kiC0kzL6ElRKWaZ?=
 =?us-ascii?Q?ADq2OQEio4BFErj4Ie2szUGIG/qZSClfIpCSM0W+uhZjxEv5YmS+KPlLmysM?=
 =?us-ascii?Q?pSQ8AkfpdJN/MFjPLojDxMJ30TR7k8klQtcX+Glowv3EQPtUpslZ7Y474x3q?=
 =?us-ascii?Q?wnquurMW60P+vVgcYQh94soB2RmUVKe2Hz2NZxZ/W5kKReIrY/5sCVp8ol9C?=
 =?us-ascii?Q?BAmEvFbdyb454iI/FxU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zsb3OBe7XyjKHZ/tVd0HxZ6vlYdK+fpL0aArGgHa29InpyUizcx+6ROA5q+U?=
 =?us-ascii?Q?vhA3FjoKNTm+A6dbDqEcDa24Dhq4xE0sl2oQZdC9su3SkbsxfoCiWgvsXOn6?=
 =?us-ascii?Q?6EGZZxDqq2fPV33ImlYr+iNEWpUOg4b9TpCW8MyT+KXnG/UzgGRJ3NL6IiTb?=
 =?us-ascii?Q?f49+Z1SHghPckKuBAWsHP51gWJ1mtasDRtDZU7pnf2nH8uAFV/QFEhjzt4xW?=
 =?us-ascii?Q?/Ipprwz8fLGRrWvOmki99IKFj7CY23P311+mIrrOS6gHqgwqiDv2fxOwNqrE?=
 =?us-ascii?Q?dtpQzTTW4r/Pq6f2EGfxeoQyhf03CAZq74oVafAOJx3kzWloWft7JmvQHKWw?=
 =?us-ascii?Q?HhDuAfwqdqAApS61O5pZ3rItj9k0MU5A6yQEWFzxZkXpdFt7wS06LKrACvSE?=
 =?us-ascii?Q?Uam/uGjV8EmgoBn/RFsJIqbmlfN1H489UzYERZQnAKXlAdkhIwqbV8WTlVLn?=
 =?us-ascii?Q?xZAKaleGZA4V1FjlivAdu0hzNqFztzXvIZ0ZuI7X1jI9OBxDUg8FcmCAQho6?=
 =?us-ascii?Q?iRGWyL+sdbFVWPNhGuWRQPGwCsLW0zP5f/Iommpfw0rgjZRgAL/Ju9l+PFac?=
 =?us-ascii?Q?RUyi1Xc7fJiSWveHDg+V/XeiOCjw/ieXqvgSwIBABe72lEAe67n7oS0oi+0E?=
 =?us-ascii?Q?8IDUgo65kSWNaV0PCJ3QBpopZZVO15d2UpqXuWMbiWDXr+dmaHYInZY6kNVR?=
 =?us-ascii?Q?v1K4HoE98X/2TKuQ1KqG/y2hCQGu/Hd4qU8iJATVvOZlDciuR6017qoccp/Y?=
 =?us-ascii?Q?TcMGVwaDZ9g/QzH8h3saaNWgSuqaS9BCRfhJxJfVtvWABI+UJHRui/1nCR34?=
 =?us-ascii?Q?w2iJM4hhgjhXkLkGhOGwYHQdxGR+ZXa1XOYSFdMIXNGeiUOeD59dJy9WyrBq?=
 =?us-ascii?Q?zHyS0wtr8Fmzl2WZnVwihgg16jxMsXCxUZDXchRzwRvAG8nCBgLswXoUpLxV?=
 =?us-ascii?Q?Dz4mcGHhSV2XfOZgHJ5u1/I2OMhMdaPWRv8J8s0RZ9m0egSkB+nQFRGMqksT?=
 =?us-ascii?Q?E8kUPj/TtHO3hxtd5UPumwIoZSRN9X+HnCBMOZoJPXSaPGNIXtLFpHTvLmb5?=
 =?us-ascii?Q?1sPwha5MSKnP6+nI7gF3hEiC5QAJfcMlVr79/RMG1ZDCOHaHQfYm2NjOiWSn?=
 =?us-ascii?Q?K8Iqt2MkCJQJFRvDz4LZvHCaQCEq3XgErQQRGsplnghavYYc4Q7FhBbOrMLN?=
 =?us-ascii?Q?2As61K4GsTdqfT/soloXirdQudRzWJs/cGSv0PxWY/6JF91Sqg0Y+mzZKCav?=
 =?us-ascii?Q?THBQ/brqVfq8JuwI0m24ER8HFEvCoyF2+Lu0B5Gv2hXsbGl+fQOJY4qZyw3z?=
 =?us-ascii?Q?pSKtHYxzQNLy3LU22+AmTCMHcchCIWQO4FeeSyMDo1MBo38KbFz/tQzggs37?=
 =?us-ascii?Q?RYFI9SLijwqC1C1XSfORB2gx2lL3S1CZHHYItGEEJlbq74n8s9KsyB5Iu8yF?=
 =?us-ascii?Q?cv+MLaQ4jqLUWUvGzBVTUyGZpx01N+QQR+vAOtNeNGXJaUXCois0iZLaQfGG?=
 =?us-ascii?Q?FtYX9KGpvqAhUhAg5nS8kPP8FMwaY0fjb/cZPqcNX+TIDLb6Y9+1j8NEHmi0?=
 =?us-ascii?Q?epbxrXahGGp0JMIEKe3Joh3ugF14J666I3py2oKimmnYHc5z1226/EkP3mAl?=
 =?us-ascii?Q?GPzvKKiPFBvZUDkVoUjdGgpRRz4mgiqCEx7lKzAthbO7jsA+d5sItYIZ6eYp?=
 =?us-ascii?Q?qbcGaayUFDHQeJjKaaoRF/jSW7YI17WRIO719wOTIopnjQdZe76x4Isc/j5W?=
 =?us-ascii?Q?twEY6ZfykA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2458a15-cefd-4afd-9148-08de6044ab9e
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2026 21:15:18.8773 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p7unvNVr+QluP2dmrMAZIZEEX79zQ9Pm1AVBZb5TLXeUAAG3q+kcMHM+lNQPssrjFnD0dfeI1NGkk/KMUjRjJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8370
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,lists.freedesktop.org:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alexander.usyskin@intel.com,m:Simon.Richter@hogyros.de,m:arnd@arndb.de,m:geert+renesas@glider.be,m:gregkh@linuxfoundation.org,m:linux-kernel@vger.kernel.org,m:geert@glider.be,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E9394BEC09
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 12:53:12AM -0500, Usyskin, Alexander wrote:
> > Subject: Re: [PATCH] misc/mei: INTEL_MEI should depend on X86 or DRM_XE
> > 
> > Hi,
> > 
> > On 1/28/26 3:57 PM, Usyskin, Alexander wrote:
> > 
> > > There are different usages of mei:
> > > - for discrete graphics xe/i915 will load mei via auxiliary device also on non
> > x86.
> > > - for integrated xe/i915 communicate with mei for on-chip CSME - this
> > scenario is x86 only.
> > 
> > > IMO this should cover all:
> > > depends on X86 || DRM_XE!=n || DRM_I915!=n || COMPILE_TEST
> > 
> > Is there discrete i915?
> > 
> 
> DG1, Alchemist and some server cards are supported by i915
> 
> > DRM_I915 depends on PCI && X86 (so "X86 || DRM_I915" is redundant,
> > which
> > is why I didn't add it in my version of the patch. If DRM_I915 is useful
> > on non-x86 we might want to change that as well.
> > 
> 
> Let ask gfx people.

Cc: intel-gfx@lists.freedesktop.org

> Rodrigo, is DRM_I915 useful on non-x86?

No, I really don't believe it would work out.

> 
> > Also, is there any policy on dependency ordering? On non-X86, INTEL_MEI
> > becomes available only after selecting DRM_XE, which is in a directory
> > included much later, so the question is not shown initially, is that a
> > problem?
> > 
> 
> By not enabling INTEL_MEI the biggest thing that you loose are the firmware update.
> I'm not sure how to sort this out and if it is worth the effort.
> 
> - - 
> Thanks,
> Sasha
> 
> 
