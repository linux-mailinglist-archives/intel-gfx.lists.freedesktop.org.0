Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 592EF3B9F8D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 13:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B470A6E105;
	Fri,  2 Jul 2021 11:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B7926E105;
 Fri,  2 Jul 2021 11:14:04 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 162B7AJ3001075; Fri, 2 Jul 2021 11:13:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=hrIk17RHidqPb+xHnC5t8N6MeIwQY6Ti+xExhm0MvhA=;
 b=wTwwrJTbV8yAsOb5F0ZPG+imXAl8zAyjMh+COy17SsF1xuHRVZ7pnLoJqHpdMbA6jdwE
 B92NxezLFjfR0ilRkp/wxZ/GdHm0F/tKAqEEhwzHxX2X8zgGX+htH0smA95mBdTlJTMT
 SMa5jQ6lCZ1YdncKPLcmF524veH8FZOMSS4xY61KucAFxB50YvqIaR8LK+w8TUX6G7JQ
 Xc4Q8YQfFIBcOjroufAknyPbA8ZUC9bMVVqQ11Jd5ToVtVV3WjgDvLi3c/Q2BZzaO6Pk
 5PZ3DxR/vROLUzZAAsjCBuErx2AVIfcbydkzU1qfopiWsC8bJ+TXE029c71ZEY5Rtw64 jA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 39gguq58pg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 02 Jul 2021 11:13:55 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 162BAFif064048;
 Fri, 2 Jul 2021 11:13:54 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by userp3020.oracle.com with ESMTP id 39ee132e5h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 02 Jul 2021 11:13:54 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 162BDraL076290;
 Fri, 2 Jul 2021 11:13:53 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 39ee132e58-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 02 Jul 2021 11:13:53 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 162BDq6G032142;
 Fri, 2 Jul 2021 11:13:52 GMT
Received: from kadam (/102.222.70.252) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 02 Jul 2021 04:13:51 -0700
Date: Fri, 2 Jul 2021 14:13:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <20210702111344.GV1983@kadam>
References: <202107020708.XXwacDfG-lkp@intel.com>
 <CAM0jSHOb0bGWMt-tmUn62R_FpiM5TL2HFLbBqxhpqk1gH0qSUA@mail.gmail.com>
 <20210702110727.GT1983@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210702110727.GT1983@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-ORIG-GUID: CMgvUyDJSWy9gfX3th_kDpKBqIu8P7PA
X-Proofpoint-GUID: CMgvUyDJSWy9gfX3th_kDpKBqIu8P7PA
Subject: Re: [Intel-gfx] [drm-intel:drm-intel-gt-next 8/14]
 drivers/gpu/drm/i915/gt/selftest_migrate.c:102 copy() error: uninitialized
 symbol 'rq'.
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 kbuild-all@lists.01.org, kbuild@lists.01.org,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 02, 2021 at 02:07:27PM +0300, Dan Carpenter wrote:
> On Fri, Jul 02, 2021 at 11:32:45AM +0100, Matthew Auld wrote:
> > On Fri, 2 Jul 2021 at 09:45, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > > cf586021642d80 Chris Wilson 2021-06-17   84
> > > cf586021642d80 Chris Wilson 2021-06-17   85             err = fn(migrate, &ww, src, dst, &rq);
> > > cf586021642d80 Chris Wilson 2021-06-17   86             if (!err)
> > > cf586021642d80 Chris Wilson 2021-06-17   87                     continue;
> > >
> > > Does fn() initialize "rq" on the success path?  Anyway Smatch would
> > > complain anyway because it thinks the list could be empty or that we
> > > might hit and early continue for everything.
> > 
> > The fn() will always first initialize the rq to NULL. If it returns
> > success then rq will always be a valid rq. If it returns an err then
> > the rq might be NULL, or a valid rq depending on how far the copy/fn
> > got.
> > 
> > And for_i915_gem_ww() will always run at least once, since ww->loop =
> > true, so this looks like a false positive?
> 
> You don't think i915_gem_object_lock(), i915_gem_object_pin_map() or
> i915_gem_object_pin_map() can fail?

Btw, I sincerely hope that we will re-enable GCC's uninitialized
variable checks.  Will GCC be able to verify that this is initialized?

regards,
dan carpenter

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
