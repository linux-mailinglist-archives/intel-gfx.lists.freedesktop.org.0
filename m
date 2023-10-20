Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7E37D07D9
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 07:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9897110E582;
	Fri, 20 Oct 2023 05:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 618DA10E582
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 05:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697781151; x=1729317151;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q43dOZsaXx6kDhv5tArXHBYYwTzqEi3pUBoL+Y3tRK0=;
 b=lwUKwY11piJuJ8+A9itLmy8dWGJL7TWjjXm/7UqWOOxV/huiDtSnfvBX
 NoROVySFwWCVQCsUoPhRBjQa7vSA8qr7qKv9bqBE2ZGewV7Cm4qjFXv1c
 JVEC62lXTA6wkW8s8i/WCGmASJQbHWVK8KpjvK5StFyCefBYpnNfPORz/
 2fPeOrGD4CvVvannE5CfAHK5I7ji3VqlkA7LjOxpEu9GXcI3FbEnVo2P1
 Z1JvlIH1zt+Xqq2M/Bk1ChL+XG7HroUA5ajq9fmVaBpqwY7L/Gmw5Aa6O
 h2xI6pg+VWcILXg2pe//+2s9swZP8iV7JBZEDII4G9EUSYAWtqf0BuS7H A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="389297007"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="389297007"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 22:52:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="827618360"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="827618360"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 22:52:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 22:52:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 22:52:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 22:52:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=joPg8YUfnGSZJofGgloT23qSy0PkVM7DqR67gyJ353SmyPLY5fFwCvHOUNb1Y8lqzGXcYR7EcxbAAcWiX2M6fmRLtnbbVV37c91QglaTuwNO3A77jWq1LFrHtxytm2skTc+Rrzrvs8b2X86TZJOCujQttpFyPrkQB48mwlWR8/DtmsG+Ebjfe7UwDrezgdGT//hWmKoetCiQsk/R4++Q+oEqjHx76F60Furk6KU80qxRtMrVrSCa1NzwyB5zuVeSd0OQXhK6ZXpe+y+RCMZYGGvzPzo5eW5I44HGdGZ4M68tYEeNFNPtEY4UfmilBv4Nku7r54zQfkHsO5mKKnzOCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Bq7tAZzVfUufONLu+RsCG3xwZGEyfGafMjTCeVE3TI=;
 b=N6A7POJn4A/cMr0RJ8l4KthKw16Tma6OO9pC/QwgIOSfhcgcVNOmMUeGJnEwoMssKV1aUmLj/RkUxjs+J3GUhIvIlDbIITfS/6MlkxCidvDjKRAX7YRHe1/Z8eagcwfMFLvZehzMHZF46+Atr2ZJ5xCwINiHqJv4oAlL5ZAt7nxQGRVKNS7Oqha3BuNC6alQaZq5CdtTWNorq93+ZMZbL4P4Msuoh9Ao2ZPJshxguTC7/Dt4H/Wqef1B1ZsPAl9WIpFn5aT6sKgCddaYgINVhqOmJ2R/nLVDpSejzmDJgcO0RK5v0OYjO3EDFUko+fLj6HkkhM7gD57OWVUAxUUzzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB6839.namprd11.prod.outlook.com (2603:10b6:303:220::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 05:52:22 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5%7]) with mapi id 15.20.6907.021; Fri, 20 Oct 2023
 05:52:21 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "lstoakes@gmail.com" <lstoakes@gmail.com>
