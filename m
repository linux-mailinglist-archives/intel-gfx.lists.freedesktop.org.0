Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6J/GLuXghWn+HgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:39:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A42DFDA7F
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:39:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7681610E18A;
	Fri,  6 Feb 2026 12:38:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tuj7X1ZP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41C0D10E138;
 Fri,  6 Feb 2026 12:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770381538; x=1801917538;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oU1c5KIoiNqrfWRNCaUw5neqirK044rNrnx6eNjpUrg=;
 b=Tuj7X1ZPMvh/d/94LOcj/+7aWqrak0XMiuN1tlVs66W5cx2h11ndaz+y
 4qOY2J7c/8AECQvyHzCYN7zpa8Jegn7CQFYqVONhlhHD4vPn6BD/xoAHS
 kBH8FrNfd2fdAwwyGSguiO0q56rT0EAaqwxSql4Dr4eR1toeYnXYMknoV
 oqEce5b2ksoboc4+BEyncMW5OY8LD4N90gohW5LXMl7GS1O6lqhu0K4ww
 SGadwNJca0i5UPy+eBzDer+bg+AGh6yj9nI2ULr25wZoWGkD75L3WS6pK
 eh1Uz5xz3N37nXLOhyH+lERUvnRCwUohbawA1oVLoSEhjNF5ck0DeGutb g==;
