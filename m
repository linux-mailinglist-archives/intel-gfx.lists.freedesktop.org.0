Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0D87BB708
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 13:57:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CF910E1F2;
	Fri,  6 Oct 2023 11:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB52E10E1F2
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 11:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696593440; x=1728129440;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=ufINPV+1GD8N8X+nf31LTbSP0iPtVfsmwOmOvqnc4iM=;
 b=XC0NlgeShR0t4T72u4BExN61YiBkzWlq14pG/QNpW0bDSYIb0KDCSSFt
 F8zf0sfJFcMWEuSmpLp3KB4v6wmDF4sLEfsVIgZSKKOTvkdvepK2Y/KY1
 lmA7K2ixNMAbebqDv/FlOmjC062WmcrUd+WytXFVWzicyaYCKobPss4a4
 iad/hSv0hfnpEAT73jzusj7bfTHNS3gMiSVzD1LBqO9uHf2A/qH48QtG/
 VMgAngTLuA9MjCXHjniQtNFbwU6+BMQViVp0cbwYfGAlFBInN3S06o5SH
 8G/rvWhcGBMOzKotQUbhwvLCOKrQhuDgKHy4qzgjE/DYglU3xstzg03pK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="386556824"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="386556824"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 04:57:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="875917660"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="875917660"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 04:57:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 04:57:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 04:57:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 04:57:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 04:57:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aLJ6ohO9xHCva1WN40VLut1ptWuR3tX41SuqRZmQsZnpnjYvWfFgYQzrVX7NzW0KN53MbnSU1NX5YYZp+IlsauUCFTAYzp/lrOKpUnJymHgRRo4MRowXrgJbOeQsvVjx0t1VzlIneShg5qQ3lYT+damLloS4Ml67WaSa7YWmgNrqgVLQsUs2f3mKR20FPEvpD/HrJcacltAietZILxw43DaLjJAc/P4GBlkhJ+UWPiGTEwznn7ouIc4tM9ksLCWBnmLvD3maYTtI71x42TyB/nWEnloCa/fLidTl6gVdeJLYr4Aie1vGa/gtTO2hqIRfeqwuZ3X6jb7jsJa4jY7wRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K97JL7RD6dSNe4kis/5hpyF2Ng/6nlTTZj3/K6WdHTo=;
 b=Hf7r/Z6trKD51Rp2wOcZ382pkMCnLefIXG0nVo/ylnRzX5uSXrmdboQQrjxeoKfEvmZdTsjkFBFdZoJKEcgyDdtZPX0C6oi3CLErHxrj7/3sKb5RkPytpCBsg5ri+zlzLyneH/LeowhUPvntpRRPq2xwlJqDovyXl9MkKRHe8UIdoHssPD7wgET5/TeMnL5JCXocmQi1obu1FtRO1K4rBruR8Ni9b+AHJxCQRIptoDWVQdsO+SgWhZo/RbO+mRcOtXFpa7l73kywnE0BfjJAu42M05+BEZ8jqnDRdnu5edCyMlOYENgy00valDrLGleF3QG+qeJVaX+qyxjQYozgMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.36; Fri, 6 Oct
 2023 11:57:11 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 11:57:11 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <SN7PR11MB70414488B8785812D9D0EFC7EFC9A@SN7PR11MB7041.namprd11.prod.outlook.com>
References: <20231004102504.497023-1-mika.kahola@intel.com>
 <ZR1g2e+gfdeJHad9@intel.com>
 <MW4PR11MB7054CF26F52F649E6D147CF0EFCAA@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZR7Snm5Fnt9hOFEl@intel.com>
 <169652043551.1601.10514040093231401136@gjsousa-mobl2>
 <ZR7f7zs+ZvcQYfc7@intel.com>
 <SN7PR11MB70414488B8785812D9D0EFC7EFC9A@SN7PR11MB7041.namprd11.prod.outlook.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
