Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DB1555575
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 22:40:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E2210F43D;
	Wed, 22 Jun 2022 20:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7327710F3F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 20:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655930441; x=1687466441;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=u3eo4ZBw0wQS3ChP6bu0yNMlBvLpT3Olk/ToQSpAOcU=;
 b=WC36cNWIRjPM2aZ42FvUEEJgI8Tmt40wNRZNoWRlT9/+l38FWFxSyaqb
 FlqjAn7DgZ0sxHAQdSFu7WqvmLeOpzUHgO8RSovyqMRCqYNWxhXkm05oA
 w1s0pQ9Bgm33b4tpeMYyQSVHtqEv8+bEfesVSWLVo5Ai/3TWZ6nwPmgjE
 9jFDw0XoHjbrLn/Yz8kz2r+GdSHRaHwVP2eVITcvFqCdEmCn91gdcfFgz
 nSHimGX+RbSCvyEwmhlBfg/JNlqjb+XvsBw2jnDu2wMO5m5ZzO4PkeVWe
 Gv9UWspMsLjibHW45rk7hzdWbx9pItetu3kWHMi9x649oVa5JgCSCvo/x g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="278090849"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="278090849"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 13:40:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="585883318"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 22 Jun 2022 13:40:40 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 22 Jun 2022 13:40:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 22 Jun 2022 13:40:40 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 22 Jun 2022 13:40:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eVFZIvg4aDqEaRAqNuVUWxbY3FOTJwPWVXKbPcg4wix3Vu371oF2f5Zqb355KyjbIUBNMhZq947XXcg+nKXDXkhtqW3wRLv80Yzpr91IojeWCd/q+NcfkB0DC9RD7wXO7cch4rqB+CwpTnni+ADM3X+LOXJEqJj3cumF7kyjHpn9QalAo2BwaP9jZej30ZP1NngkZbOlu27q+V7Mm57QvTXXd4ZCOklpSMJQsOM8/1A6fn+CcxXZgP8ldldM7xpNvArgKpvsc2ewoR1P6+FgdzQCuzY+Cw582FoRzQk9PBZlXHWjAiz6vCOSW7nHJeVBDDxKCkSBja5TZDOCRVx6VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MxCp1hXF8mqtU8K/cQPf/gKHYX5V2hYxz0ZruniulS8=;
 b=CWCZjuOyC4AFjglLqclKscsIHa6xNHpUGld/M7aAl/fD5vFv0ynyy8gglNdDeRGXPZ5mSMLHFDc4uipMUW6HHUIdDspSDxq9H1Zk7xVCu7MHcx0IwI9d0KzODvc1KItXkaOVVh3T06AFrioo/DSGZnRpD1mPgLLlcnxgL4F0ReqTZ1cwxNqvBz+88nIOQX49zYnYMeZQgUwA6oOTL1kZ9Sr3Lud0QlbJQSE8AhFdOq+0q+7LXvXCBE9rpc0mKA1wQdZPa4je6YlIkO8bqCk0B3A58zh1uE3u9/jSmt28fIHpA3Uzl6lB4unNHXai6t07dPdPtqm0Gd7bVU5GT+iI2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BYAPR11MB3847.namprd11.prod.outlook.com (2603:10b6:a03:b1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.18; Wed, 22 Jun
 2022 20:40:38 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::9c44:e158:13c8:2c74]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::9c44:e158:13c8:2c74%5]) with mapi id 15.20.5353.014; Wed, 22 Jun 2022
 20:40:38 +0000
Date: Wed, 22 Jun 2022 16:40:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YrN+QL4K0zRMA8Ey@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
 <20220621123516.370479-5-tilak.tangudu@intel.com>
 <0f1834aa89ed4f6b89db4ee7eacdbd55@intel.com>
 <DM4PR11MB52480BDD4014D227789713F4E2B39@DM4PR11MB5248.namprd11.prod.outlook.com>
 <87zgi4rh7c.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87zgi4rh7c.fsf@intel.com>
