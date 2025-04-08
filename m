Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E216FA81120
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 18:01:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6176910E6F1;
	Tue,  8 Apr 2025 16:01:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="t7bkH6Uc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2079.outbound.protection.outlook.com [40.107.236.79])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B27A10E6F0;
 Tue,  8 Apr 2025 16:01:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ozIx+hrHimVZBZdBbmywOG/R1stjNrt52FPqvh8FvbFzUyb/6tGnfnSWE9OYlfOGBsnHJl2kk/+r2ru9w0r68OWOybKX7m6cIaZ0SwbHaAvoWuRoKB9oCfvpdvK3xBJWp2rKLvO5j6TkqMa8lswd8hGfJB8lv68NunbAQRC3tzNQ19nM2C6+ngLbrqym4EudvRUeMH7d7GngdOZc2PHeCE/mXEH+e+/LkdJyCF+esUcbx+PWenbqJhl8BsITFBQf27vf8BOJNutyb9Che/OGSY2BhMlZX7m+Bm6wp+UlQhF8wd9P8UAQdmqNJDnZ9s2gsHak0XIBdJ644hYUIGdn1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jm/reINI2aZCAFkFR35fN05gzrTbnJUQgT6R7JbJc0c=;
 b=cgHYg1fF1bPh0tEcNOQj1G50k2lnTmM1x6FpR1V+9FtlZP9U1qX2Ins5NwcS6jkxXUANGn7HOwbND9Hvf32bFW0/VWjYFt5J5dRCh/60QhO9Q0NMRyCj03n4ZUu3wSOBprZH0of+0aJFe02wQRSqg3c3R8M36GlIHiiYPFkncJxOlS0rPbzkYBui5ZDcpOI7L+jO1wTUSMVgGAs/kCN5KKCHhzvAz17bmRHcQITwZhp5LrFxfYmYO81aEmkAD3Ab+9/J9sXQ0QMSCyPqSwxQSCrh2WSy9DYNuzEnsuES0Ik2wnTtOLfFJfAhVf78AMpdKemItVUsbM9hDTuBh+VI7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jm/reINI2aZCAFkFR35fN05gzrTbnJUQgT6R7JbJc0c=;
 b=t7bkH6Ucrn/tT3UOgHOC+RCD1ldfr+SpzYCadUmo0phkUgqkBtmsa/8kyLNdLnR+npx0HocT+vRntbSLGT2h18Q63KhyjbtQBDdPJmUUDlvkWceYrwhvXIcEe4pY/auHDUD6Zd+jtL6VDgBwvsvJimzy/X+AingO/MZYILJqbz4eC+PgEFKO72z36YDzYWa0U4BjHz1Zoi/6W0JcNMQHkQ39naPcNn4M4kYXE8AzfkAcwLt3A9swvQd01cihbgSVWcU8Ev/78xsQ9OT4hRI9m382E/gm1aN4rZC+koCVqTWh0vG55nhAxdKJqshZlPeYoGoXMZxN3iJpX5vnCclw9Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by MW4PR12MB6826.namprd12.prod.outlook.com (2603:10b6:303:20c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.32; Tue, 8 Apr
 2025 16:01:29 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%4]) with mapi id 15.20.8606.028; Tue, 8 Apr 2025
 16:01:29 +0000
Date: Tue, 8 Apr 2025 13:01:27 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel@vger.kernel.org, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona.vetter@ffwll.ch>,
 linux-kbuild@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 0/4] kbuild: resurrect generic header check facility
Message-ID: <20250408160127.GD1778492@nvidia.com>
References: <20250402124656.629226-1-jani.nikula@intel.com>
 <CAK7LNAS6o_66bUB6-qj6NnaTRNKvu5ycxOP+kGfizYVBNjZAyw@mail.gmail.com>
 <878qoczbhn.fsf@intel.com> <20250407171209.GJ1557073@nvidia.com>
 <871pu3ys4x.fsf@intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871pu3ys4x.fsf@intel.com>