Date: Fri, 6 Oct 2023 08:57:05 -0300
Message-ID: <169659342554.3173.6200793801430972625@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR06CA0068.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::45) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|BL1PR11MB5399:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d056b1b-7a53-495d-46ef-08dbc6635fe7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mL9NnR/0xGQf4+zU5oNqWWKJPo5vv4XwoPnj8ojsIno++OvpcMcoO8vktGg1UIK33XM5ag0LpQdZGSHD9/PnpqqlkB65ucE99sOaVnqA4ZIVxmNvptFjAJhLYNkCzmdvlXzZbWr+urcdPjfaPddkheCYpKrCGrbWZ0HLe+46MO3oXyB+YPiik7ylRC2y7RqLlbnVWGxmz+G6nDh/f/eyg2S/c0wx/L+p7cMMPOPDLa4JNVcZ5lDpnOjGeVsuCem4mGQW/K0UO8Gw2yqqA1XV7Y1soFZIaXjWjZ1BXJV/XIIM1WFv6OX8oXkIwtX3jbMHt4b4Hg6gOTuh/6WA8tgD/reSjDyDoufK7fqImPgvM3X5yrYQ29u6kJ9lr+E0yYR5rPlAp74sFZ+grj0dBKW5RIB1l/eBI1se5NprPXAX/bNwL/vK83FwUI1AFVq1lz8eq4bcrC3bJwW0qI39z2psZmWQUL6LT8ys7nZqOenkCSJvesog6Eg9bWNOMgyHk1yr3I6T4WAiProow82bEmd6UAeZmiCkpmKge9K7XZXdjhD5hdC3+H602pi2oBaS5e4g2r2ahWvDzoTDlTmITUzfQHMtdAWkVdS69sLLNCDLY4k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(396003)(376002)(366004)(39860400002)(136003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(6666004)(9686003)(6512007)(478600001)(6506007)(6486002)(53546011)(83380400001)(26005)(2906002)(6636002)(33716001)(110136005)(5660300002)(8936002)(41300700001)(4326008)(316002)(8676002)(66946007)(66476007)(66556008)(44832011)(38100700002)(82960400001)(86362001)(15650500001)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHRxWHdnSG5ucmwxanFSUTcxbXFJUHZNTmFSQW5OR1l2NHpXTkdpd1Z1VXpw?=
 =?utf-8?B?U0YxZlRMODhUVmQxS2VmcXZJWERsU1Q5TVM3cisxYXRVNzVrYVZZZ1QrR3dB?=
 =?utf-8?B?WUJ2T2ZCSkw1azU2YUM0NzRKOG9rYzlBcG1xblErSHB1MUxJZXpxK2g1dHZq?=
 =?utf-8?B?dmF1RUEwVWlBREV1NnM5WEtJUzZIZXdRQVZncy81akdoNFh2K1UrUG00MnZY?=
 =?utf-8?B?bTc1Z2t2OXcyRlErcDJnSitqM3pLL0lIQUE5UjBYdktTT010cm9RUkJQMzd0?=
 =?utf-8?B?RE9sMU11c3ZYUTNDRkgxc2hoTkc3NlprN3A3TzNzSFJ3V1FlcGtLc2E3cW8z?=
 =?utf-8?B?bTNSNmE5SWRpbFJIWHF3eU1MYWtPTC84em5jYzk2aWtyRXFrdHkycDNXYzk4?=
 =?utf-8?B?b3JGNzZiSWJqMVo4NWU3VFMrYnZicUEzQ2FpWTVsQ3pPQ0lFSm1FaDlYVjdu?=
 =?utf-8?B?WXFwL0MyVU5hWXhndWw1SEpJcDBqZzhZdmxsa1czUTNUQ1dPVVBWNWsrQXdy?=
 =?utf-8?B?SXFLVVo4VFV6VG5KY2xFWU1hOWlTalYwOWJ4UFZWRVFvUzBQTHRNWWV5b2wv?=
 =?utf-8?B?SS9rQ0h5K3ZJSWwzZm0wVWdReC9IWVJDV014UzFmM01HYzZWOVVEUW1Cdys2?=
 =?utf-8?B?U3F5NU9zUllTajQxamx1Z3ZhRG9saExSVk03UHh5SzcxNVdvcW9iSmFrKzVD?=
 =?utf-8?B?T21tVGtVdEJrVjRwK29JcHBqcUNyUWc4RHRiUDZDcHVTbnFQSnpLSkYrbFdw?=
 =?utf-8?B?cnkrZDMrZFV6eUNOS24rYWVuTHpBc2g5dUxsREZLUmVzY2c0aHVJc0ZIajRE?=
 =?utf-8?B?ZTdLajg3eG9xL1d3STJrQ1ZTeVBLTEJPb1lBbHRMUTdwRVY5Vm1LcHZhbmEx?=
 =?utf-8?B?LzllREVhN0hrUWp1QTZIbzNubzdEYUhvYXl3SjV5THNIb1BXZGhqd1BzUEcx?=
 =?utf-8?B?L3l3OGN0dlBvUHlMWlZiQitmdGRUUnA3RXExdmRnSVdqK2svOWg0Y2lydzBs?=
 =?utf-8?B?ejFuVW1MU013S0tZZVdXa3hpSUZoNEtwNWI4OUYxRmJDakZKRElYVjNuZGVp?=
 =?utf-8?B?L2IzVmJnNUJxYmFFM3JNWm96OXZUbE1PVFZ0NmRsVWlJc3NaR2NGM3lTZmlK?=
 =?utf-8?B?aDlPSkFzRW1scG1COERPWEo1RnpLQUIrbnM1aks4cmhlWlVKNkc2Q1RQVnR6?=
 =?utf-8?B?RUNSenNlSEhUYVJKVTFJSXVuMVIvTXYydjh2TEVQQy9mTHhPazQ0NDF0ZTBu?=
 =?utf-8?B?bXZ2c1BBVFhTYnZZL0wzUm9FbS9iWS9kTkZPSzBtWWNvekZpYlh5aDJsbU5k?=
 =?utf-8?B?NmdlYTA4eU5YblNMSVBxZ1UvUWgvMnFBaVFuY0lqaUxoeG0rc2htbUdGTVMr?=
 =?utf-8?B?Qmt2RC9wNWF0SU4xZWxnYitEV1B4aEkxelNrQkpUNTBqS0tPT1djc25qclht?=
 =?utf-8?B?dGZRRXNYWXBoSFZnT2JxalpaeW9HRmhWL2sxYStkVGwxZGRRaG9WalFkU0lv?=
 =?utf-8?B?bURnZjZ4dkwrSE5YcVdhQ3lzdUdQUkRzMDBvYjNxL1BGRGluQjdnN3Y3ZXpQ?=
 =?utf-8?B?ak1EODRSaDdRNGRhTnZ4aCtQQTNsMTVNbUxwbDJ5SWk3TGhPaVVFdXh6QmZO?=
 =?utf-8?B?Wjgvbzl3V3RMNDIrV3VIcHAvazlhZHZHTDFXUml3TzRwMXZBMXlNWlNyQ2Fp?=
 =?utf-8?B?blZJeU1KeDlnRnl3clB0ZTArMVdDQmJJWm4xL2hPMkpOTDZ1enhENEtqams1?=
 =?utf-8?B?eFUwVFVMMkNlUFJyeVZRVkN4bGtKMUVJTkFiQ29lUG9DeFFzVHlhcmxReUdo?=
 =?utf-8?B?RGRSQnhmWGZpYnVkTHh3T0p1NEVBOW9SeFB5cnl6ZXEyT0JoYUYzbXJVQXFT?=
 =?utf-8?B?OXZjNGpBSG8wZDJzZms5aC9OM1ZiK1czajBTMFlXeXhEcDByNU9FTUNoUTVo?=
 =?utf-8?B?U3lEZVpIRy9NOVV3VHpQL2VIWllpcjdrY3pFbVVHQzMyM3JwRnZoRUNFcER6?=
 =?utf-8?B?WHlRMFNkZEwvSE5WWDZKWlpTZjQvS28vbzc3eFNEejBjK081cnBzRlE3RS9p?=
 =?utf-8?B?TTJ5bExUejdQVEd1SEpVTVRaY1hhVVVER2ZuTWp1eTk4SWNBVVo3NFkrajBE?=
 =?utf-8?B?bllxeU4yTCtLZWZzTkhLZGdzMUxIMnFHenUzSHUvemdFMWxIZkZvdUQyNmY4?=
 =?utf-8?B?RHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d056b1b-7a53-495d-46ef-08dbc6635fe7
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 11:57:11.8826 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GIa9UjFX5E83t6AJDQqHvcgR1zcVAbx/35Wcak8WbRRPqNiwQBgKBfQ0IdRF3AeOYBg2VIvPTjhiDu5KJ1TYIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5399
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after
 each read/write operation
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Kahola, Mika (2023-10-06 03:49:15-03:00)
>> -----Original Message-----
>> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> Sent: Thursday, October 5, 2023 7:10 PM
>> To: Sousa, Gustavo <gustavo.sousa@intel.com>
>> Cc: Kahola, Mika <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.or=
g
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus aft=
er each read/write operation
>>=20
>> On Thu, Oct 05, 2023 at 12:40:35PM -0300, Gustavo Sousa wrote:
>> > Quoting Rodrigo Vivi (2023-10-05 12:13:34-03:00)
>> > >On Thu, Oct 05, 2023 at 03:05:31AM -0400, Kahola, Mika wrote:
>> > >> > -----Original Message-----
>> > >> > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> > >> > Sent: Wednesday, October 4, 2023 3:56 PM
>> > >> > To: Kahola, Mika <mika.kahola@intel.com>
>> > >> > Cc: intel-gfx@lists.freedesktop.org
>> > >> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message
>> > >> > bus after each read/write operation
>> > >> >
>> > >> > On Wed, Oct 04, 2023 at 01:25:04PM +0300, Mika Kahola wrote:
>> > >> > > Every know and then we receive the following error when running
>> > >> > > for example IGT test kms_flip.
>> > >> > >
>> > >> > > [drm] *ERROR* PHY G Read 0d80 failed after 3 retries.
>> > >> > > [drm] *ERROR* PHY G Write 0d81 failed after 3 retries.
>> > >> > >
>> > >> > > Since the error is sporadic in nature, the patch proposes to
>> > >> > > reset the message bus after every successful or unsuccessful
>> > >> > > read or write operation. However, testing revealed that this
>> > >> > > alone is not sufficient method an additiona delay is also
>> > >> > > introduces anything from 200us to 300us. This delay is
>> > >> > > experimental value and has no specification to back it up.
>> > >> >
>> > >> > have you tried the delays without the bus_reset?
>> > >> Yes, we have bumped up the delay, first from 0x100 to 0x200 and
>> > >> then as per BSpec change 0xa000 and I have tried 0xf000. Increasing
>> > >> the timeout reduces the frequency of this error but doesn't solve t=
his issue.
>> > >
>> > >what is exactly this BSPec's 0xa000? where can I see it? So maybe you
>> > >can update the message above removing the 'no specification to back i=
t up'.
>> >
>> > (Resending this because I got a delivery failure notification)
>> >
>> > I think we are confusing "delay" with the "timeout parameter" of the m=
sgbus.
>> >
>> > The PHY has a register to control the timeout parameter of msgbus
>> > transactions (BSpec 65156). It's default value is 0x100. With commit
>> > e028d7a4235d
>> > ("drm/i915/cx0: Check and increase msgbus timeout threshold"), we had
>> > integrated a workaround that bumped the timeout value to 0x200 in case
>> > timeouts were observed. Later on, there was a BSpec update with the
>> > formal timeout value to be programmed to 0xa000, which was
>> > incorporated with commit e35628968032
>> > ("drm/i915/cx0: Add step for programming msgbus timer").
>> >
>> > I *believe* what Rodrigo has asked was about the usleep_range() calls
>> > added with this patch, if we tried to only keep the usleed_range() wit=
hout the bus reset.
>>=20
>> yes, that was my original question.
>
>I have no good explanation why usleep_range() is needed. Without it, the k=
ms_flip test eventually
>throws these read/write failures. As these are a bit sporadic in nature, i=
t takes some time to catch
>these errors.

I think the question is whether the bus reset is really necessary. Maybe on=
ly
the usleep_range() hack would be "enough" to mitigate the issue?

--
Gustavo Sousa

>
>The patch is a hack and my idea was to set message bus at reset state afte=
r each read/write operation.
>Unfortunately, this alone is not enough to pass kms_flip without these dme=
sg errors on read/write.
>However, the kms_flip test itself, which triggers these, passes without is=
sues.
> =20
>And I missed to mention that these errors show up (at least more frequentl=
y) when 2x 4k monitors are
>connected. These may not be visible with only one monitor connected. For s=
uch a system, I haven't
>been testing that much.
>
>-Mika-
>
>>=20
>> >
>> > --
>> > Gustavo Sousa
>> >
>> > >
>> > >Oh, and my english is bad, but it looks to me that 'empirical' might
>> > >sound better than 'experimental' for this case, since you really did
>> > >a lot of experiments before coming to this final conclusion.
>> > >
>> > >>
>> > >> > have you talked to hw architects about this?
>> > >> Yes, HW guys requested traces which I provided but based on these
>> > >> the sequence we use in i915 is correct.
>> > >>
>> > >> >
>> > >> > I wonder if we should add the delay inside the bus_reset itself?
>> > >> > although the bit 15 clear check should be enough by itself and it
>> > >> > doesn't look like it is a hw/fw reset involved to justify the ext=
ra delay.
>> > >> That should be enough. To me, it looks like when reading/writing to
>> > >> the bus maybe too fast, the hw cannot handle that and we need to re=
set and let things settle down before trying again.
>> > >>
>> > >> >
>> > >> > well, at least some /* FIXME: */ or /* XXX: */ comments is
>> > >> > desired along with the messages if we are going with this hack wi=
thout understanding why...
>> > >> True, I will add these the the patch.
>> > >>
>> > >> Thanks for review!
>> > >>
>> > >> -Mika-
>> > >> >
>> > >> > >
>> > >> > > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> > >> > > ---
>> > >> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++++
>> > >> > >  1 file changed, 6 insertions(+)
>> > >> > >
>> > >> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > >> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > >> > > index abd607b564f1..a71b8a29d6b0 100644
>> > >> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > >> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > >> > > @@ -220,9 +220,12 @@ static u8 __intel_cx0_read(struct drm_i915=
_private *i915, enum port port,
>> > >> > >          /* 3 tries is assumed to be enough to read successfull=
y */
>> > >> > >          for (i =3D 0; i < 3; i++) {
>> > >> > >                  status =3D __intel_cx0_read_once(i915, port,
>> > >> > > lane, addr);
>> > >> > > +                intel_cx0_bus_reset(i915, port, lane);
>> > >> > >
>> > >> > >                  if (status >=3D 0)
>> > >> > >                          return status;
>> > >> > > +
>> > >> > > +                usleep_range(200, 300);
>> > >> > >          }
>> > >> > >
>> > >> > >          drm_err_once(&i915->drm, "PHY %c Read %04x failed
>> > >> > > after %d retries.\n", @@ -299,9 +302,12 @@ static void __intel_=
cx0_write(struct drm_i915_private *i915, enum port
>> port,
>> > >> > >          /* 3 tries is assumed to be enough to write successful=
ly */
>> > >> > >          for (i =3D 0; i < 3; i++) {
>> > >> > >                  status =3D __intel_cx0_write_once(i915, port,
>> > >> > > lane, addr, data, committed);
>> > >> > > +                intel_cx0_bus_reset(i915, port, lane);
>> > >> > >
>> > >> > >                  if (status =3D=3D 0)
>> > >> > >                          return;
>> > >> > > +
>> > >> > > +                usleep_range(200, 300);
>> > >> > >          }
>> > >> > >
>> > >> > >          drm_err_once(&i915->drm,
>> > >> > > --
>> > >> > > 2.34.1
>> > >> > >
