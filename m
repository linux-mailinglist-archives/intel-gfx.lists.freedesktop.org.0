Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE33803B3E
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 18:18:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FCF710E011;
	Mon,  4 Dec 2023 17:17:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A49410E011
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701710255; x=1733246255;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UWF5axFnwE+P7xSg7w0IjTl0PoVjrPe4qtIRkVoFB50=;
 b=cIDenXpYrwbEmmP1N8ipuAdZAGzqoFtUlYDRjPIyiMtoXqjIMkHac6IG
 PJofzmcvgKmfBSDyo0TuwldCDVKpfATHABMX3IrCD5kuTrgYWzfi+EAXd
 en2mypJNH52bD8130I2y4HWtjlSqw/7hwPnfNlP2JgtCEJ3HCLB1q1DuQ
 oo5efFUqUKdJ5lF3H92tvo0GsUqIHT8LJulj6mJ9Z56L8M0SNLj9v0Yz3
 LMO2PnkZoZ9CeYA5vg3zLCisAKGqVAtLbRdX3oVGHwXf113KtEnS7H6UX
 IHhaCBgKuk9RpJsy9nCf/AvmpGFTEjJc6I7+hQ8uCqS1EZ4tmY8HOtkQh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="809777"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; 
   d="scan'208";a="809777"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 09:17:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="1102166344"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="1102166344"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 09:17:32 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 09:17:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Dec 2023 09:17:30 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 09:17:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EfiTpQzaryfBwgUSNEu8RvI+qx8RC0qwRTfd4LlpzL58PJIy0qUXnkfyawWgO1WiDF9d9b7UfMFDd9nBWZ2pYCCDPWYPZwE1vMvtIGX+jwr5xla1+CYi2iN+pthatxH5pWmjIcWvVYANrZeYjOBYWNKx1J8EyS1MTlruP+JxunDJHiMecPa5rME3CriQoKyjkFiFqiWEkxi5puFJqCkxfrQxUi1ejnxWyXHTkAPElTHnvHoW3Hr1p0eDlCK78xuIJI1Fqj1/rBj+tUMVEcf9Zbxi5Jmh7+zMxoV5tuNVI4jtn6RLWlo2FzjT9Yjs7kRUkCKlA+q2dCMFHrO+GzGmfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iThzbzgZ7LBG+A0U8mDcN5MzcKsdwg9xZAEzwBmyYxw=;
 b=lpxYjyQ1YoMrjTgokfmThspkFvNtgLGCmwlGQquE0VQmYE0fba6ClJ+Yu4tDWEwmubrlIRo5I6X4mZBSTAa3L2TQmI/M8Y4aUL7RDAOq2qJHn+q8bYIJBRIrHxYldqD9rRaWBhJssqcZm7/RmxJR5gt/zZDsfR0cEojHoLurF1Hn8MXYD2f457mVrGYHnulUVdsykUOJbJdU1/EiHjxHXMwyEoCoRG0VFNJtmCsEIN1kPgVSpsBMQO7di2fxbVj9qeRqzkUNlotJuSpmRMOnIWLoUXHXUk+GCKUDmShZys8973GlMfqwIcp9kBybyiKu5oFiAthM8kWtpaPQP0yYHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by BN9PR11MB5548.namprd11.prod.outlook.com (2603:10b6:408:105::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 17:17:25 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::b5bf:a968:5f25:945]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::b5bf:a968:5f25:945%6]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 17:17:25 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Berg, Johannes" <johannes.berg@intel.com>
