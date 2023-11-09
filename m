Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4492F7E6FC7
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 18:01:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4907B10E8E0;
	Thu,  9 Nov 2023 17:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1896C10E930
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 17:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699549259; x=1731085259;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Rn3nIZr7P9JJsq1wuJTFnYF+KAw7BQmhewCaormChgE=;
 b=HmYcQbyMuOUeFDwkas6IoBtQp8yWFb01lGqBdm7jzJqh+36g0ddRHAFI
 kqKH/tQJl8+spfqFGSgAJWVGxTnK7Z3FoBE6Yofk5k313I5F/aaFkf9wI
 tToXtmGRIDLiiD1tjwvfHKc3MxLb6Pj3me3e0qdd5dPH/YtQ0BqJLoTz5
 b7djkAVzlbSTIYHaNveD2hkLLCEiGUAtPxJ4YDikfrqoor3cpGArlVHbd
 iFVbN4sWdTlgIbdaruAO1FqoxXxBA22YzMOC41mdCM2AYkVDmJFs5FeT6
 3D9G48ifn78T4UCCnRn1vMJSsxnkTqPRjKDXj+k89RVTqgQM4r7n3W3NR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="370231446"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="370231446"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 09:00:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; 
   d="scan'208";a="4774337"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 09:00:15 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 09:00:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 09:00:14 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 09:00:14 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 09:00:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QwYtx9A149J2IYc7Ajg/b5jx/bYLqodcTZwRZ0ko/K+lVK+hAkYkCLM7Tp+XMXIPmcrc4EiYPdHcfp+uCyC2GSHVoXVur6uKhQic0AFl6UR5mF2fRwZilTA1DmUpBkZ/a7m0KYpzvyHVFcLq8XRoqmywhYKVvHTPgF261Z9NqUO5qUbQyzVvJLjsKEU5BQqkkVVgOwbqNEq4S3mHWOXEURCzXelma9ukgpyskxd8TEEGm+u/5oj6iueoeS03Y/UdttoYLUw9OJ8SUzBnve7CAHqIBHJMg4yhOr89laj/Hht7x+uFHZEgyu7Zk3j2Zk02lwrBbh0mutIqatLCLe1wvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0KE1oqy3pWg5knN/n81FSOtTgFbhYkZZb7LYTxrVBfI=;
 b=B2piXmHsTiifNvwB9yH9cIbhjLs5fUMq1PTGbOmkEAFcQwvAVZ4b6GjY4Xyz4Xotn0SbwyVq1Uwf0Q6qd1yHau01JGczDtlYLaUCfG0N3bTmXmIlT+N0fX2IW9p8M4/hjtDnPp9cpBc6dQBkSGt8rzee//bpoem/W5ISvh/CU7Ahk3S6LC3LzxC9w+4ixLg0Tl4tRCztpEnoLTsrR9KWR6Io+RFk6OGKpUewmZc+Afsdzjmy4OAjhQLkvzZqT16CHGtVVw7B64JAKZdphRfXZv1A4fzQOlSj1pY4bePBgBrKOZzELJgR1Ws7oGI2L/yMXIlMCIJAekaH5/kXut330g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB6942.namprd11.prod.outlook.com (2603:10b6:806:2bf::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.27; Thu, 9 Nov
 2023 17:00:10 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92%7]) with mapi id 15.20.6954.027; Thu, 9 Nov 2023
 17:00:09 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "kjlx@templeofstupid.com" <kjlx@templeofstupid.com>
