Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 121F77BF8B9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 12:34:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB2B010E348;
	Tue, 10 Oct 2023 10:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2484010E1D0;
 Tue, 10 Oct 2023 10:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696934045; x=1728470045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sEf22MB5t8Hyxua9lBqC4W03Q9YlPN5oeXG9AtST1Qw=;
 b=gfFZ4vw29BKVZdkfqMWB8YiKS2/5rwQ3b2P4g8on50FHWRWoVEZevsUu
 Z2CxY1I++kz8ZdexxSpNcd5vvQlT270Ao924tFzuuoAbV8kF3eh2/jJeD
 aA0Nz8Xw/2FFPc9dc4HoAJ7OCTK/KXzncgOv1C27VfXRfOAHZntIzu0I8
 OIrRdJYdm4mo3We71XrfZy2iihJLmXSwnSWiiHj5QSSjCqpjGU7y9maQY
 vUVxs8r74Ab/LgTTe7mKW2ElFhOFZ5le/XmCBkcNWpLfL0ZY+FmBfz5FZ
 6NxvhPB9g9IM2QKOlCNAtFSpHMmuhopzlHZWFotexdxCxOlM5cDrJgkkc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="369423969"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="369423969"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 03:34:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="1084721194"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="1084721194"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.0.39])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 03:33:54 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Tue, 10 Oct 2023 12:33:52 +0200
Message-ID: <4299448.ejJDZkT8p0@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231009173731.sqtkomm45leyplq5@kamilkon-desk.igk.intel.com>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
 <20231009122750.519112-22-janusz.krzysztofik@linux.intel.com>
 <20231009173731.sqtkomm45leyplq5@kamilkon-desk.igk.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 09/11] lib/kunit: Prepare for KTAP
 parsing after modprobe completed
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Kamil,

Thanks for review.

On Monday, 9 October 2023 19:37:31 CEST Kamil Konieczny wrote:
> Hi Janusz,
> On 2023-10-09 at 14:28:00 +0200, Janusz Krzysztofik wrote:
> > We are going to add support for reading a list of kunit test cases
> > provided by a kunit test module prior to executing those test cases.  That
> --------------------------------------------------------------------- ^^
> Two spaces, use only one.

I've discussed that point in details with Kamil and we've agreed that using 
two spaces for separating sentences can improve readability of a text usually 
printed with a fixed font, with no use of advance typesetting methods.

Thanks,
Janusz

> 
> > will be done by first loading kunit modules in list only mode, then
> > reading the list from /dev/kmsg with our KTAP parser.  Since that parsing
> -------------------------------------------------------^^
> Same here.
> 
> > will be performed after the kunit test module is successfully loaded and
> > there will be no concurrently running modprobe thread, we need to make
> > synchronization of reads from /dev/kmsg with potential errors modprobe
> > thread optional.
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> 
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> 
> > ---
> >  lib/igt_kmod.c | 50 ++++++++++++++++++++++++++------------------------
> >  1 file changed, 26 insertions(+), 24 deletions(-)
> > 
> > diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> > index fed0855c84..ed41aa1235 100644
> > --- a/lib/igt_kmod.c
> > +++ b/lib/igt_kmod.c
> > @@ -802,34 +802,36 @@ static int kunit_kmsg_result_get(struct 
igt_list_head *results,
> >  		if (igt_debug_on(igt_kernel_tainted(&taints)))
> >  			return -ENOTRECOVERABLE;
> >  
> > -		err = igt_debug_on(sigaction(SIGCHLD, &sigchld, saved));
> > -		if (err == -1)
> > -			return -errno;
> > -		else if (unlikely(err))
> > -			return err;
> > -
> > -		err = pthread_mutex_lock(&modprobe->lock);
> > -		switch (err) {
> > -		case EOWNERDEAD:
> > -			/* leave the mutex unrecoverable */
> > -			igt_debug_on(pthread_mutex_unlock(&modprobe-
>lock));
> > -			__attribute__ ((fallthrough));
> > -		case ENOTRECOVERABLE:
> > -			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> > -			if (igt_debug_on(modprobe->err))
> > -				return modprobe->err;
> > -			break;
> > -		case 0:
> > -			break;
> > -		default:
> > -			igt_debug("pthread_mutex_lock() error: %d\n", 
err);
> > -			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> > -			return -err;
> > +		if (modprobe) {
> > +			err = igt_debug_on(sigaction(SIGCHLD, &sigchld, 
saved));
> > +			if (err == -1)
> > +				return -errno;
> > +			else if (unlikely(err))
> > +				return err;
> > +
> > +			err = pthread_mutex_lock(&modprobe->lock);
> > +			switch (err) {
> > +			case EOWNERDEAD:
> > +				/* leave the mutex unrecoverable */
> > +				
igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
> > +				__attribute__ ((fallthrough));
> > +			case ENOTRECOVERABLE:
> > +				igt_debug_on(sigaction(SIGCHLD, saved, 
NULL));
> > +				if (igt_debug_on(modprobe->err))
> > +					return modprobe->err;
> > +				break;
> > +			case 0:
> > +				break;
> > +			default:
> > +				igt_debug("pthread_mutex_lock() error: 
%d\n", err);
> > +				igt_debug_on(sigaction(SIGCHLD, saved, 
NULL));
> > +				return -err;
> > +			}
> >  		}
> >  
> >  		ret = read(fd, record, BUF_LEN);
> >  
> > -		if (!err) {
> > +		if (modprobe && !err) {
> >  			igt_debug_on(pthread_mutex_unlock(&modprobe-
>lock));
> >  			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> >  		}
> 