Thread-Topic: Regression on linux-next (next-20231130)
Thread-Index: AQHaJtXA9DQre41uVkaEi0pZ7cXRUw==
Date: Mon, 4 Dec 2023 17:17:25 +0000
Message-ID: <SJ1PR11MB6129B0FAD6E18FD3FA56C981B986A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129508509896AD7D0E03114B9AFA@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129508509896AD7D0E03114B9AFA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|BN9PR11MB5548:EE_
x-ms-office365-filtering-correlation-id: e745d56c-f6a3-4131-69ab-08dbf4ece2cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PA+HOOJ6zz7I+lFzFeAs0jGT+0WxJK+AQihIFaJEeX4l092zjbcbAdb780rl30V1esF/HMB36vRczSS8BvtDOfCk/lgJnXw92y5M6qK0qjBMFEkYvGpx0qmAlNwIlppiQ9Rmsg+4bo0ROMxGKgReKF1b8ZJie8mzvKy8Av2crzuJtP9HKev48rXadyvR4Kz4HhtUF5YaMP6iIRhDrFAt7Kc1IYT6MDHpL61IwO4wtqHzVl5ip3EFu7IykdXnpmi+uiGZMXQ4l1wKUL+6fSUqqxlr+6RCwVF5f8oQS05I68OaUhCjY9ol8qVpOsprK2atXV7e5nlfzT1LVdipZbkJm6Tba55Ga2FmR2T+nI9hmLkvgQHXUR11D075lu6E8xqGkhgeYmILqRSEawA46mr0hnp42mh/QHt+p4xccFuPBpeA64tt0/RhElv9j2a1n49ZkO319RIBcWwg3KzaEZiYy7wZQMmfDZ52eec6kGPZYI/mv3NZfttJTCMFc/TqI0kp6BORqYvaZ6i6qktg0Psuk+yDLrDX08N3uuW3W8/e3LaJwIM/ywNjIjGQEr462d0nnrOxiiZ2vxopPViq4UOTKdzjbu29HljRb8b3FewrRTitIYCKzj7Vfl9/xk6/OkmGxVKon+uvmLMWOMwwhdiHlx/yY7C8f7FGr/uB3gBrUriT9/X3ZcSlJJylvEti9pjf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(346002)(376002)(396003)(230273577357003)(230173577357003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(6636002)(54906003)(66556008)(64756008)(66476007)(66446008)(66946007)(76116006)(4326008)(6862004)(8676002)(8936002)(316002)(478600001)(966005)(71200400001)(38070700009)(41300700001)(33656002)(2906002)(5660300002)(86362001)(52536014)(82960400001)(83380400001)(107886003)(26005)(122000001)(38100700002)(55016003)(6506007)(9686003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OzdSvDC1LC63IhyupYHkPNDByHor+Q1w4pyr6yP3h5q7IshEilDeHkYsRlph?=
 =?us-ascii?Q?nm0aNbm/NTmiqdilsxyGWzlHgN8izukkeivsFLJpgYCyVHPsxa2R/H3Qld6c?=
 =?us-ascii?Q?RdmGstU6y8fwkdW8IcG7BcO+9AGNysTy2mIMB/6pRTVv5U2jGhRwWuomEbpY?=
 =?us-ascii?Q?A7f7bOvbuPzQHqdM5qc4U/L+wV64/D4wJkRbaxG1Y9ZeJB2+1Qld8cbyYzJn?=
 =?us-ascii?Q?AibfRzLVBrBGB926biXDZyPOodLxtZCO8KJC87STvkf7G+xPzP9035aa07QQ?=
 =?us-ascii?Q?x8A2k6JFTsKvdA2FaBaDS4CiCboI7tcIg49i2RJkqDPEuUpaa02GTyUjAt3j?=
 =?us-ascii?Q?bS9j0fyNCJdUGrT1jyrhUyWwBrpN95Ics9BDeltzX8y9Tgdw0QAImkqwB1Jg?=
 =?us-ascii?Q?rV5w9Fh8McDvZqQdQKEk45lukuAMHCKez5pH1wq08KLkCiOe9P0jNOvngTH/?=
 =?us-ascii?Q?zkihtXY3Nx7/pqTsspoeI8jNmICI7D1dE8ulZ0sLQNg7xCArIgtrr2CwUWgX?=
 =?us-ascii?Q?ekargp8e/f5gLjOUL+OzPjEH9y+6OmK2YzZyc/xfDlXSQgICCkQ9q0fo+r4c?=
 =?us-ascii?Q?uWa4cyXKCqy0j48QRuKGgmgPkO33tGtSTNt15BNoI8I5yNalBpbtLEfjQChw?=
 =?us-ascii?Q?/b7Z1c7N7c5Wcrw6VD4pwFH9FJclUdnBcLGtKWm3mpLRJAcQtSZEcjqZYg65?=
 =?us-ascii?Q?9xKs1R2ABZXPyv0nweMqgcLJBUxEwp68e4Qqf7TrFqmkbZ9aju5SUheRItIY?=
 =?us-ascii?Q?JXK9NoVI1LpEncYk0tSwUH43KazL5bQC/ies12d4o9I++6YNtJAhH+SKa4Ag?=
 =?us-ascii?Q?OTHsCHcKtjeSAtB/IEDyvWfl2/E587bHE6A5PX0VPoyMEUSewABPcEQZC/87?=
 =?us-ascii?Q?dziSS3Wa/lJIfKTYSQl1LMOWW+YA1rC7wXPFEG2/ogEDVQxZd+pFDLX5ihGI?=
 =?us-ascii?Q?0Xaz9C5/3Ho76Q49pzFn9Vvx60GNxdRBXm1QPLbn48FX3k1npinwyI2TaMzb?=
 =?us-ascii?Q?9g4lrjBEXApoe7ofxHa+28/gyUjqtexnP/ltcpirEULGnRfJkxRkBZ3KNqV/?=
 =?us-ascii?Q?UUvyGwxXD+9yflO3J64LBl0kz4uq4J3fsgpvxapUhNOa+ibMweWokSFJtE43?=
 =?us-ascii?Q?HpMGXoyFzEXBP4TvkEa+mjAA/Tq4o1Gm0mGT44rTdT6Au9RmuX4WuA5EZ0Qx?=
 =?us-ascii?Q?4IPeuefKLu/w05tU3zUV1PEULTcxTY7FFWBnddV8No/JxqBf76zLZmpK0VY1?=
 =?us-ascii?Q?ZlIdqtvoeCKTtN9WiAuXdqdfhfWUVqe5DZsYq1unZvsO5e5iPhfU91aTt8zm?=
 =?us-ascii?Q?GgGxwTTQkfpriaL4zumNTrH0jQAbwV+pdxqzZVXRRdbASaDNq564LrqzV+hp?=
 =?us-ascii?Q?m13Pvge8jD8+DNCvJ8gV5lX+Cv/8MA6+D9Tiikr8tUYtMpNwfrUcp2mOyVxO?=
 =?us-ascii?Q?UfIrmADXOKk/9krYnRjTAy8CW+Uus/EqPDpL+Ox6gAemESTcNKtw9H7pZAZZ?=
 =?us-ascii?Q?+OipwlIUTGoD1KRMFyhaIn59suduvcQScWUoqX2zQSUVfvQPWU5vp2dHYe4P?=
 =?us-ascii?Q?DlrbBTqnfJ2Gg2zItJF1ALosSkyZ7VpmKG7d7ggyWkUyPItpVgMVXpaXe1bi?=
 =?us-ascii?Q?5g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e745d56c-f6a3-4131-69ab-08dbf4ece2cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 17:17:25.5834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZmnPeEQlsN5ZLjycnYR7MHwVIKeN5wVbH79B0bwitG8I7bFVcjriJKburdwTxl+5af5dflB/XVwmzFvmSjVGGvhudjSTCwY2Fg2HBbGmRas=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5548
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] Regression on linux-next (next-20231130)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Johannes,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20231130 [2], we are seeing the following regression

 ``````````````````````````````````````````````````````````````````````````=
```````
<4> [198.663557] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<4> [198.663559] WARNING: possible circular locking dependency detected
<4> [198.663562] 6.7.0-rc4-next-20231204-next-20231204-g629a3b49f3f9+ #1 No=
t tainted
<4> [198.663566] ------------------------------------------------------
<4> [198.663568] core_hotunplug/5433 is trying to acquire lock:
<4> [198.663571] ffff8881481b5068 (debugfs:i915_lpsp_capability#7){++++}-{0=
:0}, at: remove_one+0x56/0x160
<4> [198.663580]=20
but task is already holding lock:
<4> [198.663583] ffff88810ef2e9d0 (&sb->s_type->i_mutex_key#2){++++}-{3:3},=
 at: simple_recursive_removal+0x1a1/0x2e0
<4> [198.663591]=20
which lock already depends on the new lock.
<4> [198.663594]=20
the existing dependency chain (in reverse order) is:
 ``````````````````````````````````````````````````````````````````````````=
```````
Details log can be found in [3].

Locally we have seen a slightly different version of the issue

[  663.199573] core_hotunplug/1735 is trying to acquire lock:
[  663.199574] ffff888133406e68 (debugfs:i915_pipe){++++}-{0:0}, at: remove=
_one+0x56/0x160
=20
After bisecting the tree, the following patch [4] seems to be the first "ba=
d"
commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit f4acfcd4deb158b96595250cc332901b282d15b0
Author: Johannes Berg johannes.berg@intel.com
Date:   Fri Nov 24 17:25:25 2023 +0100

    debugfs: annotate debugfs handlers vs. removal with lockdep

    When you take a lock in a debugfs handler but also try
    to remove the debugfs file under that lock, things can
    deadlock since the removal has to wait for all users
    to finish.

    Add lockdep annotations in debugfs_file_get()/_put()
    to catch such issues.

    Acked-by: Greg Kroah-Hartman gregkh@linuxfoundation.org
    Signed-off-by: Johannes Berg johannes.berg@intel.com

fs/debugfs/file.c     | 10 ++++++++++
fs/debugfs/inode.c    | 12 ++++++++++++
fs/debugfs/internal.h |  6 ++++++
3 files changed, 28 insertions(+)
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide a f=
ix
if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20231130
[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20231204/bat-dg2-9/igt=
@core_hotunplug@unbind-rebind.html
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20231130&id=3Df4acfcd4deb158b96595250cc332901b282d15b0