Thread-Topic: Regression on linux-next (next-20231107)
Thread-Index: AQHaEy4yYl7vLy+WwEGiqew6ES3+AQ==
Date: Thu, 9 Nov 2023 17:00:09 +0000
Message-ID: <SJ1PR11MB6129508509896AD7D0E03114B9AFA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB6942:EE_
x-ms-office365-filtering-correlation-id: 390183c5-905d-4aaa-7278-08dbe14554e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HXXHqNT5PAhv2ijpvUgtgTB77sEsis1Qc4vKxYxMkyqNyDeoZE0RrTtFqsauXNHCC2vuRKrGzCGV7osTuD/arY0qf7XNs7reqdPUzZml9NYwNOmeX2FrtcdZ6UGuKG6Cm8iHpeVzKFIqL4OExflOD16BOcCCeDwqUVQNy2SpYffkDB8hDcB1p8mv9p2x2uZBseejeItqq8wLUF9nFTZvEGKqYWvhYmtRqjlvhP1v0Y1WC2NuyO5TeGJF2270v3pNZ8BG/7AU/WVpyKY6qOw5U59oRSVloHRZ8qB684vk3DGc0C7VCzrrAth26UHLdk243bPSpBW5ZZMASBloqy8xa6+KiG9q13Rjqr1isEpKTQOwgQlAQz/Lba1sofCqOEB5Qj9r+NgmMAC6RgaXb/je+KkrjWAsDvrXRHXG66wDdu5CGnd5CoLYZIqMFDbpE1zAZf0eEMbzqd4dSGFpJYR7l+Y9zx0Rdz0AmQfxpK4X9PV+/+10yH4viJhZUdTGlyh73OavkoQLyL/zH+LLUQIY/BvfpOb+kT67D7Wt3MybjUeiUr/rfXJENpFr1h6a/6vOPq+QfbeYS2uwBExwi/XT+OljU4JdG+oXX5vJTTWa6VnaDJDpztdSf9h8G90h7FEO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(376002)(346002)(396003)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(26005)(2906002)(83380400001)(122000001)(82960400001)(38070700009)(41300700001)(8676002)(8936002)(478600001)(4326008)(55016003)(71200400001)(52536014)(966005)(86362001)(7696005)(6506007)(66556008)(76116006)(316002)(54906003)(66446008)(64756008)(33656002)(6916009)(66946007)(107886003)(66476007)(5660300002)(38100700002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c3OGZl+IO4OFuHZViYsi7BODDK7Cj29n8453Gm/wVvjUtk3ubCK7l2AQx4eK?=
 =?us-ascii?Q?ML3dP7cBaEBEcVxhxynLpouYkMEBXOHeJc5ibJadLeZwftCkMJcClSE++cZO?=
 =?us-ascii?Q?L5UBesJKKRbaunLkyxS3KE7NbjNcgHA5S8YXL4bOSJCyIif4rT3V57ZDj5/h?=
 =?us-ascii?Q?qWG/MikuYRs/jlcOz4T5KuUfIj1Tpp3iiLcgH7JrGm61pwEQFGuXObI0qgo1?=
 =?us-ascii?Q?ScUK2ykKg/Y77PajwTthXh+UpI+FgxRAC6aetwJ9Z6RWuNzwnIZLR1kJ6Od4?=
 =?us-ascii?Q?7S1IFH3tAq/nolk40tGUoL4SLuIUDzS1oqP0T9SCw1ZDi31VTLTCo0+V7V92?=
 =?us-ascii?Q?tbs4eLqZsD0H6krhLHeIBPblqISQdENFCk48TExk0SxQIlaWWZBqXaTEAqbe?=
 =?us-ascii?Q?H2+Xh3++Uv93J9+OiKpqTliki1wZmTAS5tbi0ROSDPfFhk3U6d/b4MxQbULG?=
 =?us-ascii?Q?6azAih/8eXk6lANRkNl1X4zHmMlw34HQOZWBKqiBNNqVUF8wa0+a0+O9YcL3?=
 =?us-ascii?Q?kTO1YmLr8dcRveSzRvatzL7ZhV73qxgDdFwzsPDDigJdPqCJJ85Y6dZJm/wI?=
 =?us-ascii?Q?4gV2a1VyV/A0/Zr32zl5UKlR62zIornzxTFZAkqFIa72I4F/fmT0NCAuSLSi?=
 =?us-ascii?Q?VISIcArmFFnjoRjau1bTiWqlmQors3n8K6BLmR17P6zpC9b42/t8e+hbJQLG?=
 =?us-ascii?Q?3mh5bIMi1qXjgCSf5+2vyvhFEbbDqh8aGeRvLMVqI7k8MpNzJd4hBb8w187T?=
 =?us-ascii?Q?R8eOvfp1Jzipt28xp3dJzcSIlOQCSHWckaOt6LhFpyU3+Yk6lTsML3zfxozC?=
 =?us-ascii?Q?atQgXiO8SJHos+s4JtfsRbAUPVUXscBcqRWX/glvnzFtI/Vm9av4zL2EMcV3?=
 =?us-ascii?Q?xG3WZ7cj2VIH1BO+Uqn2z5WOmFOB9w3pdcOF0IV7jQwgScFgNWeQNUAm7LM4?=
 =?us-ascii?Q?0oy4TmYKqNhuqr2Wx9GKPRnx6csFWnAT8YDmLc+g+493/MsNYmHdSClUkUw1?=
 =?us-ascii?Q?zS+uNHQ1kF3Y6aLd5rNjMtr6x7gadakCHcCH6QLYA55u3WgzJxPgiXQ3UArC?=
 =?us-ascii?Q?DO4K+pHfw+f9XVZaoTqXCdsiQcIFcztHP2XaKFv1T2HEMYzRwEPKbYgbZs3d?=
 =?us-ascii?Q?mC4zRGGFO7KF72XyDhAm5mtg0l4QePUh3YqHhPIJbDYVVq+oK8Cql3AgimZX?=
 =?us-ascii?Q?yABRKXX/dYP0uoiMjw7kG/zHc/+nw+4/Bd7KmuekMDlZI4DqRyNchuiIM9N+?=
 =?us-ascii?Q?C7DT3vEJG36iG4nwxFhP+F3VNG3sH0yRYAqX18FH0DbwiLr8ssz/rz5rXGVB?=
 =?us-ascii?Q?Iv33IHqQ3Dt0NJ+jzcGzyh8sIQJ9lgp/qBYXQmIuDNrcMGFgxe0b8UdWB7KJ?=
 =?us-ascii?Q?lsqVFxNrJGvvlXsAvNLRjNKAobc19RhJgxHL/0Jqlk0hSL0Xon4fumEt/N9K?=
 =?us-ascii?Q?/OwP1jCQo1z4Asjpqwv/R7TiVtF0/Lp3wZexLjUIoKVPvaLr95YN9I5qvuJV?=
 =?us-ascii?Q?EE+oizOBNsgxxcLMkpdlYxks5kUMGJuSu654Va++Kj5PXLo/uiGyC/jfG4of?=
 =?us-ascii?Q?q5yITkd/dnFOmd4BtY5EjV1Ngu7RWuXg6jFxC5XO2cYENEWzzcyCSvuJ47zz?=
 =?us-ascii?Q?tA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 390183c5-905d-4aaa-7278-08dbe14554e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 17:00:09.6206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NB91jYP4qlATNv7LI1pP+xIpgik3TSbKB3pspCE0J/BObz8LDSi+zQk2BW/PVAQEq7u6haYTyIvid2H+HvR+0MjO/1wWP7ZgLIJbBrlBcDs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6942
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] Regression on linux-next (next-20231107)
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

