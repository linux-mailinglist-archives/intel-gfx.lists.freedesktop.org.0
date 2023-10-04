Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1257B8D91
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 21:44:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D26210E1A4;
	Wed,  4 Oct 2023 19:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2438510E1A4
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 19:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696448663; x=1727984663;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J/lO9SxETN/4ZkgS5foG02tCNen+XXbqRiXMRSDijnA=;
 b=CVxMD912QExHAIhxVAGG547SrsX1kkO+U3O+NIXcQeTkNknIeBjbJwHt
 nHu9oxDwHkgKrTqpGweeZqDgPVC0Yv4IYZDB5XSL1N4SCPIjM3nVmLbtZ
 hn+KjXBPuP0i98DbwKOLItUnTCFmgPvmvcFMb2fdS51k1MO2uMmfgerp/
 2PY3R1mmQWXgj5weRkDcXRHhEdsZjyIZ6cn0RNud1PYQnjPP1ZzDfIwJU
 G6Pn8B1zTW41yY9HJmfvdbzFtGwvtgSTCWivFLTnfF8BXA/7xwMYVnGOE
 iIjke2mrWU4O87cXBPCP6w6DCIIayQL+w3pE3K97wHnHukKrSlAFUQPKc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="414229248"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="414229248"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 12:44:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="817259433"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="817259433"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2023 12:44:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 12:44:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 12:44:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 4 Oct 2023 12:44:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 4 Oct 2023 12:44:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EDl102b00a1dhJqOokMFn2nIT9XgCwW3ykGNjf99VYp9igjHCaXJtjuCVc3zk/nU0AA7Ib9BEoWErBf34mgNRd8YSCwBx3F7bZnj0CnGn5IBQZtpdOVZn+Q0IqUGFOEQm887JxqMa2ULLb8PxiPjB5wltJ4YM81ZP5HsdJsWV1L6AaZcZYjj16Gyc/9bStADoGq4qgX/RuKUSGP7+1/yzKRrT8y6aAXWTfCnBfpzZ5G+PsD74MXrMv4vomwt0vTWHC87YnJasr4Vw+wvQ66XrWRNAQ3IBBLIh+YzoGhcAY8IvmqO/tHX05qaZhb6uF4A12iK67K9RXmQjOsVse03JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TDvrPTS5u63zMPitzC7nlwwkXqxH3qOJp2OrmodDcV8=;
 b=VB8dGBPkxfO/SxCCSJK5RiAI7d1q6TVNxUTXeqaDndwBiBKA1oyid8GlUSQmJWOwaamirciqi6HWKBE4SA2KjpBgAviQi7TxDSc6eU/BoKymINArd0WT3nRPzGyyYWiIqJcKzrcirzNvktN/vkFn87T8qW6sptOtr4PSZHV1Myg6vUqLSOczCVV0jP4GCM07a6F9dCC19U1whz08nj2kxsmHfBSE4kHi99YTJZVIdbwY/MDF866f17Z89GQ122XG+STBWNB/aB8uVr9RbiMKj/MZRency+cLD13F/VA0Q0TbwHG3msJCR7G+dVXJleGq/6uPXKrut0Exr7/Gm4P8VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB5032.namprd11.prod.outlook.com (2603:10b6:510:3a::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.33; Wed, 4 Oct 2023 19:44:15 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::14ea:3a78:f950:d6d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::14ea:3a78:f950:d6d0%7]) with mapi id 15.20.6838.024; Wed, 4 Oct 2023
 19:44:14 +0000
Date: Wed, 4 Oct 2023 12:44:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <20231004194409.GD53570@mdroper-desk1.amr.corp.intel.com>
References: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
 <ZR23GiB9UzY4OYLg@ashyti-mobl2.lan>
 <c9a82cfc-9034-4a77-fe9e-ddde2245e0fc@intel.com>
 <ZR273PIRDhFHmfgc@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZR273PIRDhFHmfgc@ashyti-mobl2.lan>
X-ClientProxiedBy: MW4PR03CA0052.namprd03.prod.outlook.com
 (2603:10b6:303:8e::27) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB5032:EE_