Thread-Topic: Regression on linux-next (next-20231016)
Thread-Index: AQHaAxmXemGSaA1vD0CYKbPtSpTbHw==
Date: Fri, 20 Oct 2023 05:52:21 +0000
Message-ID: <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW4PR11MB6839:EE_
x-ms-office365-filtering-correlation-id: bbc7b0b1-0818-41c1-d656-08dbd130ba09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: twdiWU7tV3CMSwemFRp7XiZj8HfiFlSR9MymP7n/2bb/ermOR2XO1w4Ymaoc1s5jS0iHrE1qmkgcCWpPSXzISdVpdNAG94VipKdHoF8+HBXbtFzK69bYX+HMIOwImniDTFTYo4WpaB+/Qgqx91Js+cKsZGuCqPSWRPC3xIjett14yQreWb/PhDUTVMPA2IZHUx2Ihl6AHV+TxyVGseLSNS5qX3RXDJopRQbj5xRcXWqztj8REOXZOSMSYy9ptXO8RDbGn5iQBemUJGcvJKm3+iTHdgOA8UWSQcjX6ykapELlIa9WBfsJYpplnaWy5+vWlidUdgwL4Z3pRn2QB7qREgjrJVyu9gty8Ht2Z0JFEIgSN8j5IEc1aR39XAkrzK+cOhKpUu9mOhvk51efBrQBghkxAIe5uPH/oDaQHcy+VW+HG2wOGH3bQov1eWDj7wzU+7iJAN2ctGksxAdslppVAwP4t96+v2jWI7Dz74hwBNV4vtwFLj5hqpQUzz5nerjeitSDKDvRFG5PeKn49/rh1888hVoy1h2eppIUQIkf4I4kZZyB+J+gtedRlfclryyIMCdTj/nuTGmu85PFfKNwLgFbQTC3psZD6FBxtbIBgrFH1W+WLIQ55tRCQBDt7XA1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(366004)(136003)(39860400002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(38070700009)(55016003)(2906002)(5660300002)(82960400001)(33656002)(86362001)(26005)(76116006)(478600001)(83380400001)(71200400001)(6506007)(7696005)(966005)(316002)(122000001)(9686003)(8936002)(8676002)(4326008)(107886003)(41300700001)(52536014)(64756008)(6916009)(54906003)(66446008)(66946007)(66556008)(66476007)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WQy/SufSTiYCpPD8XiTCFEyJ83ifMq7llsGdNG2L33Sq5w+oRr072fGacLID?=
 =?us-ascii?Q?3Fh/rd4oJXbh/SaKGXskBS5a9bp5SQ6zX76SyUdaPwspkeGwFLg+pvGep79x?=
 =?us-ascii?Q?8XRvaHIIBBPx3M4Dljernx1UKDzaIuIxIJYlzI4ujUo4+lXGGMeAbPvEvVZg?=
 =?us-ascii?Q?jlAnPliL9E8OmGgoVM+uF6jqh8PxVVvZeejjCAWlu0ZmYVJYy+m3FLMPJaCI?=
 =?us-ascii?Q?jKveRm4NzNhsAenEbpQuyfQsvtDoQqJD7pndDxsoMYkGF6sjry1mBalOM3kB?=
 =?us-ascii?Q?pQE9S/nzyz7b7FjwQO0k2k2ClD6ash4ewCg9nYD+mnfLF2A+98L0Ou+Vx2uF?=
 =?us-ascii?Q?zT68OmLVnayFIGPsW/klg2sJgCvxXahac6XSMXr1SpXHzC5P+3sELANM4tvq?=
 =?us-ascii?Q?YTHgKfXOAkLXgDznZDE6te+W+CxR4YCt9yxNGbbZBojadeV/y72upoOLTKG4?=
 =?us-ascii?Q?QXLznQIoyz3otToAjdACmhPQrnQkbZF4VhU9h0dq8g3j/lJjjuZePiKNacxe?=
 =?us-ascii?Q?605QbmZJ2YKozokTwGiAR2aTW0K6+l9L/x856kn5WVN3dYKP7q9dxOEmntJC?=
 =?us-ascii?Q?8w4e4ATdMHXr1t+XX4NosWVjz5uRTA3MY7v/N2b5Xvy+Ni5ZVtY31q2xAO7S?=
 =?us-ascii?Q?ugeWkqGEoL3sqKQ/mpb3IMqnZz+nHng/MKBKJUNMudGb8FeAXUKkexU0CtFd?=
 =?us-ascii?Q?PJlXAEw6xOyxJ3UGtUB68lWckZmnwJ8Re1zt48AWSaWXmR6y8OYAJfQttfOc?=
 =?us-ascii?Q?zind2+OyWazi0F/ApuUVNH1eHFt0rceDayBsZeZAmpS19hwZ28hxJeeA8lxo?=
 =?us-ascii?Q?13peSwFoZS0BEber9z6JoOI133kMlkac93uuYOmYNxfKlKkKkEZHNjMi9Gn0?=
 =?us-ascii?Q?nSBjhozXKlWoB2k1QQ7/wHWG7QTfCJm/i5+CdscyIRnU/X6i4QvyqYNnONzP?=
 =?us-ascii?Q?lOLWWHwC2qoJjOfobkT5Cx2luqpuDmsOWHdmT0yTiGMNrGPjSU5L3Wav6IBR?=
 =?us-ascii?Q?TWPveJyD8EIlJwbgpSWg7fRu/t5enuBvE9SAH7c/DRCbkgNy/oxsgG1izGmn?=
 =?us-ascii?Q?Q03N5ed5wRBM+r5w9VYMas9IlzjFE4rVWuroOE9fxJqZ1kYUVWNIy6Q4cQNo?=
 =?us-ascii?Q?7hvObyQzdTmBb9g80E3HvHz5dTaLXLv1nv/iPzbOkZ+cuf7tOwimUakdaw9Y?=
 =?us-ascii?Q?i8PstZVehadYY1TGmzHo3782PXYy02CkH/biFXfQIAV6KYg27jdP2uPHLDC9?=
 =?us-ascii?Q?LDuD2XmA6SAcsFkCNhXKodgcrX9ZIyP7SYtc8nId8nGoJ+i/qo/tgFvwtPSJ?=
 =?us-ascii?Q?gj0fc707n90XOllndK7ttRNHShE9yoFSXivv1GhuoMpNFm5KAmnCN6pKLkxa?=
 =?us-ascii?Q?igOCssaF5JYTraLhWPO4mSciO5GiqMRphFKEcGMST0k26tTfqmHwtUrq8X7h?=
 =?us-ascii?Q?GhJGYK1s4VcoRMqWVRleJ4lOzY8mfgYryA1elMovxvajG4NJg1VmoSgBaO9w?=
 =?us-ascii?Q?lQwU5bhS8u0nmOtm/OZQ4hfpZxVMpf5x90zGVdwFGBKOw+2wTlVx8JgkDw18?=
 =?us-ascii?Q?wTZ6m6xs9xuEg5ic1bsNvjU2YKUjwEA2Ck8ABs4gNt70U+PTYi3nmaltGbby?=
 =?us-ascii?Q?dg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbc7b0b1-0818-41c1-d656-08dbd130ba09
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 05:52:21.2428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6uKTFUSBlKGYJ6arVumHdNU8aOd3I6WnpYn6Fizkd49EGnWr4oFEhx8kW8okKs89Rb0/fbgSAVGn5ebyTp+Fmc/BdKIvhga7BYHXC5EZBw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6839
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] Regression on linux-next (next-20231016)
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