Hello Krister,
=20
Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.
=20
This mail is regarding a regression we are seeing in our CI runs[1] for som=
e machines (dg2 and adl-p) on linux-next  repository.

Since the version next-20231107 [2], we are seeing the following error
```````````````````````````````````````````````````````````````````````````=
````
<4>[   32.015910] stack segment: 0000 [#1] PREEMPT SMP NOPTI
<4>[   32.021048] CPU: 15 PID: 766 Comm: fusermount Not tainted 6.6.0-next-=
20231107-next-20231107-g5cd631a52568+ #1
<4>[   32.031135] Hardware name: Intel Corporation Raptor Lake Client Platf=
orm/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.4221.A00.2305271351 05/27=
/2023
<4>[   32.044657] RIP: 0010:fuse_evict_inode+0x61/0x150 [fuse]
```````````````````````````````````````````````````````````````````````````=
``````

Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first "ba=
d" commit

 ``````````````````````````````````````````````````````````````````````````=
```````````````````````````````
513dfacefd712bcbfab64e1a9c9c3e0d51c2dca5 is the first bad commit
commit 513dfacefd712bcbfab64e1a9c9c3e0d51c2dca5
Author: Krister Johansen kjlx@templeofstupid.com
Date:   Fri Nov 3 10:39:47 2023 -0700

    fuse: share lookup state between submount and its parent

    Fuse submounts do not perform a lookup for the nodeid that they inherit
    from their parent.  Instead, the code decrements the nlookup on the
    submount's fuse_inode when it is instantiated, and no forget is
    performed when a submount root is evicted.

    Trouble arises when the submount's parent is evicted despite the
    submount itself being in use.  In this author's case, the submount was
    in a container and deatched from the initial mount namespace via a
    MNT_DEATCH operation.  When memory pressure triggered the shrinker, the
    inode from the parent was evicted, which triggered enough forgets to
    render the submount's nodeid invalid.

    Since submounts should still function, even if their parent goes away,
    solve this problem by sharing refcounted state between the parent and
    its submount.  When all of the references on this shared state reach
    zero, it's safe to forget the final lookup of the fuse nodeid.

 ``````````````````````````````````````````````````````````````````````````=
```````````````````````````````
=20
We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20231107
[3] http://gfx-ci.igk.intel.com/tree/linux-next/next-20231109/bat-dg2-14/bo=
ot0.txt
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20231107&id=3D513dfacefd712bcbfab64e1a9c9c3e0d51c2dca5