X-ClientProxiedBy: BY3PR05CA0037.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::12) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 473b1fc3-4b64-417b-5ed3-08da548f76db
X-MS-TrafficTypeDiagnostic: BYAPR11MB3847:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BYAPR11MB384774C9B81A0463DA4B11F68BB29@BYAPR11MB3847.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b11dy8LVUCemkSahkl3TQ+XjisMBbRIf/XYKmpcphzWQFlMFPFyERmTSLn1oEohiOGDokE9SVBqJ1dmYQN4qnRrFVvai2X9oC5m0kjRiRIWz+QGWkAxBGYjy7+RNYlhp1y43y2+XeX+TmfX8YD2vIQeoUHsihMe4afFasV4dmcvItVXe9gpYJ4w9W4o+rx3ZMf3gfe/4jFDtiqQptCX8shb0XUZLOETbVsnxOJSblYrWB/bWZbTN7VbnFrGaIQcS5vt2f4VxjNL1W8DPXAD89L8cMLeBQ3WZIjz8OcaNjHxE8qEc2JId0kyODLRkLqDD0FSGA45jH+FRZwfSP7tslR1HW+RDIvJMX/eJbbz4hQUjht2pC6RedDOLnhz/Yrd/iL+3zLb8csd7jgbv1TtcDH6+vKwOK6tSelxnQGIIyOGgxCmzsp3CbPcJqQ94ntEqcwxXg6GqfgxUPnHBDYDFndO3byU0lfx/FjoxgwCOxRS8j9QC5Lz7p05ilo3dEDvDOeXyXFegx6GRwLbECjLdgO1/eCns/Wm1/AZyMdoMRWkashgRPuJUtwqMA66tKrf1zzmvic0nzOYCekHK62jpZx72PsRiqP02gGgF87QZIMM1UMiScEOvJdsPOc0EjUABF7RdXnJLxYaz2fRikqWrrc+9mZ7JJdlihpisZ51qRXDzAY0XECwYKIpJGZYOs71iP37URg0GDIHh6LOrdUkPMyuJf9hJbf4M2U9qMJewnaAa7EHbkqDQRQP1QzoAQI3I
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(396003)(136003)(366004)(39860400002)(54906003)(6486002)(6512007)(41300700001)(316002)(36756003)(66476007)(44832011)(8936002)(53546011)(26005)(2616005)(2906002)(66556008)(5660300002)(6916009)(66946007)(8676002)(478600001)(6666004)(4326008)(86362001)(186003)(38100700002)(83380400001)(82960400001)(6506007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?f7458k0fqmi4dqu4vSoILa7xhzDP7l4nFtXJzqZHAX9+SxUcgY3v5Xw878C+?=
 =?us-ascii?Q?A6uv2gL3ruQbIMWZXvh5ia/QZHJr78mNYv3N5hvJ8floXmRRgN0WM9W//tFe?=
 =?us-ascii?Q?32ju5Ue5Qy0Wbx8w2ie0D3//pZjYsCaqTjFTEQmrXN1eBaEZBhrbD+2tVWAk?=
 =?us-ascii?Q?F0lImqxH5TxwIceNOvmWRXhVBWM9SPW7RxXTYjlyWGQDh+FmZdPX1ugfnKtm?=
 =?us-ascii?Q?H+rfc0/J5XSdpyWWpHhYhNOkXnKSGNB/wU6a0YzSV/8qK9zq49vSkvJqxaOv?=
 =?us-ascii?Q?HzA69K9EmKUsRGx5dcP9s+R6PuRnvdeCyofCRFjNCvgqzvksjXcLngVRskDK?=
 =?us-ascii?Q?NymYKVYjrCplbLqOIGSA/H91TaUxZVcGXw335wdsOu1EL0y9bqOb78tfP7fh?=
 =?us-ascii?Q?QC8t7uXIG4UcIWay4xhy01xP2WdbLzMdE/BGhUrg+EEmHXX13xQrNWesoheX?=
 =?us-ascii?Q?kNiXtT/oL0U6kDNYTYlZLxhIq3HW2lxlC/Pd9pRDggm6jLu+dPL9/1WbzM2D?=
 =?us-ascii?Q?Hv9uH4b15FnZW/A8Vv0XG9e/1xu+9xDv2ixSQpjnXpriaT8/lBFQ6vdvrUT9?=
 =?us-ascii?Q?9Hri07peHjv3+y9URZiTxQY78kJLW1hxHcnnwgOS20hCP+GA9hg1RqUdX8SV?=
 =?us-ascii?Q?UOizHg4ari2UvrnSMAfDEnOi9iBqKbECCdr3kaj8QsVLigqfvEL4ECK11yxV?=
 =?us-ascii?Q?uL6Sg+UfkFdpRohSgHYoTRJ1p0Vmt1K84LziRrjZvHc2S45wo5DC7h6maWDo?=
 =?us-ascii?Q?54sGLYuygvQAlV/8sN8y8ipWIQXF545T5BIluJ/e+JEnPmdv1i95WUkif68J?=
 =?us-ascii?Q?6Rfl+kfx5Qcdw7WTED1nboC0vzJ5ZzFPW3brQep0hE2q3+ALBXrZ2pQdCcgX?=
 =?us-ascii?Q?DimvnOcxu5kJI0lWOjURpGeze8L+YLOXBcVs6QUVbnrEIGw22ygQUaTVeJ30?=
 =?us-ascii?Q?GQEeT/ZpHWaKnah/jwl75z4BsZsE9oniPjP/B+dWvCFIw9XHRmsbowDKZtwT?=
 =?us-ascii?Q?Om9vFIcs0vZ1ApfxB1gYgjX6PntCkGJdhyhP3esOqFjVSQ9jym5esYQXhI2s?=
 =?us-ascii?Q?UK/EW0gz3ZZv2uAgNjCqL5mJ3k3yrMeRTj2McHl/GBFcNhp7BKwzr51aS5J9?=
 =?us-ascii?Q?R3ZFN1abgi8mFeY8rlKU3xETNbv2PqKCLwVw6bLYHBfnA3LxVC+AxpTCB+27?=
 =?us-ascii?Q?H2gTBzQ5RZttNcZWnjuUb/ov9pfAkEB21CyuZpsnPqZWmf3IaHArSicv3PLZ?=
 =?us-ascii?Q?S+VfomAC6nkfu3Fo/kMsqU9vr/u9LRNL/Jf0q0dUPgcJzRowWu/CKcpTC65e?=
 =?us-ascii?Q?eL2ks9NDxQSAawnXqZyeW1+bzxMiEBame+VABkJENIoHkYNQKEqK77xStGR0?=
 =?us-ascii?Q?entzPUCJtkds+QAGeFe0g5KPymb0lWGr7M4OltPwcwRimvc1xyFlJt6DDvYp?=
 =?us-ascii?Q?YicIDJHt5JDyGbrd5s158bkDR6+oW6dJNRyJD+GVM0txrIUHieE+Z69PCdFQ?=
 =?us-ascii?Q?qJbBpnqXoNitWAqizNFF9qLVy7BROneO6HWkzLWbd0bAE9DZsPOg/zn85Unw?=
 =?us-ascii?Q?m6rXxw2zyNslT+i5UBG5eAnljVQEIvDv4Uhf69oIDfNVgXLea+LpA2eQe7gd?=
 =?us-ascii?Q?PQXx7pozbbPcQOvJKTqFnrBOJ/io7IQHxVgy6XaPtL9BwTWwMXiXuLzfMtJZ?=
 =?us-ascii?Q?4Z79KclxVsrmdLHZ1UXE3HOZ3T3gxn6mBuDRhS1Vf5ZOUXehrNGGcs3ZM3+P?=
 =?us-ascii?Q?4g4fHkvG8xtF+Mo8fyGMDeuERlsSNO0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 473b1fc3-4b64-417b-5ed3-08da548f76db
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2022 20:40:38.2177 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oHHR0OORjPzf5pRh9hWVEN9izevv+nXhXkMXY6CJcb2gHyrg5QKjfaOxH44Vpll0MdoHpvHa3EygdfNHOAWIog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3847
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
 helper
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
 "Wilson, Chris P" <chris.p.wilson@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 22, 2022 at 03:55:03PM +0300, Jani Nikula wrote:
> On Tue, 21 Jun 2022, "Tangudu, Tilak" <tilak.tangudu@intel.com> wrote:
> >> -----Original Message-----
> >> From: Gupta, Anshuman <anshuman.gupta@intel.com>
> >> Sent: Tuesday, June 21, 2022 7:47 PM
> >> To: Tangudu, Tilak <tilak.tangudu@intel.com>; intel-gfx@lists.freedesktop.org;
> >> Ewins, Jon <jon.ewins@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
> >> Belgaumkar, Vinay <vinay.belgaumkar@intel.com>; Wilson, Chris P
> >> <chris.p.wilson@intel.com>; Dixit, Ashutosh <ashutosh.dixit@intel.com>;
> >> Nilawar, Badal <badal.nilawar@intel.com>; Roper, Matthew D
> >> <matthew.d.roper@intel.com>; Gupta, saurabhg
> >> <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
> >> <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
> >> <sujaritha.sundaresan@intel.com>
> >> Subject: RE: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed helper
> >> 
> >> 
> >> 
> >> > -----Original Message-----
> >> > From: Tangudu, Tilak <tilak.tangudu@intel.com>
> >> > Sent: Tuesday, June 21, 2022 6:05 PM
> >> > To: intel-gfx@lists.freedesktop.org; Ewins, Jon <jon.ewins@intel.com>;
> >> > Vivi, Rodrigo <rodrigo.vivi@intel.com>; Belgaumkar, Vinay
> >> > <vinay.belgaumkar@intel.com>; Wilson, Chris P
> >> > <chris.p.wilson@intel.com>; Dixit, Ashutosh
> >> > <ashutosh.dixit@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
> >> > Gupta, Anshuman <anshuman.gupta@intel.com>; Tangudu, Tilak
> >> > <tilak.tangudu@intel.com>; Roper, Matthew D
> >> > <matthew.d.roper@intel.com>; Gupta, saurabhg
> >> > <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
> >> > <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
> >> > <sujaritha.sundaresan@intel.com>
> >> > Subject: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed helper
> >> >
> >> > Added is_intel_rpm_allowed function to query the runtime_pm status and
> >> > disllow during suspending and resuming.
> >> This seems a hack,
> >> Not sure if we have better way to handle it.
> >> May be check this in intel_pm_runtime_{get,put} to keep entire code simple ?
> > Yes, that would be simple without code refactoring.
> > Checked the same with Chris, he suggested unbalancing of wakeref might popup
> > If used at intel_pm_runtime_{get,put}  . So used like this,
> >  @Wilson, Chris P , Please comment .
> > @Vivi, Rodrigo , Any suggestion ?
> 
> One option would be to track this in intel_wakeref_t, i.e. _get flags
> the case in the returned wakeref and _put skips in that case.

yeap, this seems to be the quick path at this moment...

Imre, do you see any other quick option?

In general I don't like much the big wakeref infra we end up
creating here because all of the historical unbalanced cases we got.
We should be able to get something cleaner and use the rpm infra as
other drivers are using, or improve in the rpm side itself whatever
we feel that we are missing to deal with these cases.

But back to this specific case/usage here we might need to duplicate
some functions to be called just from the inside the resuming/suspending
path... and/or moving the gets & puts upper on the stack...

The quick hacks will solve our short term problems and continue bloating
our rpm infra.

>
> BR,
> Jani.
> 
> 
> >  
> >> >
> >> > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/intel_runtime_pm.c | 15 +++++++++++++++
> >> > drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
> >> >  2 files changed, 16 insertions(+)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> >> > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> >> > index 6ed5786bcd29..3759a8596084 100644
> >> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> >> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> >> > @@ -320,6 +320,21 @@ untrack_all_intel_runtime_pm_wakerefs(struct
> >> > intel_runtime_pm *rpm)  }
> >> >
> >> >  #endif
> >> > +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm) {
> >> > +return rpm->kdev->power.runtime_status; }
> >> This is racy in principal, we need a kdev->power lock here.
> >> Regards,
> >> Anshuman Gupta.
> >> > +
> >> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm) { int
> >> > +rpm_status;
> >> > +
> >> > +rpm_status = intel_runtime_pm_status(rpm); if (rpm_status ==
> >> > +RPM_RESUMING || rpm_status ==
> >> > RPM_SUSPENDING)
> >> > +return false;
> >> > +else
> >> > +return true;
> >> > +}
> >> >
> >> >  static void
> >> >  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool wakelock)
> >> > diff -- git a/drivers/gpu/drm/i915/intel_runtime_pm.h
> >> > b/drivers/gpu/drm/i915/intel_runtime_pm.h
> >> > index d9160e3ff4af..99418c3a934a 100644
> >> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> >> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> >> > @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct
> >> > intel_runtime_pm *rpm);  void intel_runtime_pm_enable(struct
> >> > intel_runtime_pm *rpm);  void intel_runtime_pm_disable(struct
> >> > intel_runtime_pm *rpm);  void intel_runtime_pm_driver_release(struct
> >> > intel_runtime_pm *rpm);
> >> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
> >> >
> >> >  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
> >> > intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm
> >> > *rpm);
> >> > --
> >> > 2.25.1
> >> 
> >
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
