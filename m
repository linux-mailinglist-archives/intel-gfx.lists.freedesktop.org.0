Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DD578739D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:07:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CEE410E575;
	Thu, 24 Aug 2023 15:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74BE610E575;
 Thu, 24 Aug 2023 15:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692889672; x=1724425672;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CE2bkSiQtJXmYSlYRXYa27xcF0h6UpfADx/7UG6kPio=;
 b=davcxAP7DUuFgd3mQdGpS9/HgbVFhBS+wTkhPl/RGIll2XdEt5pgi+zb
 Odn1NR+2wK2hwbR1EO+761+i+pgutrXsIHNRgZ8sssIyvHWhIrKGFIdzQ
 q9AaUXBz3Ge9xhvF3csVEOlihINGmT5Xl8//mKWRRZyClJC3tdGwcsl2H
 JPuXPIaTtBXyigzhkqxYvMRFmOUo4Hj/FZQ5Ipl0V0ZBb9jaZa9i6gaCZ
 lik/qSIayRwdZtq6qBE//Wz3/x5Dc7JIS365g9FsP7wxYJAVz5NIJgVij
 Gd4JRbXSwTUWpGpjtLqEeOBJ27zTR9nSQuT0Z5HQ8h4o55IPKw6BMxQ/l A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364655976"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364655976"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 08:06:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="737061433"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="737061433"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 24 Aug 2023 08:06:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:06:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 08:06:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 08:06:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XbxKJiQrDPJVZiyjYPc0IFI9+z3X47e4krSwfVTAPcSH0eQLRjIL9CxyjYdSTCnzTU+87X5es6oTmgIZFBKixbYnvp6ewY6a4ndNjfn3dMFwtuZ65H8YP0fW0b0U44z4mBIJQCFJH/SIM9fYOkkUO0t97ZUwle/NP5290uO6ZBusNkUwkxI1YbfQR5aAPSQEvIWdBvbTf/S6jH2Mox+NCjFt9T4Y5DF/F/EIFj3W+ACZEN+/+FXQnVKd3lF6/85nGYBi9cvnrvxecmFauyIorhvIlB87ps4c4NCwJ0KHhSRUPe65wWJU8JUAuwTGkEJUf6ws9Aw9OS+dUv13wTQjKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HI27BGFyAgtoeGRpWA5MmLBkSm17AlDFVzSWKBAeHJ0=;
 b=MKsW8lZtn0O0AnLQx2HqjiilfDovp/t0sp//HX5xuSmPGDallDBRBHCjPwZVWO/8Ik7m+/OdAgBXoiqfuOF3T1HU9ddFCeaxDRwQHxfo0qeJ0wUPEqxDiM0P0CO/OtGcEUmOQ8m3vu8VA0l/qW/gPdYRfEPOGMy0oXejZywAzVlKzHDm558VJHOnRy/EGoROj/xty2MeIS8Nh75i4HYOv5/Ss3PxXTEL3fykbgKlx36S55EPXyP0V8dhpSn8lMOqV2klhxttLVmXiISZj389spuRGd9GbRD8t31lU4F0WPcpvCduFFsfezxhDqudeygIvPIqjHvDm2vT5b5lb41lAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB4889.namprd11.prod.outlook.com (2603:10b6:806:110::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 15:06:07 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:06:07 +0000
Date: Thu, 24 Aug 2023 08:06:05 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>
Message-ID: <u5g6a7r574jw4yw63bnia42bia7i3sy6ix5vul7ndhbgffitla@hr756x3bbmpo>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-28-lucas.demarchi@intel.com>
 <f07485a99171d442a4ec2cf2b7500829894ae374.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <f07485a99171d442a4ec2cf2b7500829894ae374.camel@intel.com>
X-ClientProxiedBy: MW4PR04CA0126.namprd04.prod.outlook.com
 (2603:10b6:303:84::11) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA2PR11MB4889:EE_