X-MS-Office365-Filtering-Correlation-Id: f0f7bcbe-a8cf-4a24-548b-08dbc51249a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SCizRG+v1QQqdMo5XcDXuMMOsvV5ph5NgDjIHRlnsrQRUYjkEDi7K+AwkmxFqIFZeZfbOthoigc1B+Hi8e1ecAEfxGqWnewnSsFSrcGab5MJaAHpfk7iSLlv5ZKBzCQVpj/3lrRxq8nDA9FL+BRrAuLMaXRkaMLQJtkiu61A6t4eh3l4MhgVruoLuhX4qs5L31hiyn4+t+Qe1L2o/pDcjJF9vj7g8CBvBp0NnZUUPMDWg31hanSJYdMPKyj15hCc83anWmq2oNtECLzADRxtOIZAy8ozJXYuZCHFu7bfXVtuhEv39y5bdpRA11VCIIJl/2X/I1CrlegJV3oAQJZXg0oyeUWdEHW14R95t/cRoNVq6VrrD6QhBTSSrg1Fhw0tyxx5kOM8MJXd2HjmpmFHjFI+d8g9RiMrrvQVMnoozcEoA1q2v7A62aRz6f+AlhSrV+1E2E4qiB4X53E91aMcOm/dYR8NI0C+FgOdKfz0wObLideOShJzImvCvLnLdxoT2b6Ao/bGt/to54u4appaGEBYMwc5OTp0/+dCKvKkqHVn9UNZCEbVLzTdXWRfuPvt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(366004)(346002)(376002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(82960400001)(6666004)(5660300002)(26005)(4326008)(8936002)(8676002)(478600001)(86362001)(6486002)(54906003)(66556008)(66946007)(66476007)(1076003)(6916009)(316002)(38100700002)(6512007)(6506007)(33656002)(2906002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eoYia6hyrROJ0u2xQLK2BFXQwL3U/NxNov3DyVD1/oXNVf0vmJbvowr9XBnQ?=
 =?us-ascii?Q?A3Y7lvdPY+c4kCrb5db/KF/ueSwWwGv1Mdw+PiHCDwzBLIlrRjlNW3m2iNYA?=
 =?us-ascii?Q?IY/HGBiU/NNZ1mHaEZ3osQCaR1TbOv5Vyvhbf6y5fDS29p8wbWGExeWn0EXz?=
 =?us-ascii?Q?EQyqtpja73ie6dVeSZGogZo4nTzAb4S9P0DDfEkgHW84woDA0hN4jNvzdTrJ?=
 =?us-ascii?Q?iRFifcAjyZdbm+uuj2e/M9ts3l2FeHjy5LUaycsrvYpMS7/xfQND7q5MHpar?=
 =?us-ascii?Q?fqTXSFvtRBx7bxAh+Ym3/LjXLbwA05kzpM4OuwGh3XbYHtsx7u+lCsi3QWvZ?=
 =?us-ascii?Q?VqOVxCsObcuA35pBXH2DTS/R4NaSDL4ZqsiHzx1MEmwLT0WvW+vR7afGzTUU?=
 =?us-ascii?Q?xVrQiNog97WdNdebUJu7gxUU1xhWSfA/XCteixt06LQ/3fcM4WVzG0yXra+U?=
 =?us-ascii?Q?kFNXtKKPJrXkXPEgLAu1LyiiQ8I9LX4QhVRp+xJP/HIta7DuODv2vcalv8nr?=
 =?us-ascii?Q?Rc5JfgTGdeyH0odAog1n35kRokP5O9ym/EaOfTS+cKho8WY2L8QU1jQ+XcDA?=
 =?us-ascii?Q?hoxDf17uxj2edThkUij+GYrsFLSuYdJi6Qr61mO7W8FfRppt6xN1yqjRHZNn?=
 =?us-ascii?Q?MX+6WM98toSXiBIRUZxBfZ0PRcO15pKaBHTELOezXbXBSlDBIsCduB78OCne?=
 =?us-ascii?Q?1eNEgPe4DDy05h0LxPM4o1YBOdEzc0DIAW5TfAnBSRNacvAe5CfDgr/KGQWe?=
 =?us-ascii?Q?cozu3Jffmk8tmDw+xHawV0bExKAIGDb9vnuQJZMLWcwm9121cqU0LZOwpQVe?=
 =?us-ascii?Q?FqZigXGjh4M7ocJ2TuPfBF6AggXefWOoPEq6ANPuQl/G8oLeHuCcI0XiVzZ+?=
 =?us-ascii?Q?2trg+QBunQ7r6x4tL6MGTF+Hd2r3ETz69WOl6WBvvD3vzhn7UXMBBbVmD1s8?=
 =?us-ascii?Q?jSgfvxigrHUn3kiZUpQK7WBd8ZQ2NF0IZJpp3n+rK+8E6A78g8zjp4PcWVDG?=
 =?us-ascii?Q?32sE4/3oPBxEd8TJIrsZdsmNu0WZy3vu/lqDO9nR3Vn8ZGvJ028uAy+e7NCC?=
 =?us-ascii?Q?ve1yAPw3+z8Lf1CJu9ANlt+AbDFBkN2PsSKxFZiNSYUNOZBlK3xQNcHqsZvC?=
 =?us-ascii?Q?wyT7ahBJsIAA/ZEN1iT+hnrWNvYzN84OhrN/jxeMpKKce4Qd+/2VzbiLOyhk?=
 =?us-ascii?Q?CASfz25kOzldQkaqIdqJrm99nRfqy0V3u33I5umtxD67ZIcpGJW/BwgbGzNv?=
 =?us-ascii?Q?7iApqJwYAwH9jC9yTOymOJ9ksY2VTHu9Z8ui+pKWSenSwskD/Q1584umNANr?=
 =?us-ascii?Q?DaF49bBZ9E1hu+yjNXDxCYDVqRg7QCO59KGpG5YgF9cziGfvWYh13Cei3BlF?=
 =?us-ascii?Q?joDcty4zFYLCGAxyTyBh8mvi3S+t41SnKzjPIJVGRoCGI9hbNx1VSlIVUi+u?=
 =?us-ascii?Q?xAmVNKZQCa6jCM2D4EUzY/z1lE8z7ZpHOSBPN2N/yYnQXo7NQ5nBH8oiCLue?=
 =?us-ascii?Q?3GKE7FypbAH2EP5U3zICaCs4UCW4NiiiHy4hKVHLLjSXMD18YPMMtaBiPO6L?=
 =?us-ascii?Q?O6rwHljuH9gmN86EOoUxKfdzimAUwU7nOtnLP7D0sIHhy0ikrGmORRYCwEYK?=
 =?us-ascii?Q?FQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f0f7bcbe-a8cf-4a24-548b-08dbc51249a3
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 19:44:14.1530 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lcFMoxq24GGoc6EwYy4Cs4Whz+sI8dlhQXzF4Mr4biditTTQ3FK9GtMmKh6WNlZufdqzjTS0P/w83/Z9roal1/qv4IKOGOBk/hkUkCxvB38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5032
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/4] drm/i915: Add GuC TLB Invalidation
 pci tags
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
Cc: janusz.krzysztofik@intel.com, intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 04, 2023 at 09:24:12PM +0200, Andi Shyti wrote:
> Hi John,
> 
> > > > Add pci (device info) tags for if GuC TLB Invalidation is enabled.
> > > > Since GuC based TLB invalidation is only strictly necessary for MTL
> > > > resently, only enable GuC based TLB invalidations for MTL.
> > > > 
> > > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > Jani was mentioning that the pci tags is not a proper title.
> > > 
> > > No need to resend, I think I will merge this series, so that, if
> > > you agree, I can change /pci tags/pci flag/ before pushing.
> > Have all the review comments been addressed? Surely it can't be pushed until
> > it has at least an ack from everyone who has expressed concerns about the
> > changes?
> 
> this particular patch did not receive any comment so far, except
> for the "pci tags" from Jani.
> 
> This solution was somehow hinted by Tvrtko in one of the previous
> review, I guess.
> 
> Personally I think that having a pci flag just for this is a bit
> of an overkill, but I don't have a strong opinion about it.

Drive-by comment:  you probably only want to turn on the feature flag
for MTL at the end of the series, not at the beginning.  Otherwise
bisects that land somewhere in the middle might have half the necessary
changes but not all of them.


Matt

> 
> Andi

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
