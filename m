Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D965219B8C8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 01:02:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D906E9BA;
	Wed,  1 Apr 2020 23:02:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 531 seconds by postgrey-1.36 at gabe;
 Wed, 01 Apr 2020 23:02:11 UTC
Received: from poserver.naic.edu (poserver.naic.edu [192.65.176.209])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AF586E9BA
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 23:02:11 +0000 (UTC)
Received: from mailserver.naic.edu (mailserver.naic.edu [192.65.176.45])
 by poserver.naic.edu (8.14.4/8.14.4/Debian-8+deb8u2) with ESMTP id
 031MrHcv002302
 for <intel-gfx@lists.freedesktop.org>; Wed, 1 Apr 2020 22:53:17 GMT
Received: from monopoli.naic.edu (monopoli [192.65.176.208])
 by mailserver.naic.edu (8.12.8/8.12.8) with ESMTP id 031MrHik025266;
 Wed, 1 Apr 2020 18:53:17 -0400
Received: by monopoli.naic.edu (Postfix, from userid 205)
 id 424DB8533D10; Wed,  1 Apr 2020 18:53:17 -0400 (AST)
Date: Wed, 1 Apr 2020 18:53:17 -0400
From: Giacomo Comes <comes@naic.edu>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200401225317.GA13834@monopoli.naic.edu>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Spam-Score: undef - 192.65.176.45 is allowed always.
X-CanIt-Geo: ip=192.65.176.45; country=PR; latitude=18.2500; longitude=-66.5000;
 http://maps.google.com/maps?q=18.2500,-66.5000&z=6
X-CanItPRO-Stream: default
X-Canit-Stats-ID: Bayes signature not available
Received-SPF: neutral (poserver.naic.edu: 192.65.176.45 is neither permitted
 nor denied by domain comes@naic.edu)
 receiver=poserver.naic.edu; client-ip=192.65.176.45;
 envelope-from=<comes@naic.edu>; helo=mailserver.naic.edu;
 identity=mailfrom
X-Scanned-By: CanIt (www . roaringpenguin . com) on 192.65.176.209
Subject: [Intel-gfx] kernel 5.6: baytrail hdmi audio not working
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

Hi,
on my Intel Compute Stick STCK1 (baytrail hdmi audio) 
sound is not working with the kernel 5.6

I have bisected the kernel and I found the commit that introduced the issue:

commit 58d124ea2739e1440ddd743d46c470fe724aca9a
Author: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date:   Thu Oct 31 12:26:04 2019 +0100

    drm/i915: Complete crtc hw/uapi split, v6.
    
    Now that we separated everything into uapi and hw, it's
    time to make the split definitive. Remove the union and
    make a copy of the hw state on modeset and fastset.
    
    Color blobs are copied in crtc atomic_check(), right
    before color management is checked.

If more information is required please let me know.

Giacomo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
