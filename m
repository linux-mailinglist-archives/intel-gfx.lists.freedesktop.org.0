Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39680136FB3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 15:45:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9036E6EA27;
	Fri, 10 Jan 2020 14:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF9E6EA27
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 14:45:36 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id y3so807303uae.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 06:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sMX7ow+3qEg8hPsmhjV06gNg1T/AH9TQWZUHGFXsWdw=;
 b=EK+lBv/W1746bK0qm2GKwVPKDhwwKvFuwsgiMEgt2sZwkdqdm/ksz/lM87k9DhT7fj
 eSqpcF8hLRbNyP8wRPDnZK+H7CORtIWcbyi4vJNfPYq8SegHXLvMvm4S/xTlpFi/8IsP
 thUyHURzZutTnq2mLjqK6d/1B2pULyrOPdnLo+UwZ35/vIxxgnPyh/X2SCPEHoepQ8cU
 IRmpRfcs/XcEVpujuMRKmlvq83Huz6Z4AbZdrSZjWK6slXJlc4ndrBFznd03qzJKbCB3
 DU8TEPIn4gKdL1Kq09LVwNp1SVBM/x2mySd0tUY3zjflWvh4nkSCCUC1X7KVQqRG0YMX
 Ogdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sMX7ow+3qEg8hPsmhjV06gNg1T/AH9TQWZUHGFXsWdw=;
 b=dqYtgvYfKpCYzBbtx25LBw2nOhTtW2EOtSI1vRHAcmGUeSrOdJ3FulVPnxQYJHSg4V
 6qGQGLwKs5NLnx7Oagvx/m4rek2oaBT0uXVCiQ54N+mVYlqibYC+ykefpFkSnl9rFkVE
 sJCHMw2+2j9QaW0mwr6X2A7KtuRpCa+wTBll+t0l5NNJcaW788KHY7YvLeE37cyNkRID
 T09CzqqcgRHAFRjU8LtbiXcd7BkkEAXE4G2ISEmftQLNyfNh4y0OgKEX/ekzQlYrERWd
 LqSKJL1TOs6To5ulo/e18HzBkUasKW3zt4sVVcYx3HZphCwDurzMR/jLHGuKpjqUgnEg
 jw1g==
X-Gm-Message-State: APjAAAUYtc9sQ5GEv8J4Nr0OgU+30xGXqaFL2R5CQzbHN4M0jTHSMtJi
 ch0nOiQmM8Svv3vy93EroJUaLQOPhR1GZmlP2pRdawq5
X-Google-Smtp-Source: APXvYqxsZ5CgcWamF7tE7Ji+GQk8u0dtyBgOEl+4iuGMhUjyuVz7hD6lBlQOvBOc2wAlSOVexOGv1WdvGSCC49X5AHc=
X-Received: by 2002:ab0:740e:: with SMTP id r14mr2191614uap.104.1578667535558; 
 Fri, 10 Jan 2020 06:45:35 -0800 (PST)
MIME-Version: 1.0
References: <20200110110402.1231745-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200110110402.1231745-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 10 Jan 2020 14:45:09 +0000
Message-ID: <CAM0jSHMtNNM5E6TnxfbhBhBHFW42UFpQRJ_83WRJ69MmedgzBQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Skip trying to unbind in
 restore_ggtt_mappings
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jan 2020 at 11:04, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Currently we first to try to unbind the VMA (and lazily rebind on next
> use) as an optimisation during restore_ggtt_mappings. Ideally, the only
> objects in the GGTT upon resume are the pinned kernel objects which
> can't be unbound and need to be restored. As the unbind interferes with
> the plan to mark those objects as active for error capture, forgo the
> optimisation.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