X-ClientProxiedBy: MN0P220CA0010.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:52e::20) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|MW4PR12MB6826:EE_
X-MS-Office365-Filtering-Correlation-Id: a00482d5-64ac-4f0e-7ecd-08dd76b69f08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vKUAXweeEE3OYM78alt06YRtpBdmZz59biNzVFjW+IPYnPYapTd9FEVK8uAn?=
 =?us-ascii?Q?1P5Btu8dbQKqVXsIa1YM0etFsaxFwSupoiCc2wLy5eEVnNd2L/UQaaroTxpm?=
 =?us-ascii?Q?1zaEh4zMddgjoX4n/dalcpDXE2o9bI1X3sKos6LoTw/aut2qniriQs+JpqP7?=
 =?us-ascii?Q?l1yrd3sqhazkn7Aa0U7B7fo92i3wuTELHpzTn8fXxSusy56xzcZTNkwPsZTX?=
 =?us-ascii?Q?FfbAglelLWJYtUPONTaM3bqf8imIJTy3s9TURENdFGh7kCSWrWxF6FQFoFxf?=
 =?us-ascii?Q?2q0FaseAmCGh4ChOkD+OSYJTIYN9tal7SKJT0ImprAsxao2BiUxeITOsujrw?=
 =?us-ascii?Q?L0wNlUwHE+l3kSUa8srzMpApOBjSsV6gD3RjiY303nBQ7AxKCc9Ir/1WYjgD?=
 =?us-ascii?Q?WNMKvjNq8ccUhYKBFuPQRwk6W/SzIRtdWd5pJQpnW+ZJWFLTbor0r+U7rZyi?=
 =?us-ascii?Q?RI41A2fmTTnjggr54pjxL26qoxco0pCKliRqHU1sbgfT63lMR2eiGbW5mitQ?=
 =?us-ascii?Q?hyLASte3/GlTDtzOq8xaohjqa85fFYGs0z8ePzoRHwo7cYxlCDUhmfcwKN3B?=
 =?us-ascii?Q?CNw2sKrq4cd4GlyorHVFkQqdJA8yf+dwik/Bc6bjD9n8buKqYbmyRIDkyNSt?=
 =?us-ascii?Q?Zlbuz0KE/d05iUNY082iQaqoCCH6tsoKJOc7tYtRwYS9FAuMWc/o1v5/IB/C?=
 =?us-ascii?Q?JYRa/xeoYSqj3u9vo6+zvdZWM59czHsOHi0mDRA6DHqMgeh5t3E8l4AJRcZP?=
 =?us-ascii?Q?h0xCPnqLv7JK3qKv+L21LQuz9KhlV4sfY5oBLSDnft9LQUuObaQwjGoJ/drR?=
 =?us-ascii?Q?pyKZVnLEoHdlLen4Yke2+omB1VQJfCf+6FBEAdOWviHsF4ReomoYh4FQ5J8S?=
 =?us-ascii?Q?oQNW5+1y34Qri/ZfvIFH2Dj/DZK1FFIr/JloE0cN6L7WJu2gtUQ7eHB9qgJ8?=
 =?us-ascii?Q?cp1R1XOWsmBzUaAr5nz7EvSDeoTpf4a6HNTxcQNjaJBdqa1nS0AujFFJsne8?=
 =?us-ascii?Q?ZQQQF6jrztujr88m4HprBIsk781PM1MYy9atuyqtWQp1ujSV2cyin0Lian8z?=
 =?us-ascii?Q?SHApRPd+HlIHD8GwogiIbrTTR5eAo+4l2IS+tYd4EJZgSQ4WmIb9/GQkLSwQ?=
 =?us-ascii?Q?Ng+9WWrUk01SC81AEs2o+OuLk0fnZ4ZEzgoZdGYHcp7kmyHxuQuU8VuaXYQq?=
 =?us-ascii?Q?lnWdjwOfln7iEJTg/Ujp80bmXBbxsRjTg9EqMhYeNETmRYvqMXfukb5HMOgR?=
 =?us-ascii?Q?IVBy4MmYlQn23SmuwTf8rVg5TH7AVTTSVHtBbPN/tUT2qZNTyU3qsNsnH57s?=
 =?us-ascii?Q?ARjARUezAe01QeS4bQdMg4tBnXmAH6pj27AcQQG4LSYdgpEXetVLfJug6CZ/?=
 =?us-ascii?Q?b/5bNl+/+0PW7XFxuqE7qEceWwQQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR12MB8659.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vLnNgacNtfuH7SJYjwLS7ulwnCuHCjEfwvMI5xelXwJPTl9+77hEq7Xm7hjb?=
 =?us-ascii?Q?Jt2RhTTq4mqbcYF9xAiOpVt/j0UqIHAHAN42Hpqj1tkhgUD4JoeBw9G9tHNf?=
 =?us-ascii?Q?I+3jv5EFgY+Q7X1HboRvLJMqQSf2xuGn31EQ0wp/DgtBzOwtZ81Sqvzm/m/K?=
 =?us-ascii?Q?/oC4+JtvEgDCvUngQVRJu6D4LbOxZjM3Yiadby8iU1pW1oYoajVGCc4hOlya?=
 =?us-ascii?Q?76dTAlkTuBsOkBpL7Gu3+HJhR+kNp4MD6pioq7GCjs1dAAtvXDxGWgiQBgOl?=
 =?us-ascii?Q?c9LwLkm901c2ohIwl7Qo8uQRKAYw6c7AT6Axwd6nYItVpSeMRTQeUS99fHEu?=
 =?us-ascii?Q?Uzo0xTyaHj4a7ILwmehWcURrrXKMsV8fst5JG4HT/V8g1/7seHLsgcQCm2mp?=
 =?us-ascii?Q?AgU7JSQTxsAlA0M/AKtiec21qZxkFpmiTkg8e6YtA4vHIZ7TEiEVdYaP6k3M?=
 =?us-ascii?Q?/t/Op7fwRfulK04UIVfIxs+vtB8rYsZ7B9hrHGCBBkoYmtisHr6rxHbkmexJ?=
 =?us-ascii?Q?xr9C/2XIb7+AslYgN0BC+1ipysu1M/KXXBRn11NKLqZMUhy6eyyWKPTUyLhw?=
 =?us-ascii?Q?cGQLxcUsgPa0hI5yamdAVItsoyi2+7snn/tsYm82NnzQNxhgq97CDyHwLEF3?=
 =?us-ascii?Q?hSqw1UwaXizO3BA2nVkhreUFwW4mWIkpVHXAwNTzCReVTfFgvySAjwMRTR+Z?=
 =?us-ascii?Q?eA/tk4X7iD4y5tEL1SnOTPGJm6j5hHXnUEe4SVy+Rmo4wl9iBadQDhcW6mLb?=
 =?us-ascii?Q?HW+CHBSG6qm34SnRs7mE+nmzbqttuEkriaWXCr+XLaey5Y/1t949wHhXDDof?=
 =?us-ascii?Q?s4loigiluKiI4tqL3Ghn0zQanLT9F5kiEHf+9Ex9CWsHKL9Ix0FiyV6zPD1x?=
 =?us-ascii?Q?i73bhEI7s1UzsClIAcPy323Gwlm+BAPGF+ImNw31ZWJErz1hVJoD0tTKkwvN?=
 =?us-ascii?Q?j8K6ZlPuEn/QZADt5mcj1YkCnG2GL+tmnv4Y4QUTd6CjaKMo8QABdfPhYCeI?=
 =?us-ascii?Q?GWH5o/JXHnVBytcK9JuqqYbtSHPyQ5xTUOgn/QhHi2xpdlWUKufQOrScBqlN?=
 =?us-ascii?Q?UGAY0s/pR7iO2YcjLOypVtP8V/9Q+o6WSEqn6RK0MLE/8xTvwTFL2jDxNE89?=
 =?us-ascii?Q?ECgnJIQVwGB2VuCbfOqDeq/aVgzOzuPxoENfgjP1LSHbOe6Np4xAcl10zcyQ?=
 =?us-ascii?Q?nRkxWU3JtB3tWjDBL01tQUnRZfjld3q9h29jzV6bhvWU2/MCclDab4FcHSui?=
 =?us-ascii?Q?XI5bNwD2Esta+rBOKJbaeNT8cn2D5hmf/J7p+O8ndNjsG1UDOia6LIxAwDXb?=
 =?us-ascii?Q?YxbAPGYuo0A1C0KI4/KU/pOkZDZ0zhUfsCGxU88L12WdyBBAVONw2D9dGWFE?=
 =?us-ascii?Q?Wm+Dk5XuU6ji6obeV68g6e+C6zoVBpsgDQVqS1OauS7x+sUJ51esvKoHlCZ0?=
 =?us-ascii?Q?UHCTZIGqQwfajm6qD2CpSF9gQhfnp6wEZ/geTmy0JqWyfg3949hiMGqNWcPv?=
 =?us-ascii?Q?YHGAN1JrJ6KGhxOt4hsEoGngWCAn/bctV3I8CzzDpsQ4dVVnLpERGegnI44m?=
 =?us-ascii?Q?IMAjk21d7WnP9yiUmB9PTJ0URrVs4wPeb6jkfRkG?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a00482d5-64ac-4f0e-7ecd-08dd76b69f08
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 16:01:28.2513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z9v6wDLOtu5TgTc8DFReTePj4b1NIBw0s5TsqBuVdzoYyKmeQKfvN51s8RXjsboH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6826
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