Hello Lorenzo,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20231016 [2], we are seeing the following error
```````````````````````````````````````````````````````````````````````````=
````
<6>[    4.550196] e1000e 0000:00:1f.6 enp0s31f6: renamed from eth0
<1>[    4.581173] BUG: kernel NULL pointer dereference, address: 0000000000=
0001b8
<1>[    4.581178] #PF: supervisor read access in kernel mode
<1>[    4.581180] #PF: error_code(0x0000) - not-present page
<6>[    4.581182] PGD 0 P4D 0=20
<4>[    4.581184] Oops: 0000 [#1] PREEMPT SMP NOPTI
<4>[    4.581186] CPU: 6 PID: 460 Comm: apache2 Not tainted 6.6.0-rc6-next-=
20231016-next-20231016-g4d0515b235de+ #1
<4>[    4.581189] Hardware name: Intel Corporation Raptor Lake Client Platf=
orm/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.3157.A00.2204200131 04/20=
/2022
<4>[    4.581193] RIP: 0010:mmap_region+0x803/0xa50
```````````````````````````````````````````````````````````````````````````=
``````

Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be causing the r=
egression.

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
1db41d29b79ad271674081c752961edd064bbbac is the first bad commit
commit 1db41d29b79ad271674081c752961edd064bbbac
Author: Lorenzo Stoakes lstoakes@gmail.com
Date:   Thu Oct 12 18:04:30 2023 +0100

    mm: perform the mapping_map_writable() check after call_mmap()

    In order for a F_SEAL_WRITE sealed memfd mapping to have an opportunity=
 to
    clear VM_MAYWRITE, we must be able to invoke the appropriate
    vm_ops->mmap() handler to do so.  We would otherwise fail the
    mapping_map_writable() check before we had the opportunity to avoid it.

    This patch moves this check after the call_mmap() invocation.  Only mem=
fd
    actively denies write access causing a potential failure here (in
    memfd_add_seals()), so there should be no impact on non-memfd cases.

    This patch makes the userland-visible change that MAP_SHARED, PROT_READ
    mappings of an F_SEAL_WRITE sealed memfd mapping will now succeed.

    There is a delicate situation with cleanup paths assuming that a writab=
le
    mapping must have occurred in circumstances where it may now not have. =
 In
    order to ensure we do not accidentally mark a writable file unwritable =
by
    mistake, we explicitly track whether we have a writable mapping and unm=
ap
    only if we do.
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We also verified that reverting  the patch fixes the issue.

We didn't see the issue on next-20231018. Is there a fix already available =
for this? If not, could you please check why this patch causes the regressi=
on and if we can find a solution for it soon?

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20231016
[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20231016/bat-rpls-1/bo=
ot0.txt=20
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20231016&id=3D1db41d29b79ad271674081c752961edd064bbbac