X-MS-Office365-Filtering-Correlation-Id: 80d3e24f-d2c1-4db1-1767-08dba4b3a4d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BvyH0hIpJ9N0vxUkWplqlJrp+jtPT4iiL5WDfsebsV291yA9PPWOqWpKQztnuwUBd2GH2UqnXzKDEcV4MbV99Gl5m91SXjxIFCE7F0EsSt2whlRzCBFXnmbzBY3W7G1fVuMUFVPr7JKh0HkIZKiT62Qns8vQAGYBtiwWYaC/D8FQrv6HwNMzVOaLo+IHF/RkH93aW5AQVviY4K8ZDICQF5U91sNroXxeoHA5pMJn39fpaScmBT/efezZkQHze45k5iCWjZnG5np1HhCwkyYFxRH4CRKftE8VsUxf1LPrMHKCZ6Ya+NKGWNZoKTykkgan1OnnDJlDWj8lxdKihvAaDJKAaNIx8Ijd/Dxt3kgoN4IGO+Wzd2uVSSqKdPIlv9YaUlIiyKTKLVJRKsPAwfcyW94S78IyUmS+dSL6IFJsYF/hV/dVogQObYDgIzCBeN6KTHGpttYKpj1+z0sFopbVI04wiHtGhA53FJs9Y3GdTMJkQ/ucb97GCqk1AfGpvoi1fDTdvptoeCKov89H6ZITuBmNbWTXIOxYwDOCW690o9o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(39860400002)(366004)(346002)(396003)(376002)(186009)(1800799009)(451199024)(66476007)(54906003)(33716001)(66946007)(66556008)(6636002)(316002)(82960400001)(478600001)(26005)(38100700002)(41300700001)(6486002)(6506007)(86362001)(2906002)(6512007)(9686003)(966005)(4326008)(6862004)(8676002)(8936002)(450100002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qtExxQ1h64eAKAmxqsRoNhA0psH82BhEqxXeEDybb8tGrKhrw/NAAvVxEc4F?=
 =?us-ascii?Q?/vR1UiuLwBkVvob/chJ7VnCcKViWWKYBs8ATMG85XjhR6H33QmCVcYlL9NZo?=
 =?us-ascii?Q?d3SMAnEIbjFmDCy18u5P+tDhJsWi82Zq0xrLcbHd+K/QNGkJlr1CZEzuo7qk?=
 =?us-ascii?Q?G2R5U7XIeORr0IGqLDkK6LLOLGvM0I+5F02GM4oajprpQDJrxGCIcne0Ykgx?=
 =?us-ascii?Q?uEMZGoD8TRh0zhdwAozz4/x3BmdUOXNgI8lrJJkXRFDr1PU2QWOBjAirXEJc?=
 =?us-ascii?Q?e4EwitXjJ5lluPGn+NOhfcfXzr+CgnVAogv5uWxDqeHrRdaUDTLgFvaHP/31?=
 =?us-ascii?Q?2bmB3l0uNAyh/KPNc0yY9v4NVHMlF3uuwLo7rvT6j8DJxmm2wA2bP2zFR7iv?=
 =?us-ascii?Q?j3PGAGtWDgacIeuqe2LD06fTDQfVRhkqB2Lwjprb3K7UFkVfGA2skVU4VF9J?=
 =?us-ascii?Q?Op1KIAzZFoBRhRlu0kw3CQ7PBZltPXfp/wTgRonvuBdqI59IwCqTqJqc7+nT?=
 =?us-ascii?Q?iGNnuM3VWGq8/zY3HtxwKsUEMabl/X9tn85Y4zqU46KnxfqsIxCtcQlw4j7j?=
 =?us-ascii?Q?EX+XHW5SDnkSnaLlYgkRNhtcZptVCusJ0eNWSA417yehx2M507m2lY1PDrlw?=
 =?us-ascii?Q?jlXjhl9RI3EjrzoGJrCIWOXd8AJD0FndvNyYWa/BaQxozXJFLZgRMIsfORRa?=
 =?us-ascii?Q?DAA1jNrYaxpDTX4LYwEOg8I6GmVLykIDNoqQnEfKOl1a3WqmniORPaqVS/4y?=
 =?us-ascii?Q?M0vjHMR2kAxMYjUQ2efGCo6BscUN98dKUwIqdKe4UOpFYHkCXHIxzyOQ5gD5?=
 =?us-ascii?Q?wJMqzisKUmqzre6UiyXMsKZd+NyoLuqfNmWYJKDE8MelK+Zcxu8A/RH61J2F?=
 =?us-ascii?Q?SS5ZlBkZmnxpJ+h7PZuV3WJh1fYRPVzIoAeppEGSOXJVi13mtPOiF7WUuIeL?=
 =?us-ascii?Q?LOJhxSl/d6ln4XY+3Ti98naNk+9y6ReXW7fMAN2kTmDWgF7hUnvyW/oh9OhK?=
 =?us-ascii?Q?ixHL13hDxI5OjoRPOTUXd1gjk3swYuiYZUEMP3kh4n2b5uGOgnnWbXcsakCe?=
 =?us-ascii?Q?kpdiTJyGCQLVw/zoaDOkQ50ybT0XNvpUsEzBfoGj/yuDlnyVcYNGU0aJmagI?=
 =?us-ascii?Q?SrQuvaN5e9QObQ6oQd3PjHRpfsx7zrtZPW8y7YlfvLH/La3yH2RfpQ+mEVUf?=
 =?us-ascii?Q?11uU+7ZO07y7pXWcK8E6nSbxdrfvdqwI37FBZy/+PQnd5MXmliswN63xNPGM?=
 =?us-ascii?Q?+si8AFdfVC7ok3Ke375iFEST6X/oiE2WqzYEdwCoFMWnUXm7n/AWSD4q9+1W?=
 =?us-ascii?Q?smbl/tBzrrJ2qWFiNI3gBfED5dD9+fo+1cDdc93JL98hw6hL2ScYVOyywQwD?=
 =?us-ascii?Q?YzTBm1fBcvrfwhc4q05JdG9ahkPE08PgN32287bjJKZGeFTBl5kT8mj/JnZV?=
 =?us-ascii?Q?rtuXLEGkCsopoAsfSVdcv6uS6qPpOI3HLvx+wd4s8D5fonAHQYyeQFGfdvLV?=
 =?us-ascii?Q?go67qnUN6Gg3lk+pCLmyQQj/dbh6dmrDvD9NJJPfdCW6kxwLKSFlvxgkc2UU?=
 =?us-ascii?Q?Id6FtyamioP1hYdhbWZTwEfwDhgk29bzIevd5v95E1X+4rM9FQ+b3Ov5UsyL?=
 =?us-ascii?Q?Pw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80d3e24f-d2c1-4db1-1767-08dba4b3a4d3
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 15:06:07.6574 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DazW1NybqFk1BODcrNYZzYZHoe5R3d36FYe1BphDgLRfXNkHDNSt4NdNYFE89Aa0lOUtVpE7TfHLrn1KasYnkHbI0nbh12NgQaPQTYU+FvQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4889
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 27/42] drm/i915/xe2lpd: Read pin
 assignment from IOM
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 24, 2023 at 11:34:22AM +0000, Coelho, Luciano wrote:
>On Wed, 2023-08-23 at 10:07 -0700, Lucas De Marchi wrote:
>> From: Luca Coelho <luciano.coelho@intel.com>
>>
>> Starting from display version 20, we need to read the pin assignment
>> from the IOM TCSS_DDI_STATUS register instead of reading it from the
>> FIA.
>>
>> We use the pin assignment to decide the maximum lane count.  So, to
>> support this change, add a new lnl_tc_port_get_max_lane_count() function
>> that reads from the TCSS_DDI_STATUS register and decides the maximum
>> lane count based on that.
>>
>> BSpec: 69594
>> Cc: Mika Kahola <mika.kahola@intel.com>
>> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>
>Lucas, do you want me to send this together with my patchset with the
>preparation for this?
>
>In a way, the 4 patches I sent out can be applied independently of LNL-
>related changes, so maybe I could resend just those 4 patches and you
>base your entire series on top of my patches after they get applied?
>Then this patch, which is really related to LNL could be part of your
>series...

Please get the first 4 patches applied. I can keep this one in this
series. Pasting from the cover letter to make clear we are on the same
page:

         3. Patches 7 through 10 can also be ignored: they are not
            applied yet, but being reviewed in other patch series by its
            author[2].

	[2] https://patchwork.freedesktop.org/series/120980/

The only reason I added them here is that since this series will take
some time to be applied, I figured it would be better not to create
unnecessary conflicts.

thanks
Lucas De Marchi

>
>Let me know what you prefer.
>
>--
>Cheers,
>Luca.