On Tue, Apr 08, 2025 at 11:27:58AM +0300, Jani Nikula wrote:
> On Mon, 07 Apr 2025, Jason Gunthorpe <jgg@nvidia.com> wrote:
> > On Mon, Apr 07, 2025 at 10:17:40AM +0300, Jani Nikula wrote:
> >
> >> Even with Jason's idea [1], you *still* have to start small and opt-in
> >> (i.e. the patch series at hand). You can't just start off by testing
> >> every header in one go, because it's a flag day switch. 
> >
> > You'd add something like 'make header_check' that does not run
> > automatically. Making it run automatically after everything is fixed
> > to keep it fixed would be the flag day change. It is how we have
> > managed to introduce other warning levels in the past.
> 
> That approach does not help *me* or drm, i915 and xe in the least. They
> are already fixed, and we want a way to keep them fixed. This is how all
> of this got started.

I imagine you'd include a way to have the 'make header_check' run on
some subset of files only, then use that in your CI for the interm.

> Your goal may be to make everything self-contained, but AFAICS there is
> no agreement on that goal. As long as there's no buy-in to this, it's
> not possible fix everything, it's an unreachable goal.

I didn't see that. I saw technical problems with the implementation
that was presented. I'd be shocked if there was broad opposition to
adding missing includes and forward declaration to most headers. It is
a pretty basic C thing. :\ 

Until someone sends a series trying to add missing includes and
forward declarations we can't really know..

> Arguably the situation is similar to W=1 builds. We can't run W=1 in our
> CI, because of failures outside of the drivers we maintain. 

You can run W=1 using a subdirectory build just for your drivers.

> Even if I put in the effort to generalize this the way you prefer, I
> guess a few kernel releases from now, it still would not do what we have
> already in place in i915 and xe. And, no offense, but I think your
> proposal is technically vague to start with. I really don't know where
> the goal posts are.

Well, I spent a little bit and wrote a mock up and did some looking at
how much work is here. Focusing on allnoconfig as a starting point,
293 out of 1858 headers failed to build, and with some fiddling I got
it down to 150, a couple of hours would get patches made for the vast
majority of it.

https://github.com/jgunthorpe/linux/commits/hdrcheck/

I don't see the same dire view as you do, it seems reasonable and doable.

Jason