X-CSE-ConnectionGUID: YBwMJYxST3iq7kfPbkJKLw==
X-CSE-MsgGUID: 47lrIJuCTiG7Qo65iPi08Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="89166928"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="89166928"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:38:58 -0800
X-CSE-ConnectionGUID: aVM9kGh9TAWf1CIsbtzFZw==
X-CSE-MsgGUID: bbtJEIX/QjulVcJviwcGkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210745327"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:38:58 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 04:38:57 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 04:38:57 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.37) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 04:38:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qHAAQvcix9QYY2cyYABFCDmFHPu1ihUUYI2XSUgEupXpOIjoBECh7kM6A7TSerPDA87Tv/5wUU9n8A9FPOaX5prhKi5++NuaJNMjH8LeLnbUob0dSktDA37RsABc+reinYKV6/2YvgiGlkzLt4hRY45LASNQfMhOIsVAPyjtQfeNkpQSVt3LGohaQNjsXo4Hl+4+3FBcVwyikIVcvUpAy3sSN/tSpTD0/3wShoWLI3R+kWPv94M6e2/5X4yNDO+o1lzZpHRbtKuEwqjoRp2KQ2p2PAjsd1QNeFax1GiJU3c9NIiz0dhcDUo1fE5Ri9nF17ma8sPZrpFgfNgR2k5GOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MyU+4NvfmB3z6O5TJU2L7aCbI2waOrdwQXVaDzkmbks=;
 b=FQhN/SC8qupGWyjwIN+SB1jINIMyLAS5Hfcz5ec/zvrAHimF3XD8e2Gp7KFW7Ypxd/6sbbwaWi4TrPvvlsA86H9hrodgjvXvYB6zZZz4hBZC+Rgqo+EVNeD98Oscu+m0L3GYSpFxTUToAwq9PRFF1XbrFmIdoiyeTpNk5jIgI0JSoN20I4t1XlWuwJrqXpg19pPWoYddEL4udgIgiq58XU0Geih61uHNjfEkJycmTrRq/gB68Un6TBzTY8wP4FOa12ORoLSnmBiFUYNJk0yzxCJks7T/pfwY46ynggjpQKJ3KjEzmuJ3l2PacYem/Ds1F5gGfjdozfuDTPPSvWb+Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB8035.namprd11.prod.outlook.com (2603:10b6:510:245::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Fri, 6 Feb
 2026 12:38:55 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 12:38:55 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: Re: [PATCH 05/16] drm/xe/xe3p_lpg: Add MCR steering
In-Reply-To: <d1f5572f-9f66-4b12-b18a-c0b6c2c62ded@intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-5-653e4ff105dc@intel.com>
 <IA1PR11MB6266F2346F428242E7F37C50E29BA@IA1PR11MB6266.namprd11.prod.outlook.com>
 <87ikcd73g4.fsf@intel.com>
 <d1f5572f-9f66-4b12-b18a-c0b6c2c62ded@intel.com>
Date: Fri, 6 Feb 2026 09:38:50 -0300
Message-ID: <874inu59np.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0146.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB8035:EE_
X-MS-Office365-Filtering-Correlation-Id: c9efcf72-449f-400e-a196-08de657cb101
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1E6ji9FpSbuTqO8dDUChGKAfiWL8vAabUG1zoDeMihsgXhU5aaUt+jn5MHvE?=
 =?us-ascii?Q?nj4ULShwZ1ZkP5QM9nPS48Cebrn+O+CII4SxE6wXB3+sC4V2mgJTR/wzdMRq?=
 =?us-ascii?Q?GRf2raf53nF8AXxRdlileoQhKQsStDdP/WSsyiDkWtlp7wdJFyrybeG5y/KH?=
 =?us-ascii?Q?KMJIMzDb+zhadAwqmSkj4gfSVHzyLu2VNm0it9lj3iOBFS2jprJ7gxpXUJ2O?=
 =?us-ascii?Q?2K5lOvK6snLVjHwjjEDT7TFRNz9EFAD1EpMtsTN0DyaVtYyx7kkPGUlviD9K?=
 =?us-ascii?Q?k1wPZh8d6A31FJLup/Tv4ptbVH3SDq1eFx/nbI3UJ6eRFIU599xUjW+opcUk?=
 =?us-ascii?Q?b1VHNzWPTY7BNsmP6HgeShNL6aLyiAqhd9We2psqIpdwiuSt92PNdWtupoxJ?=
 =?us-ascii?Q?AdjIsXC+TgvhESyAtjaaLyVr0Cgg/nEwnaJJbb6eBVih970AdO6CE3kmgi48?=
 =?us-ascii?Q?xXJvgDEWAoGntiKTA+HRetWuDZ21+u9QlFsUpgP3YE/OW21R2Jxe15SurzGU?=
 =?us-ascii?Q?dP7cLcKjRARi1d4/N9uynQ3d2Iz9gffGcXYxCu/ozX63/XWwcL9B9ClrAPFa?=
 =?us-ascii?Q?P8zu62BYUd1PAYQU2CYXlw+51aT2dj8EDEeYe3G/JLJlaGrurAFXpyAvcAvM?=
 =?us-ascii?Q?zbh/7v3zuPlSU3Wi1+ImQQCTDtNcpChn0IYqn2ivZvzErxRAx0549XQZ9G7D?=
 =?us-ascii?Q?enDlsWgmiDP3HfFqqVQD7Hsod6oWuoFupNwsLZoiMIY5K8J8fOEc6tDTQdxD?=
 =?us-ascii?Q?fBw8ZHs/5+uIc+JbH1TOyNWt4TgwiT8YkjDe1qSXdBQe24OZR71vaeJhipmC?=
 =?us-ascii?Q?tNmb1ugjeVxHEvbGNtMP5o6+7dvYG+qu9vV9MobvaDspEsmgKGcQKiZybKdO?=
 =?us-ascii?Q?bV+5C77qIWf6hFKA1as9gCu+leAXX/SOqdiOUDYhgr3wV2rVG4lsFHxVDeCj?=
 =?us-ascii?Q?CntFY+WaUgKeSkOLQ6SaZyqBqDWvLonMJgPAfYb0JfnG8A9RgUlOvfoSrhDx?=
 =?us-ascii?Q?p+7u8azlhGerAXWkyQq7NiO4Sl3DgAbJQCPy8tNupAWPxlRD+Mzzfa58miGK?=
 =?us-ascii?Q?lrOjxFPM1vVwvLvbFwOd/Rtp13HN0lfga6D+MZ6aFW4nsT4RZgEkW4+WpzKc?=
 =?us-ascii?Q?dIzsEIbqSFQZefu8EVFh8LJrTP/kn9a+zAu8WlEPSq5wezbFz1TA/rlVp8TE?=
 =?us-ascii?Q?QhV/sxnAaTXIMMFhq+S6jcfwRfTkBLSgBR+3iVQOuazWevd1h3ROba59odg6?=
 =?us-ascii?Q?SXPEwOjSBkJm9XYMulAVKPREC2b1FEPlyKtyAURAql9o3KaPAtHlIFRmNCep?=
 =?us-ascii?Q?xZvkRNk/jfahqQZ0M1cdYsiP6JDo6M+FxW9cIbXh0pXAAusEtWaXrcESsPU9?=
 =?us-ascii?Q?FuvuGuy2KI7Uk6t69FjVDXFtP8jHyMQvKGj6RlmJRZYc4I/ARWy5o2cy0UM/?=
 =?us-ascii?Q?7jW24tZWGUT9xWnfwmFLtsJHi4gwLGdfQyekDUyWk1/vuVjDHTJ+xb4IQ85j?=
 =?us-ascii?Q?pxfHv6Nv1z0huWmc/HkW0zKmVY3kYz2RFtmkTCBC2fgqAf1+exjJOrRQcYIq?=
 =?us-ascii?Q?WYQI0r6z2na7y99z9yY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TtXEBYd0rLceiwTeP/lIgByhkqgS0JNev6DhcK1rYwZY69Ifltzh9aUkBTK6?=
 =?us-ascii?Q?zrLnfj12TkzUYZVH6GR0OD8PKTz6tyFxE2u+/g8pkCPYJKfaxEVe1sBCwNPx?=
 =?us-ascii?Q?pcFLzdiGNp7lY3wyjTy2DRsy8RVi2Ge33gJJOnFPyDMMfzXyGS9q2W3l+O7D?=
 =?us-ascii?Q?/cMN1E5cwb4rP1eiMlRz/4EMU1KTBLctMBTpPFxOhIMm5dRo7m8D2bi13unP?=
 =?us-ascii?Q?U+II2WuErX15KvdSygvnMhBCsAVqc7bUFYbWMSZ9l4AqchdXdxg4QqLT+vNP?=
 =?us-ascii?Q?NgZEhSnfHt2/QOlgmxGi5vMJFZbygYUyreLS/VHKzrg7pNfBFiqJnpbujr7G?=
 =?us-ascii?Q?XbuIla4HqVZvvkpNKl9PJ2p5WShpHWx2OKfWjhZmdd6wNXX5vt7l3IiIIhgH?=
 =?us-ascii?Q?JLmrduZzVwcLgHWn7/Ttpb3lQ601IKEzfQtNsO33i8ITzPKf/IIM7hNwu4n4?=
 =?us-ascii?Q?ydmTd0MINn4++8Lh+XVob60yCheM/SzHtFiyi8XVgQmet0svQDw9D6+yTHLK?=
 =?us-ascii?Q?OD+XWcHvhsebuHnYLp2/elSnPmpB6BQ9Ysi+kMQ3jG99c1UdLu1QXOBONoiL?=
 =?us-ascii?Q?ewRkP/ZT98H98FQWIgjT50+QLb+LYfsxCE+xq48563I0yl6/dNfidNJE4Zve?=
 =?us-ascii?Q?CVpMg0lbc05/jrpo6rPFUPee3MwEr3WYKIsIT5ALuvfbI8tqqNx0RAnxB/eR?=
 =?us-ascii?Q?3zWty2WnXKs4pZvoTJd8tqDF937FGNLGZqjSVYaRyfbYtZglyrsUzIh6kWTp?=
 =?us-ascii?Q?GQW7vNN+QA61ZBKbC1I6vN1BSK449KbMUtv8h5nvGY2Os/+smlNjyuc8Vn1Z?=
 =?us-ascii?Q?aUM9JyZ9OA7wi+8oqKsbo1tZA7Hw9l0bSOGkD8SKZjGI4iq3ROa5Jajx7pe+?=
 =?us-ascii?Q?s1fi9+lFoS3Y1IQdJmlYMaRCMrjhb6mDX5dHb78siTDQgSsHZm8LXNlJaHO4?=
 =?us-ascii?Q?bh5wg24PbMwvJl8U3LZFcgpprCzFAbq64eh2EDfbdtWkjLC05Xsg/7YsvAeP?=
 =?us-ascii?Q?4jutyB9nJ0XooOEvFLHvJR0FcMR9peMXOxfIG0Skj3jyoCte8KmGEovExT5K?=
 =?us-ascii?Q?nkTrLGvtNM36u2KlTOonRh9XmVza5bjPsKdvJWaygJ+o4kWDJS4sNi0J05wh?=
 =?us-ascii?Q?8bFOqEBn5XI5MCXGtt8E+LwtT1gzUk4qT2qdUqQBLGSq3MjsPuigDwulLzO5?=
 =?us-ascii?Q?mFo++1SbjeDI/fKQpmnWJbT0WHyPhqcJHte4a2PI4t/2v6Jpd2opnqDUawnI?=
 =?us-ascii?Q?+yV5RWcYSRoa2zKpGgRThB4e7kjThmN6/7QEGUVOKQfA3tMULVr2YcGHFClp?=
 =?us-ascii?Q?zZ0jw6W6cqKKLQ7rCaU97FXrhLuaMBPDPXBSLsMIWELtMd08j6vWfMAJWmM8?=
 =?us-ascii?Q?1EasWu3AiJuOWwxX4GkXn17n9hHtFY1vKlXVCrWbnjBx9bz5bhY8Mo1pFk5X?=
 =?us-ascii?Q?xMljNiDHcK3BAjXo7mnl23w/lfWTRhry/zMA49wYfz4yw+txB3KlzBbAKTEH?=
 =?us-ascii?Q?7tV03TWvplapPFP7QNdR8fyTFE7lghFa1FXQGNYccG0qPtXNyrndJAHRWqqh?=
 =?us-ascii?Q?/ULdhhsd3e6m0wYIcvz1adNvQHyRuQ+8HHw4XP0yW4zXSvjD25BXiuW7DWra?=
 =?us-ascii?Q?WJlSKmHNSBD+58VIOEBP4DzqbCQPhcWc+H0yL4xQUn3qR/82gXjW1ElHqXS7?=
 =?us-ascii?Q?7pPAYLCXHJTtoeELOnlyAG6kS+aewnD65yAdbKt/1pEtXY7Bd7TM9nl5goh/?=
 =?us-ascii?Q?ggWSnefTeg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9efcf72-449f-400e-a196-08de657cb101
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 12:38:55.5474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NGncj/9YSqMWHLlRFC5lhpOkTI7bDKV9nGPzjIYDq1FS5yDanPD5GybzZOAkmImow3NZaz6ZjW9H8/k1Fzh9Cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8035
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1A42DFDA7F
X-Rspamd-Action: no action

"Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com> writes:

> On 04-Feb-26 6:03 AM, Gustavo Sousa wrote:
>> "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com> writes:
>> 
>>>> -----Original Message-----
>>>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Gustavo
>>>> Sousa
>>>> Sent: Tuesday, February 3, 2026 3:13 AM
>>>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>>>> Cc: Sousa, Gustavo <gustavo.sousa@intel.com>; Roper, Matthew D
>>>> <matthew.d.roper@intel.com>
>>>> Subject: [PATCH 05/16] drm/xe/xe3p_lpg: Add MCR steering
>>>>
>>>> From: Matt Roper <matthew.d.roper@intel.com>
>>>>
>>>> Xe3p_LPG has nearly identical steering to Xe2 and Xe3.  The only DSS/XeCore
>>>> change from those IPs is an additional range from 0xDE00-0xDE7F that was
>>>> previously reserved, so we can simply grow one of the existing ranges in the Xe2
>>>> table to include it.  Similarly, the "instance0" table is also almost identical, but
>>>> gains one additional PSMI range and requires a separate table.
>>>>
>>>> Bspec: 75242
>>>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/xe/xe_gt_mcr.c | 18 +++++++++++++++++-
>>>>   1 file changed, 17 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/xe/xe_gt_mcr.c b/drivers/gpu/drm/xe/xe_gt_mcr.c
>>>> index 7c1fe9ac120d..b112e551fc79 100644
>>>> --- a/drivers/gpu/drm/xe/xe_gt_mcr.c
>>>> +++ b/drivers/gpu/drm/xe/xe_gt_mcr.c
>>>> @@ -201,7 +201,7 @@ static const struct xe_mmio_range
>>>> xe2lpg_dss_steering_table[] = {
>>>>   	{ 0x009680, 0x0096FF },         /* DSS */
>>>>   	{ 0x00D800, 0x00D87F },         /* SLICE */
>>>>   	{ 0x00DC00, 0x00DCFF },         /* SLICE */
>>>> -	{ 0x00DE80, 0x00E8FF },         /* DSS (0xE000-0xE0FF reserved) */
>>>> +	{ 0x00DE00, 0x00E8FF },         /* DSS (0xE000-0xE0FF reserved) */
>>>>   	{ 0x00E980, 0x00E9FF },         /* SLICE */
>>>>   	{ 0x013000, 0x0133FF },         /* DSS (0x13000-0x131FF), SLICE (0x13200-
>>>> 0x133FF) */
>>>>   	{},
>>>> @@ -280,6 +280,19 @@ static const struct xe_mmio_range
>>>> xe3p_xpc_instance0_steering_table[] = {
>>>>   	{},
>>>>   };
>>>>
>>>> +static const struct xe_mmio_range xe3p_lpg_instance0_steering_table[] = {
>>>> +	{ 0x004000, 0x004AFF },         /* GAM, rsvd, GAMWKR */
>>>> +	{ 0x008700, 0x00887F },         /* NODE */
>>>> +	{ 0x00B000, 0x00B3FF },         /* NODE, L3BANK */
>>>> +	{ 0x00B500, 0x00B6FF },		/* PSMI */
>>> Hi,
>>> Could we extend the range till 0x00BEFF ?
>>>> +	{ 0x00C800, 0x00CFFF },         /* GAM */
>>>> +	{ 0x00D880, 0x00D8FF },         /* NODE */
>>>> +	{ 0x00DD00, 0x00DDFF },         /* MEMPIPE */
>>> Same as we did here extend till reserved.
>> 
>> We usually only include a reserved range if the range is preceeded and
>> followed by MCR ranges of the same steering group.
> Yes, But there's a bit of confusion here. We are extending 0x00DDFF for 
> MEMPIPE, but we are not extending the PSMI group to 0x00BEFF?

I took a look at Bspec history and the range has been split into ranges
[0x00DD00:0x00DD7F] and [0x00DD80:0x00DDFF], with the later being tagged
as reserved.

I believe, by the time we wrote this patch, the range was still
[0x00DD00:0x00DDFF].

Good catch! I'll update this.

Thanks!

--
Gustavo Sousa

>
> BR,
> Dnyaneshwar
>> 
>> This doesn't seem to be the case here.
>
>
>> 
>> --
>> Gustavo Sousa
