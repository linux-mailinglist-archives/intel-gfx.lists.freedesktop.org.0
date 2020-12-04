Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 349982CED9B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 12:54:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5BB36E139;
	Fri,  4 Dec 2020 11:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C2B16E139
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 11:54:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23213629-1500050 for multiple; Fri, 04 Dec 2020 11:54:46 +0000
MIME-Version: 1.0
In-Reply-To: <2ea42ef4e7274832b81c2c3c6791c944@intel.com>
References: <20201201190406.1752-1-uma.shankar@intel.com>
 <589b1215583ae4dc934021c17d3488b7fee32cdb.camel@intel.com>
 <2ea42ef4e7274832b81c2c3c6791c944@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Souza,
 Jose" <jose.souza@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 04 Dec 2020 11:54:44 +0000
Message-ID: <160708288487.1246.7191272484320906672@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [v6 0/2] Re-enable FBC on TGL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Shankar, Uma (2020-12-02 13:09:34)
> 
> 
> > -----Original Message-----
> > From: Souza, Jose <jose.souza@intel.com>
> > Sent: Wednesday, December 2, 2020 12:01 AM
> > To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> > Cc: ville.syrjala@linux.intel.com
> > Subject: Re: [v6 0/2] Re-enable FBC on TGL
> > 
> > LGTM, thanks for doing the changes.
> 
> Pushed the series to dinq.
> Thanks Jose and Ville for the review and feedback.

And CI is reporting pipe underruns again, that seem to date back to
re-enabling FBC.
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9441/fi-tgl-y/igt@gem_exec_gttfill@basic.html
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
